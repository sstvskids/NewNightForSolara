local Night = getgenv().Night
local Assets = Night.Assets

local ReplicatedStorage = Night.cloneref(game:GetService("ReplicatedStorage"))
local RunService = Night.cloneref(game:GetService("RunService"))

local remote = ReplicatedStorage:WaitForChild("ZAP"):WaitForChild("ZAP_RELIABLE")

local sBuffer, bufferCapacity = buffer.create(64), 64
local listeners, events, extras = {}, {}, {}
local writeOffset = 0

local function reserveBytes(bytes)
    local sOffset = writeOffset
    if bufferCapacity < writeOffset + bytes then
        while bufferCapacity < writeOffset + bytes do
            bufferCapacity *= 2
        end

        local newBuf = buffer.create(bufferCapacity)
        buffer.copy(newBuf, 0, sBuffer, 0, writeOffset)
        sBuffer = newBuf
     end

    writeOffset += bytes
    return sOffset
end

local function flushServer()
    if writeOffset ~= 0 then
        local send = buffer.create(writeOffset)
        buffer.copy(send, 0, sBuffer, 0, writeOffset)
        remote:FireServer(send, extras)

        sBuffer, bufferCapacity, writeOffset, extras = buffer.create(64), 64, 0, {}
    end
end

Assets.Connections:Add(RunService.Heartbeat:Connect(flushServer))

local readOff, extraInd, extraObjs, currentBuff = 0, 0

local function readDmgEvent()
    extraInd += 1

    local entity = extraObjs[extraInd]
    assert(entity ~= nil and entity:IsA('Model'), 'Expected damaged entity')

    local dmgOff, dmgAmount = readOff
    readOff += 8
    dmgAmount = buffer.readf64(currentBuff, dmgOff)

    local srcTypeOff, srcType = readOff
    readOff += 1
    srcType = buffer.readu8(currentBuff, srcTypeOff)

    local attacker, attackerFOff = nil, readOff
    readOff += 1

    if buffer.readu8(currentBuff, attackerFOff) == 1 then
        extraInd += 1
        attacker = extraObjs[extraInd]

        assert(attacker == nil or entity:IsA('Model'), 'Expected attacker to be a model or nil')
    end

    local xOff, hx = readOff
    readOff += 4
    hx = buffer.readf32(currentBuff, xOff)

    local yOff, hy = readOff
    readOff += 4
    yx = buffer.readf32(currentBuff, yOff)

    local zOff, hz = readOff
    readOff += 4
    hz = buffer.readf32(currentBuff, zOff)

    return entity, dmgAmount, srcType, attacker, Vector3.new(hx, hy, hz)
end

Assets.Connections:Add(remote.OnClientEvent:Connect(function(rawBuffer, extras)
    readOff, extraInd, extraObjs, currentBuff = 0, 0, extras, rawBuffer

    local totalLen = buffer.len(rawBuffer)

    while readOff < totalLen do
        local typeOff, eventType = readOff
        readOff += 1
        eventType = buffer.readu8(rawBuffer, typeOff)

        if eventType == 0 then
            local entity, dmg, srcType, attacker, hitPos = readDmgEvent()

            if listeners[1] then
                for _, v in listeners do
                    task.spawn(v, entity, dmg, srcType, attacker, hitPos)
                end
            else
                table.insert(events, {entity, dmg, srcType, attacker, hitPos})

                if #events > 64 then
                    warn(('[ZAP] %d events in queue for EntityDamageEventZap. Did you forget to attach a listener?'):format(#events))
                end
            end
        else
            warn('[ZAP] Unknown event type recieved:', eventType)
            break
        end
    end
end))

return {
    EntityDamageEventZap = {
        on = function(callback)
            assert(typeof(callback) == 'function', 'on expects a function')
            table.insert(listeners, callback)

            if events[1] then
                for _, v in events do
                    task.spawn(callback, table.unpack(v))
                end
                table.clear(events)
            end

            return function()
                for i, v in listeners do
                    if v == callback then
                        table.remove(listeners, i)
                        break
                    end
                end
            end
        end
    }
}
