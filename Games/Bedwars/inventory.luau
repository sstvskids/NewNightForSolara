-- InventoryUtil (getInventory)

local objUtils = {
    keys = function(tbl)
        local key = table.create(#tbl)
        for k in pairs(tbl) do
            key[#key + 1] = k
        end

        return key
    end,
    values = function(tbl)
        local val = table.create(#tbl)
        for _, v in pairs(tbl) do
            val[#val + 1] = v
        end

        return val
    end
}

local armorSlot = setmetatable({
    HELMET = 0,
    CHESTPLATE = 1,
    BOOTS = 2
}, {
    __index = {
        [0] = 'HELMET',
        [1] = 'CHESTPLATE',
        [2] = 'BOOTS'
    }
})

local armor_slot = {
    ArmorSlot = armorSlot,
    AccessoriesCovered = {
        [armorSlot.HELMET] = {'hat', 'neck'},
        [armorSlot.CHESTPLATE] = {'waist', 'shoulder', 'back', 'neck'},
        [armorSlot.BOOTS] = {'waist'}
    }
}

local function toolEntry(tool)
    if not tool then return nil end

    return {
        tool = tool,
        itemType = tool.Name,
        amount = tool:GetAttribute('Amount'),
        addedtoBackpackTime = tool:GetAttribute('AddedToBackpackTime'),
        itemSkin = tool:GetAttribute('ItemSkin')
    }
end

return {
    getInventory = function(plr)
        local armorVals = objUtils.values(armor_slot.ArmorSlot)
        local armorArray = table.create(#armorVals)
        for i = 1, #armorVals do
            armorArray[i] = 'empty'
        end

        local inv = {
            hand = nil,
            items = {},
            armor = armorArray,
            backpack = nil
        }

        if not plr or plr.Character then return inv end

        if plr.Character:FindFirstChild('InventoryFolder') then
            for _, tool in plr.Character:FindFirstChild('InventoryFolder'):GetChildren() do
                local entry = toolEntry(tool)
                if entry then
                    table.insert(inv.items, entry)
                end
            end
        end

        local armorKeys, idx, started = objUtils.keys(armor_slot.ArmorSlot), 0, false

        while true do
            if started then
                idx += 1
            else
                started = true
            end

            if idx >= #armorKeys then
                local slot = plr.Character:FindFirstChild('BedWarsBackpackSlot')
                local handtoolval = plr.Character:FindFirstChild('HandInvItem').Value
                local handtool, backpacktool = plr.Character:FindFirstChild(handtoolval), slot.Value

                if backpacktool then
                    inv.backpack = toolEntry(backpacktool)
                end

                if handtool then
                    inv.hand = toolEntry(handtool)
                end

                return inv
            end

            local armorObj = plr.Character:FindFirstChild('ArmorInvItem_'..tostring(idx))
            if armorObj and armorObj.Value then
                local tool = armorObj.Value
                local entry = toolEntry(tool)
                if entry then
                    table.insert(inv.armor, entry)
                end
            end
        end
    end
}
