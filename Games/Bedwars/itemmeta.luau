local function v67(p59)
    -- upvalues: (copy) v_u_7, (copy) v_u_48, (copy) v_u_17
    local v60 = {
        ["displayName"] = p59.displayName,
        ["image"] = p59.image
    }
    local v61 = {
        ["damage"] = p59.damage,
        ["attackSpeed"] = 0.25,
        ["ignoreDamageCooldown"] = true,
        ["swingAnimations"] = { v_u_7.DAGGER_SWING_1, v_u_7.DAGGER_SWING_2 },
        ["firstPersonSwingAnimations"] = { v_u_7.DAGGER_SWING_FP, v_u_7.DAGGER_SWING_2_FP },
        ["swingSounds"] = {
            v_u_48.DAGGER_SWING_1,
            v_u_48.DAGGER_SWING_2,
            v_u_48.DAGGER_SWING_3,
            v_u_48.DAGGER_SWING_4
        },
        ["attackRange"] = 3.5 * v_u_17,
        ["respectAttackSpeedForEffects"] = true,
        ["applyCooldownOnMiss"] = true,
        ["knockbackMultiplier"] = {
            ["horizontal"] = 0.5,
            ["vertical"] = 0.5
        }
    }
    v60.sword = v61
    v60.firstPerson = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    }
    v60.sharingDisabled = true
    local v62 = {}
    for v63, v64 in v60 do
        v62[v63] = v64
    end
    for v65, v66 in p59 do
        v62[v65] = v66
    end
    return v62
end
local function v77(p68)
    -- upvalues: (copy) v_u_54, (copy) v_u_17, (copy) v_u_48, (copy) v_u_7
    local v69 = {
        ["displayName"] = p68.displayName,
        ["image"] = p68.image
    }
    local v70 = {
        ["damage"] = p68.damage,
        ["attackSpeed"] = v_u_54.HAMMER_SWING_COOLDOWN,
        ["respectAttackSpeedForEffects"] = true,
        ["attackRange"] = 5 * v_u_17,
        ["applyCooldownOnMiss"] = true,
        ["swingSounds"] = { v_u_48.JUGGERNAUT_ATTACK_SWING_1, v_u_48.JUGGERNAUT_ATTACK_SWING_2 },
        ["swingAnimations"] = { v_u_7.GREAT_HAMMER_SWING_1, v_u_7.GREAT_HAMMER_SWING_2 },
        ["firstPersonSwingAnimations"] = { v_u_7.GREAT_HAMMER_SWING_1_FP, v_u_7.GREAT_HAMMER_SWING_2_FP },
        ["knockbackMultiplier"] = {
            ["horizontal"] = 1.2,
            ["vertical"] = 1.1
        },
        ["multiHitCheckDurationSec"] = 0.25
    }
    local v71 = {
        ["showHoldProgressAfterSec"] = 0.25,
        ["maxChargeTimeSec"] = v_u_54.HAMMER_CHARGE_TIME,
        ["minChargeTimeSec"] = v_u_54.HAMMER_CHARGE_TIME,
        ["attackCooldown"] = 0.65,
        ["bonusDamage"] = p68.damage * 0.35,
        ["bonusKnockback"] = {
            ["horizontal"] = 0.2,
            ["vertical"] = 0.1
        },
        ["walkSpeedModifier"] = {
            ["multiplier"] = 0.9
        },
        ["chargingEffects"] = {
            ["thirdPersonAnim"] = v_u_7.GREAT_HAMMER_CHARGE,
            ["firstPersonAnim"] = v_u_7.GREAT_HAMMER_CHARGE_FP,
            ["sound"] = v_u_48.FRYING_PAN_CHARGE
        },
        ["chargedSwingAnimations"] = { v_u_7.GREAT_HAMMER_CHARGED_SWING },
        ["firstPersonChargedSwingAnimations"] = { v_u_7.GREAT_HAMMER_CHARGED_SWING_FP },
        ["chargedSwingSounds"] = { v_u_48.JUGGERNAUT_ATTACK_SWING_3 }
    }
    v70.chargedAttack = v71
    v69.sword = v70
    v69.sharingDisabled = true
    local v72 = {}
    for v73, v74 in v69 do
        v72[v73] = v74
    end
    for v75, v76 in p68 do
        v72[v75] = v76
    end
    return v72
end
local function v87(p78)
    -- upvalues: (copy) v_u_7
    local v79 = {
        ["displayName"] = p78.displayName,
        ["image"] = p78.image
    }
    local v80 = {
        ["damage"] = p78.damage,
        ["swingAnimations"] = {},
        ["idleAnimation"] = v_u_7.SCYTHE_HOLD,
        ["attackSpeed"] = 0.4,
        ["respectAttackSpeedForEffects"] = true,
        ["applyCooldownOnMiss"] = true
    }
    local v81 = {
        ["showHoldProgressAfterSec"] = 0.2,
        ["maxChargeTimeSec"] = 2,
        ["bonusKnockback"] = {
            ["horizontal"] = 0.5,
            ["vertical"] = 0.5
        },
        ["bonusDamage"] = 4,
        ["disableOnGrounded"] = true
    }
    v80.chargedAttack = v81
    v79.sword = v80
    v79.sharingDisabled = true
    v79.firstPerson = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    }
    local v82 = {}
    for v83, v84 in v79 do
        v82[v83] = v84
    end
    for v85, v86 in p78 do
        v82[v85] = v86
    end
    return v82
end
local function v95(p88)
    -- upvalues: (copy) v_u_7
    local v89 = {
        ["displayName"] = p88.displayName,
        ["image"] = p88.image,
        ["firstPerson"] = {
            ["scale"] = 1,
            ["verticalOffset"] = -1.2
        },
        ["sword"] = {
            ["damage"] = p88.damage,
            ["idleAnimation"] = v_u_7.GAUNTLETS_IDLE,
            ["attackSpeed"] = 0.21,
            ["ignoreDamageCooldown"] = true,
            ["chargedAttack"] = p88.displayName == "Warfists" and {
                ["showHoldProgressAfterSec"] = 0.2,
                ["maxChargeTimeSec"] = 0.75,
                ["bonusKnockback"] = {
                    ["horizontal"] = 1,
                    ["vertical"] = 0.5
                },
                ["walkSpeedModifier"] = {
                    ["multiplier"] = 0.9
                }
            } or nil,
            ["swingSounds"] = {}
        },
        ["sharingDisabled"] = true,
        ["disableFirstPersonHoldAnimation"] = true
    }
    local v90 = {}
    for v91, v92 in v89 do
        v90[v91] = v92
    end
    for v93, v94 in p88 do
        v90[v93] = v94
    end
    return v90
end
local v_u_96 = {}
local v97 = v_u_58.WOOD_SWORD
local v98 = {
    ["displayName"] = "Wood Sword",
    ["image"] = "rbxassetid://6875480974",
    ["sword"] = {
        ["damage"] = 20,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true
}
v_u_96[v97] = v98
local v99 = v_u_58.SPIRIT_DAGGER
local v100 = {
    ["displayName"] = "Spirit Dagger",
    ["image"] = "rbxassetid://16385255903",
    ["sword"] = {
        ["damage"] = 0,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
        ["swingAnimations"] = { v_u_7.PUNCH }
    },
    ["skins"] = {
        v21.SILENTNIGHT_SPIRIT_DAGGER,
        v21.GOLD_VICTORIOUS_SPIRIT_DAGGER,
        v21.PLATINUM_VICTORIOUS_SPIRIT_DAGGER,
        v21.DIAMOND_VICTORIOUS_SPIRIT_DAGGER,
        v21.NIGHTMARE_VICTORIOUS_SPIRIT_DAGGER,
        v21.DODO_SPIRIT_DAGGER
    }
}
v_u_96[v99] = v100
local v101 = v_u_58.SPIRIT_DAGGER_LEFT
local v102 = {
    ["displayName"] = "Spirit Dagger",
    ["image"] = "rbxassetid://6875480974",
    ["sword"] = {
        ["damage"] = 0,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
        ["swingAnimations"] = { v_u_7.PUNCH }
    },
    ["skins"] = {
        v21.SILENTNIGHT_SPIRIT_DAGGER_LEFT,
        v21.GOLD_VICTORIOUS_SPIRIT_DAGGER_LEFT,
        v21.PLATINUM_VICTORIOUS_SPIRIT_DAGGER_LEFT,
        v21.DIAMOND_VICTORIOUS_SPIRIT_DAGGER_LEFT,
        v21.NIGHTMARE_VICTORIOUS_SPIRIT_DAGGER_LEFT,
        v21.DODO_SPIRIT_DAGGER_LEFT
    }
}
v_u_96[v101] = v102
v_u_96[v_u_58.PIRATE_SWORD_FP] = {
    ["displayName"] = "Pirate Sword",
    ["image"] = "rbxassetid://10729541408"
}
local v103 = v_u_58.CUTLASS_GHOST
local v104 = {
    ["displayName"] = "Ghost Cutlass",
    ["image"] = "rbxassetid://10729541018",
    ["sword"] = {
        ["damage"] = 0,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    }
}
v_u_96[v103] = v104
v_u_96[v_u_58.WOOD_GREAT_HAMMER] = v77({
    ["displayName"] = "Wood Great Hammer",
    ["description"] = "Deal large amounts of knockback to enemies.",
    ["image"] = "rbxassetid://13832631568",
    ["damage"] = 23
})
v_u_96[v_u_58.STONE_GREAT_HAMMER] = v77({
    ["displayName"] = "Stone Great Hammer",
    ["description"] = "Deal large amounts of knockback to enemies. Downgrades to a Wood Great Hammer upon death.",
    ["image"] = "rbxassetid://13832631765",
    ["replaces"] = { v_u_58.WOOD_GREAT_HAMMER },
    ["damage"] = 29
})
v_u_96[v_u_58.IRON_GREAT_HAMMER] = v77({
    ["displayName"] = "Iron Great Hammer",
    ["description"] = "Deal large amounts of knockback to enemies. Downgrades to a Stone Great Hammer upon death.",
    ["image"] = "rbxassetid://13832632230",
    ["replaces"] = { v_u_58.WOOD_GREAT_HAMMER, v_u_58.STONE_GREAT_HAMMER },
    ["damage"] = 35
})
v_u_96[v_u_58.DIAMOND_GREAT_HAMMER] = v77({
    ["displayName"] = "Diamond Great Hammer",
    ["description"] = "Deal large amounts of knockback to enemies. Downgrades to an Iron Great Hammer upon death.",
    ["image"] = "rbxassetid://13832632374",
    ["replaces"] = { v_u_58.WOOD_GREAT_HAMMER, v_u_58.STONE_GREAT_HAMMER, v_u_58.IRON_GREAT_HAMMER },
    ["damage"] = 48
})
local v105 = v_u_58.MYTHIC_GREAT_HAMMER
local v106 = {
    ["displayName"] = "Paragon",
    ["image"] = "rbxassetid://13832631998",
    ["replaces"] = {
        v_u_58.WOOD_GREAT_HAMMER,
        v_u_58.STONE_GREAT_HAMMER,
        v_u_58.IRON_GREAT_HAMMER,
        v_u_58.DIAMOND_GREAT_HAMMER
    },
    ["damage"] = 67,
    ["description"] = "Charge your hammer to activate an aura of healing for your teammates. Bonus healing on a successful charged attack. Downgrades to a Diamond Great Hammer upon death.",
    ["itemCatalog"] = {
        ["collection"] = v38.MYTHIC_WEAPON
    }
}
v_u_96[v105] = v77(v106)
local v107 = v_u_58.STONE_SWORD
local v108 = {
    ["displayName"] = "Stone Sword",
    ["description"] = "Doesn\'t downgrade",
    ["image"] = "rbxassetid://6875481137",
    ["sword"] = {
        ["damage"] = 25,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true
}
v_u_96[v107] = v108
local v109 = v_u_58.IRON_SWORD
local v110 = {
    ["displayName"] = "Iron Sword",
    ["description"] = "Doesn\'t downgrade",
    ["image"] = "rbxassetid://6875481281",
    ["sword"] = {
        ["damage"] = 30,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true
}
v_u_96[v109] = v110
local v111 = v_u_58.DIAMOND_SWORD
local v112 = {
    ["displayName"] = "Diamond Sword",
    ["description"] = "Downgrades to an Iron Sword upon death.",
    ["image"] = "rbxassetid://6875481413",
    ["sword"] = {
        ["damage"] = 42,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true
}
v_u_96[v111] = v112
local v113 = v_u_58.ICE_SWORD
local v114 = {
    ["displayName"] = "Ice Sword",
    ["image"] = "rbxassetid://8164577874",
    ["sharingDisabled"] = true,
    ["sword"] = {
        ["damage"] = 44,
        ["attackSpeed"] = 0.3
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = { v21.ICE_SWORD_TIGER_BRAWLER, v21.ICE_SWORD_BUNNY }
}
v_u_96[v113] = v114
local v115 = v_u_58.EMERALD_SWORD
local v116 = {
    ["displayName"] = "Emerald Sword",
    ["description"] = "Downgrades to a Diamond Sword upon death.",
    ["image"] = "rbxassetid://6931677551",
    ["sword"] = {
        ["damage"] = 55,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["itemCatalog"] = {
        ["collection"] = v38.MYTHIC_WEAPON
    }
}
v_u_96[v115] = v116
local v117 = v_u_58.VOID_SWORD
local v118 = {
    ["displayName"] = "Void Sword",
    ["sword"] = {
        ["damage"] = 42,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["image"] = "rbxassetid://9873021357"
}
v_u_96[v117] = v118
local v119 = v_u_58.RAGEBLADE
local v120 = {
    ["displayName"] = "Rageblade",
    ["image"] = "rbxassetid://7051149237",
    ["sword"] = {
        ["damage"] = 70,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN * 0.8
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["skins"] = {
        v21.RAGEBLADE_DEEP_VOID,
        v21.RAGEBLADE_VICTORIOUS,
        v21.RAGEBLADE_BUNNY,
        v21.RAGEBLADE_CORRUPTED
    }
}
v_u_96[v119] = v120
local v121 = v_u_58.DOUBLE_EDGE_SWORD
local v122 = {
    ["displayName"] = "Double Edge Sword",
    ["description"] = "Heal yourself by hitting or eliminating other players while taking damage over time.",
    ["image"] = "rbxassetid://8995895533",
    ["sword"] = {
        ["damage"] = 35,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    }
}
v_u_96[v121] = v122
local v123 = v_u_58.WOOD_DAO
local v124 = {
    ["displayName"] = "Wood Dao",
    ["description"] = "Charge to dash forward.",
    ["image"] = "rbxassetid://8665070999",
    ["sharingDisabled"] = true,
    ["sword"] = {
        ["damage"] = 20,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
        ["daoDash"] = true
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = {
        v21.WOOD_DAO_TIGER,
        v21.WOOD_DAO_VICTORIOUS,
        v21.WOOD_DAO_CURSED,
        v21.WOOD_DAO_SNOW_RABBIT
    },
    ["daoSword"] = {
        ["dashDamage"] = 16.5,
        ["armorMultiplier"] = 0.8
    }
}
v_u_96[v123] = v124
local v125 = v_u_58.STONE_DAO
local v126 = {
    ["displayName"] = "Stone Dao",
    ["description"] = "Charge to dash forward.",
    ["image"] = "rbxassetid://8665071212",
    ["sharingDisabled"] = true,
    ["sword"] = {
        ["damage"] = 25,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
        ["daoDash"] = true
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = {
        v21.STONE_DAO_TIGER,
        v21.STONE_DAO_VICTORIOUS,
        v21.STONE_DAO_CURSED,
        v21.STONE_DAO_SNOW_RABBIT
    },
    ["daoSword"] = {
        ["dashDamage"] = 19.8,
        ["armorMultiplier"] = 0.8
    }
}
v_u_96[v125] = v126
local v127 = v_u_58.IRON_DAO
local v128 = {
    ["displayName"] = "Iron Dao",
    ["description"] = "Charge to dash forward.",
    ["image"] = "rbxassetid://8665071395",
    ["sharingDisabled"] = true,
    ["sword"] = {
        ["damage"] = 30,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
        ["daoDash"] = true
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = {
        v21.IRON_DAO_TIGER,
        v21.IRON_DAO_VICTORIOUS,
        v21.IRON_DAO_CURSED,
        v21.IRON_DAO_SNOW_RABBIT
    },
    ["daoSword"] = {
        ["dashDamage"] = 23.1,
        ["armorMultiplier"] = 0.8
    }
}
v_u_96[v127] = v128
local v129 = v_u_58.DIAMOND_DAO
local v130 = {
    ["displayName"] = "Diamond Dao",
    ["description"] = "Charge to dash forward. Downgrades to an Iron Dao upon death.",
    ["image"] = "rbxassetid://8665071845",
    ["sharingDisabled"] = true,
    ["sword"] = {
        ["damage"] = 42,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
        ["daoDash"] = true
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = {
        v21.DIAMOND_DAO_TIGER,
        v21.DIAMOND_DAO_VICTORIOUS,
        v21.DIAMOND_DAO_CURSED,
        v21.DIAMOND_DAO_SNOW_RABBIT
    },
    ["daoSword"] = {
        ["dashDamage"] = 27.500000000000004,
        ["armorMultiplier"] = 0.75
    }
}
v_u_96[v129] = v130
local v131 = v_u_58.EMERALD_DAO
local v132 = {
    ["displayName"] = "Emerald Dao",
    ["description"] = "Charge to dash forward. Downgrades to a Diamond Dao upon death.",
    ["image"] = "rbxassetid://8665071630",
    ["sharingDisabled"] = true,
    ["sword"] = {
        ["damage"] = 55,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
        ["daoDash"] = true
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = {
        v21.EMERALD_DAO_TIGER,
        v21.EMERALD_DAO_VICTORIOUS,
        v21.EMERALD_DAO_CURSED,
        v21.EMERALD_DAO_SNOW_RABBIT
    },
    ["daoSword"] = {
        ["dashDamage"] = 30.800000000000004,
        ["armorMultiplier"] = 0.7
    }
}
v_u_96[v131] = v132
local v133 = v_u_58.SHEARS
local v134 = {
    ["displayName"] = "Shears",
    ["image"] = "rbxassetid://7261638571",
    ["breakBlock"] = {
        [v2.WOOL] = 5
    },
    ["sharingDisabled"] = true
}
v_u_96[v133] = v134
local v135 = v_u_58.WOOL_SHEAR
local v136 = {
    ["displayName"] = "Shears",
    ["image"] = "rbxassetid://7261638571",
    ["sharingDisabled"] = true,
    ["breakBlock"] = {
        [v2.WOOL] = 5
    }
}
v_u_96[v135] = v136
local v137 = v_u_58.WOOD_PICKAXE
local v138 = {
    ["displayName"] = "Wood Pickaxe",
    ["image"] = "rbxassetid://6875481046",
    ["breakBlock"] = {
        [v2.STONE] = 5
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["sharingDisabled"] = true
}
v_u_96[v137] = v138
local v139 = v_u_58.STONE_PICKAXE
local v140 = {
    ["displayName"] = "Stone Pickaxe",
    ["image"] = "rbxassetid://6875481184",
    ["breakBlock"] = {
        [v2.STONE] = 8
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["sharingDisabled"] = true
}
v_u_96[v139] = v140
local v141 = v_u_58.IRON_PICKAXE
local v142 = {
    ["displayName"] = "Iron Pickaxe",
    ["image"] = "rbxassetid://6875481325",
    ["breakBlock"] = {
        [v2.STONE] = 13
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["sharingDisabled"] = true
}
v_u_96[v141] = v142
local v143 = v_u_58.DIAMOND_PICKAXE
local v144 = {
    ["displayName"] = "Diamond Pickaxe",
    ["image"] = "rbxassetid://6875481462",
    ["breakBlock"] = {
        [v2.STONE] = 20
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["sharingDisabled"] = true
}
v_u_96[v143] = v144
local v145 = v_u_58.PIRATE_SHOVEL
local v146 = {
    ["displayName"] = "Pirate Shovel",
    ["image"] = "rbxassetid://10797226616",
    ["description"] = "Dig enemy blocks for treasure",
    ["breakBlock"] = {
        [v2.STONE] = 20
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    }
}
v_u_96[v145] = v146
local v147 = v_u_58.LASER_PICKAXE
local v148 = {
    ["displayName"] = "Laser Pickaxe",
    ["image"] = "rbxassetid://92568899407180",
    ["description"] = "Break blocks from afar with this powerful laserbeam!",
    ["breakBlock"] = {
        [v2.STONE] = 22
    },
    ["breakBlockCooldown"] = 0.15,
    ["breakBlockRange"] = 4 * v_u_17,
    ["sharingDisabled"] = true,
    ["breakBlockSwingAnimationOverride"] = v_u_7.FLAMETHROWER_USE,
    ["firstPerson"] = {
        ["verticalOffset"] = 0.4,
        ["scale"] = 0.75,
        ["holdAnimation"] = v_u_7.FLAMETHROWER_IDLE
    },
    ["disableFirstPersonWalkAnimation"] = true
}
v_u_96[v147] = v148
local v149 = v_u_58.DEFENSE_SCANNER
local v150 = {
    ["displayName"] = "Defense Scanner",
    ["image"] = "rbxassetid://111331930769734",
    ["sharingDisabled"] = true,
    ["keepOnDeath"] = true,
    ["placesBlock"] = {
        ["blockType"] = v_u_58.DEFENSE_SCANNER_BLOCK_SNAPPING
    },
    ["skins"] = { v21.SUBZERO_DEFENSE_SCANNER }
}
v_u_96[v149] = v150
local v151 = v_u_58.DEFENSE_SCANNER_BLOCK_SNAPPING
local v152 = {
    ["displayName"] = "Defense Scanner Block Snapper",
    ["sharingDisabled"] = true,
    ["removeFromCustoms"] = true,
    ["block"] = {
        ["breakType"] = v2.STONE
    }
}
v_u_96[v151] = v152
local v153 = v_u_58.WOOD_AXE
local v154 = {
    ["displayName"] = "Wood Axe",
    ["image"] = "rbxassetid://6875481089",
    ["breakBlock"] = {
        [v2.WOOD] = 4
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["sharingDisabled"] = true
}
v_u_96[v153] = v154
local v155 = v_u_58.STONE_AXE
local v156 = {
    ["displayName"] = "Stone Axe",
    ["image"] = "rbxassetid://6875481224",
    ["breakBlock"] = {
        [v2.WOOD] = 8
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["sharingDisabled"] = true
}
v_u_96[v155] = v156
local v157 = v_u_58.IRON_AXE
local v158 = {
    ["displayName"] = "Iron Axe",
    ["image"] = "rbxassetid://6875481370",
    ["breakBlock"] = {
        [v2.WOOD] = 12
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["sharingDisabled"] = true
}
v_u_96[v157] = v158
local v159 = v_u_58.DIAMOND_AXE
local v160 = {
    ["displayName"] = "Diamond Axe",
    ["image"] = "rbxassetid://6883832539",
    ["breakBlock"] = {
        [v2.WOOD] = 17
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["sharingDisabled"] = true
}
v_u_96[v159] = v160
local v161 = v_u_58.WOOD_BOW
local v162 = {
    ["displayName"] = "Bow"
}
local v164 = {
    ["projectileType"] = function(p163)
        -- upvalues: (copy) v_u_58
        if p163 == v_u_58.FIREWORK_ARROW then
            return "firework_arrow"
        end
        if p163 == v_u_58.VOLLEY_ARROW then
            return "volley_arrow"
        end
        if p163 == v_u_58.IRON_ARROW then
            return "iron_arrow"
        end
        local _ = p163 == v_u_58.ARROW
        return "arrow"
    end,
    ["ammoItemTypes"] = {
        v_u_58.FIREWORK_ARROW,
        v_u_58.ARROW,
        v_u_58.VOLLEY_ARROW,
        v_u_58.IRON_ARROW
    },
    ["fireDelaySec"] = 0.6,
    ["maxStrengthChargeSec"] = 0.65,
    ["minStrengthScalar"] = 0.3333333333333333,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["chargeBeginSound"] = { v_u_48.BOW_DRAW },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.BOW_AIM,
        ["fireAnimation"] = v_u_7.BOW_FIRE,
        ["drawAnimation"] = v_u_7.BOW_DRAW
    },
    ["multiShotChargeTime"] = 0.85
}
v162.projectileSource = v164
v162.firstPerson = {
    ["verticalOffset"] = 0
}
v162.image = "rbxassetid://6869295332"
v162.skins = {
    v21.WOOD_BOW_DEMON_EMPRESS_VANESSA,
    v21.WOOD_BOW_LUNAR_DRAGON,
    v21.WOOD_BOW_VALENTINE_VANESSA,
    v21.WOOD_BOW_VICTORIOUS_GOLD,
    v21.WOOD_BOW_VICTORIOUS_PLATINUM,
    v21.WOOD_BOW_VICTORIOUS_DIAMOND,
    v21.WOOD_BOW_VICTORIOUS_EMERALD,
    v21.WOOD_BOW_VICTORIOUS_NIGHTMARE
}
v162.sharingDisabled = true
v_u_96[v161] = v162
local v165 = v_u_58.WOOD_CROSSBOW
local v166 = {
    ["displayName"] = "Crossbow"
}
local v168 = {
    ["projectileType"] = function(p167)
        -- upvalues: (copy) v_u_58
        if p167 == v_u_58.FIREWORK_ARROW then
            return "crossbow_firework_arrow"
        end
        if p167 == v_u_58.VOLLEY_ARROW then
            return "volley_arrow"
        end
        if p167 == v_u_58.IRON_ARROW then
            return "crossbow_arrow_iron"
        end
        local _ = p167 == v_u_58.ARROW
        return "crossbow_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.FIREWORK_ARROW, v_u_58.ARROW, v_u_58.IRON_ARROW },
    ["fireDelaySec"] = v_u_54.CROSSBOW_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.CROSSBOW_FIRE
    },
    ["multiShotChargeTime"] = 1.6
}
v166.projectileSource = v168
v166.replaces = { v_u_58.WOOD_BOW }
v166.image = "rbxassetid://6869295265"
v166.skins = { v21.WOOD_CROSSBOW_DEMON_EMPRESS_VANESSA, v21.WOOD_CROSSBOW_VALENTINE_VANESSA }
v166.sharingDisabled = true
v_u_96[v165] = v166
local v169 = v_u_58.TACTICAL_CROSSBOW
local v170 = {
    ["displayName"] = "Tactical Crossbow",
    ["sharingDisabled"] = true
}
local v172 = {
    ["projectileType"] = function(p171)
        -- upvalues: (copy) v_u_58
        if p171 == v_u_58.FIREWORK_ARROW then
            return "tactical_crossbow_firework_arrow"
        end
        if p171 == v_u_58.VOLLEY_ARROW then
            return "volley_arrow"
        end
        if p171 == v_u_58.IRON_ARROW then
            return "tactical_crossbow_arrow_iron"
        end
        local _ = p171 == v_u_58.ARROW
        return "tactical_crossbow_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.FIREWORK_ARROW, v_u_58.ARROW, v_u_58.IRON_ARROW },
    ["fireDelaySec"] = v_u_54.CROSSBOW_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.CROSSBOW_FIRE
    },
    ["multiShotChargeTime"] = 1.6
}
v170.projectileSource = v172
v170.skins = {
    v21.TACTICAL_CROSSBOW_LUNAR_DRAGON,
    v21.TACTICAL_CROSSBOW_VICTORIOUS_GOLD,
    v21.TACTICAL_CROSSBOW_VICTORIOUS_PLATINUM,
    v21.TACTICAL_CROSSBOW_VICTORIOUS_DIAMOND,
    v21.TACTICAL_CROSSBOW_VICTORIOUS_EMERALD,
    v21.TACTICAL_CROSSBOW_VICTORIOUS_NIGHTMARE
}
v170.image = "rbxassetid://7051149016"
v_u_96[v169] = v170
local v173 = v_u_58.TACTICAL_HEADHUNTER
local v174 = {
    ["displayName"] = "Tactical Headhunter",
    ["description"] = "A tactical adaptation of the legendary Headhunter, this weapon deals massive damage!"
}
local v176 = {
    ["projectileType"] = function(p175)
        -- upvalues: (copy) v_u_58
        if p175 == v_u_58.FIREWORK_ARROW then
            return "headhunter_firework_arrow"
        end
        if p175 == v_u_58.IRON_ARROW then
            return "tactical_headhunter_arrow_iron"
        end
        local _ = p175 == v_u_58.ARROW
        return "tactical_headhunter_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.FIREWORK_ARROW, v_u_58.ARROW, v_u_58.IRON_ARROW },
    ["fireDelaySec"] = v_u_54.HEADHUNTER_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = {
        v_u_48.HEADHUNTER_SHOOT_1,
        v_u_48.HEADHUNTER_SHOOT_2,
        v_u_48.HEADHUNTER_SHOOT_3,
        v_u_48.HEADHUNTER_SHOOT_4
    },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM_FP,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT_FP
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT
    },
    ["multiShotChargeTime"] = 2
}
v174.projectileSource = v176
v174.skins = {
    v21.TACTICAL_HEADHUNTER_LUNAR_DRAGON,
    v21.TACTICAL_HEADHUNTER_VICTORIOUS_GOLD,
    v21.TACTICAL_HEADHUNTER_VICTORIOUS_PLATINUM,
    v21.TACTICAL_HEADHUNTER_VICTORIOUS_DIAMOND,
    v21.TACTICAL_HEADHUNTER_VICTORIOUS_EMERALD,
    v21.TACTICAL_HEADHUNTER_VICTORIOUS_NIGHTMARE
}
v174.sharingDisabled = true
v174.image = "rbxassetid://13887697172"
v_u_96[v173] = v174
local v177 = v_u_58.FEATHER_BOW
local v178 = {
    ["displayName"] = "Feather Bow",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "arrow"
        end,
        ["ammoItemTypes"] = { v_u_58.ARROW },
        ["fireDelaySec"] = 1,
        ["maxStrengthChargeSec"] = 0.9,
        ["minStrengthScalar"] = 0.25,
        ["walkSpeedMultiplier"] = 0.25,
        ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
        ["chargeBeginSound"] = { v_u_48.BOW_DRAW }
    },
    ["image"] = "rbxassetid://6869295332",
    ["skins"] = { v21.FEATHER_BOW_DEMON_EMPRESS_VANESSA }
}
v_u_96[v177] = v178
local v179 = v_u_58.FALCONER_BOW
local v180 = {
    ["displayName"] = "Feather-light Bow",
    ["description"] = "Blessed by the wind, this lightweight weapon enables skilled archers to hunt their prey with speed and accuracy"
}
local v182 = {
    ["projectileType"] = function(p181)
        -- upvalues: (copy) v_u_58
        if p181 == v_u_58.FIREWORK_ARROW then
            return "firework_arrow"
        end
        if p181 == v_u_58.VOLLEY_ARROW then
            return "volley_arrow"
        end
        if p181 == v_u_58.IRON_ARROW then
            return "iron_arrow"
        end
        local _ = p181 == v_u_58.ARROW
        return "arrow"
    end,
    ["ammoItemTypes"] = {
        v_u_58.FIREWORK_ARROW,
        v_u_58.ARROW,
        v_u_58.VOLLEY_ARROW,
        v_u_58.IRON_ARROW
    },
    ["fireDelaySec"] = 0.6,
    ["maxStrengthChargeSec"] = 0.65,
    ["minStrengthScalar"] = 0.3333333333333333,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["chargeBeginSound"] = { v_u_48.BOW_DRAW },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.BOW_AIM,
        ["fireAnimation"] = v_u_7.BOW_FIRE,
        ["drawAnimation"] = v_u_7.BOW_DRAW
    },
    ["multiShotChargeTime"] = 1
}
v180.projectileSource = v182
v180.firstPerson = {
    ["verticalOffset"] = 0
}
v180.image = v36.FALCONER_BOW
v180.sharingDisabled = true
v180.replaces = { v_u_58.WOOD_BOW }
v_u_96[v179] = v180
local v183 = v_u_58.FALCONER_CROSSBOW
local v184 = {
    ["displayName"] = "Feather-light Crossbow",
    ["description"] = "Blessed by the wind, this lightweight weapon enables skilled archers to hunt their prey with speed and accuracy"
}
local v186 = {
    ["projectileType"] = function(p185)
        -- upvalues: (copy) v_u_58
        if p185 == v_u_58.FIREWORK_ARROW then
            return "crossbow_firework_arrow"
        end
        if p185 == v_u_58.VOLLEY_ARROW then
            return "volley_arrow"
        end
        if p185 == v_u_58.IRON_ARROW then
            return "crossbow_arrow_iron"
        end
        local _ = p185 == v_u_58.ARROW
        return "crossbow_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.FIREWORK_ARROW, v_u_58.ARROW, v_u_58.IRON_ARROW },
    ["fireDelaySec"] = v_u_54.CROSSBOW_FIRE_DELAY,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.CROSSBOW_FIRE
    },
    ["multiShotChargeTime"] = 1.6
}
v184.projectileSource = v186
v184.image = v36.FALCONER_CROSSBOW
v184.sharingDisabled = true
v184.replaces = { v_u_58.FALCONER_BOW, v_u_58.WOOD_BOW, v_u_58.WOOD_CROSSBOW }
v184.firstPerson = {
    ["scale"] = 0.9,
    ["verticalOffset"] = -0.25
}
v_u_96[v183] = v184
local v187 = v_u_58.FALCONER_HEADHUNTER
local v188 = {
    ["displayName"] = "Feather-light Headhunter",
    ["description"] = "Blessed by the wind, this lightweight weapon enables skilled archers to hunt their prey with speed and accuracy. Hit headshots for massive damage!"
}
local v190 = {
    ["projectileType"] = function(p189)
        -- upvalues: (copy) v_u_58
        if p189 == v_u_58.FIREWORK_ARROW then
            return "headhunter_firework_arrow"
        end
        if p189 == v_u_58.IRON_ARROW then
            return "headhunter_arrow_iron"
        end
        local _ = p189 == v_u_58.ARROW
        return "headhunter_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.FIREWORK_ARROW, v_u_58.ARROW, v_u_58.IRON_ARROW },
    ["fireDelaySec"] = v_u_54.HEADHUNTER_FIRE_DELAY,
    ["launchSound"] = {
        v_u_48.HEADHUNTER_SHOOT_1,
        v_u_48.HEADHUNTER_SHOOT_2,
        v_u_48.HEADHUNTER_SHOOT_3,
        v_u_48.HEADHUNTER_SHOOT_4
    },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM_FP,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT_FP
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT
    },
    ["multiShotChargeTime"] = 2
}
v188.projectileSource = v190
v188.sharingDisabled = true
v188.image = v36.FALCONER_HEADHUNTER
v188.replaces = {
    v_u_58.FALCONER_CROSSBOW,
    v_u_58.WOOD_CROSSBOW,
    v_u_58.FALCONER_BOW,
    v_u_58.WOOD_BOW
}
v_u_96[v187] = v188
local v191 = v_u_58.TELEPEARL
local v192 = {
    ["displayName"] = "Telepearl",
    ["description"] = "A magical teleportation orb that can be thrown."
}
local v193 = {
    ["projectileType"] = function()
        return "telepearl"
    end,
    ["ammoItemTypes"] = { v_u_58.TELEPEARL },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v192.projectileSource = v193
v192.image = "rbxassetid://6874950144"
v_u_96[v191] = v192
v_u_96[v_u_58.ARROW] = {
    ["displayName"] = "Arrow",
    ["image"] = "rbxassetid://6869295400",
    ["hotbarFillRight"] = true,
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.IRON_ARROW] = {
    ["displayName"] = "Iron Arrow",
    ["image"] = "rbxassetid://15579506183",
    ["hotbarFillRight"] = true,
    ["sharingDisabled"] = true,
    ["description"] = "Increased projectile damage"
}
v_u_96[v_u_58.FIREWORK_ARROW] = {
    ["displayName"] = "Firework Arrow",
    ["image"] = "rbxassetid://8665953060",
    ["hotbarFillRight"] = true
}
local v194 = v_u_58.FIREBALL
local v195 = {
    ["displayName"] = "Fireball",
    ["description"] = "Throw fireball that explodes on impact."
}
local v196 = {
    ["projectileType"] = function()
        return "fireball"
    end,
    ["ammoItemTypes"] = { v_u_58.FIREBALL },
    ["fireDelaySec"] = 1,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.FIREBALL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.PUNCH
    }
}
v195.projectileSource = v196
v195.image = "rbxassetid://7192711008"
v195.sharingDisabled = true
v_u_96[v194] = v195
local v197 = v_u_58.DIRT
local v198 = {
    ["displayName"] = "Dirt",
    ["footstepSound"] = v47.GRASS
}
local v199 = {
    ["breakType"] = v2.DIRT,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 3
        }
    }
}
v198.block = v199
v_u_96[v197] = v198
local v200 = v_u_58.GRASS
local v201 = {
    ["displayName"] = "Grass",
    ["footstepSound"] = v47.GRASS
}
local v202 = {
    ["breakType"] = v2.DIRT,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 2
        }
    }
}
v201.block = v202
v_u_96[v200] = v201
local v203 = v_u_58.STONE
local v204 = {
    ["displayName"] = "Stone",
    ["footstepSound"] = v47.STONE
}
local v205 = {
    ["breakType"] = v2.STONE,
    ["health"] = 50,
    ["blastResistance"] = 2,
    ["regenSpeed"] = 0.1,
    ["greedyMesh"] = {
        ["textures"] = {}
    }
}
local v206 = {}
local v207 = {
    ["blockId"] = 152
}
local v208 = {
    ["mapNames"] = { "mw_Mines" },
    ["filterType"] = "Include",
    ["config"] = {
        ["breakable"] = true
    }
}
v207.mapBlockOverride = v208
__set_list(v206, 1, {{
    ["blockId"] = 1,
    ["blockData"] = 0
}, v207})
v205.minecraftConversions = v206
v204.block = v205
v_u_96[v203] = v204
local v209 = v_u_58.STONE_TILES
local v210 = {
    ["displayName"] = "Stone Tiles",
    ["footstepSound"] = v47.STONE
}
local v211 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 201
        }
    }
}
v210.block = v211
v_u_96[v209] = v210
local v212 = v_u_58.COBBLESTONE
local v213 = {
    ["displayName"] = "Cobblestone",
    ["footstepSound"] = v47.STONE
}
local v214 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 4
        }
    }
}
v213.block = v214
v_u_96[v212] = v213
local v215 = v_u_58.MOSS_BLOCK
local v216 = {
    ["displayName"] = "Moss Block",
    ["footstepSound"] = v47.GRASS
}
local v217 = {
    ["breakType"] = v2.DIRT,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["greedyMesh"] = {
        ["textures"] = {},
        ["materialColor"] = {
            Color3.fromRGB(60, 229, 0),
            v5.hexColor(2154445),
            v5.hexColor(3264140),
            v5.hexColor(3721138),
            Color3.fromRGB(0, 232, 118)
        }
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 48
        }
    }
}
v216.block = v217
v_u_96[v215] = v216
local v218 = v_u_58.STONE_PILLAR
local v219 = {
    ["displayName"] = "Stone Pillar",
    ["footstepSound"] = v47.STONE
}
local v220 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 202
        }
    }
}
v219.block = v220
v_u_96[v218] = v219
local v221 = v_u_58.STONE_SLAB
local v222 = {
    ["displayName"] = "Stone Slab",
    ["footstepSound"] = v47.STONE
}
local v223 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 43,
            ["blockData"] = 8
        },
        {
            ["blockId"] = 43,
            ["blockData"] = 0
        },
        {
            ["blockId"] = 44,
            ["blockData"] = 0
        }
    }
}
v222.block = v223
v_u_96[v221] = v222
local v224 = v_u_58.STONE_BRICK
local v225 = {
    ["displayName"] = "Stone Brick",
    ["footstepSound"] = v47.STONE
}
local v226 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastResistance"] = 2,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 98
        },
        {
            ["blockId"] = 1,
            ["blockData"] = 6
        }
    },
    ["health"] = 75,
    ["regenSpeed"] = 0.1
}
v225.block = v226
v_u_96[v224] = v225
local v227 = v_u_58.STONE_BRICK_BUILDER
local v228 = {
    ["displayName"] = "Stone Wall Builder",
    ["description"] = "Build a stone wall",
    ["image"] = "rbxassetid://10717427173",
    ["footstepSound"] = v47.STONE,
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["blastResistance"] = 1.73,
        ["health"] = 75
    }
}
v_u_96[v227] = v228
local v229 = v_u_58.BRICK
local v230 = {
    ["displayName"] = "Brick",
    ["footstepSound"] = v47.STONE
}
local v231 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 45
        }
    }
}
v230.block = v231
v_u_96[v229] = v230
local v232 = v_u_58.ANDESITE
local v233 = {
    ["displayName"] = "ANDESITE",
    ["footstepSound"] = v47.STONE
}
local v234 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 1,
            ["blockData"] = 5
        }
    }
}
v233.block = v234
v_u_96[v232] = v233
local v235 = v_u_58.ANDESITE_POLISHED
local v236 = {
    ["displayName"] = "Polished Andesite",
    ["footstepSound"] = v47.STONE
}
local v237 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 1,
            ["blockData"] = 6
        }
    }
}
v236.block = v237
v_u_96[v235] = v236
local v238 = v_u_58.DIORITE
local v239 = {
    ["displayName"] = "Diorite",
    ["footstepSound"] = v47.STONE
}
local v240 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 1,
            ["blockData"] = 3
        }
    }
}
v239.block = v240
v_u_96[v238] = v239
local v241 = v_u_58.DIORITE_POLISHED
local v242 = {
    ["displayName"] = "Polished Diorite",
    ["footstepSound"] = v47.STONE
}
local v243 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 1,
            ["blockData"] = 4
        }
    }
}
v242.block = v243
v_u_96[v241] = v242
local v244 = v_u_58.GRANITE
local v245 = {
    ["displayName"] = "Granite",
    ["footstepSound"] = v47.STONE
}
local v246 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 1,
            ["blockData"] = 1
        }
    }
}
v245.block = v246
v_u_96[v244] = v245
local v247 = v_u_58.GRANITE_POLISHED
local v248 = {
    ["displayName"] = "Polished Granite",
    ["footstepSound"] = v47.STONE
}
local v249 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 1,
            ["blockData"] = 2
        }
    }
}
v248.block = v249
v_u_96[v247] = v248
local v250 = v_u_58.OBSIDIAN
local v251 = {
    ["displayName"] = "Obsidian",
    ["footstepSound"] = v47.STONE
}
local v252 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 49
        }
    },
    ["health"] = 150,
    ["blastResistance"] = 10,
    ["regenSpeed"] = 0.2
}
v251.block = v252
v_u_96[v250] = v251
local v253 = v_u_58.FISHERMAN_CORAL
local v254 = {
    ["displayName"] = "Coral",
    ["footstepSound"] = v47.STONE
}
local v255 = {
    ["breakType"] = v2.STONE,
    ["health"] = 210,
    ["blastResistance"] = 5,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8012
        }
    },
    ["regenSpeed"] = 0.2
}
v254.block = v255
v_u_96[v253] = v254
local v256 = v_u_58.WOOD_PLANK_OAK
local v257 = {
    ["displayName"] = "Oak Plank",
    ["footstepSound"] = v47.WOOD
}
local v258 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastResistance"] = 1.4,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 5
        }
    },
    ["health"] = 35,
    ["flammable"] = true,
    ["flameSpreadStopChance"] = 0.4,
    ["regenSpeed"] = 0.15
}
v257.block = v258
v_u_96[v256] = v257
local v259 = v_u_58.WOOD_PLANK_OAK_BUILDER
local v260 = {
    ["displayName"] = "Oak Plank Wall",
    ["description"] = "Build a wood wall",
    ["image"] = "rbxassetid://10717426899",
    ["footstepSound"] = v47.WOOD,
    ["block"] = {
        ["breakType"] = v2.WOOD,
        ["blastResistance"] = 1.4,
        ["health"] = 30
    }
}
v_u_96[v259] = v260
local v261 = v_u_58.DRAWBRIDGE
local v262 = {
    ["displayName"] = "Bridge Printer",
    ["description"] = "Hit with your hammer to toggle a scaffold bridge!",
    ["footstepSound"] = v47.STONE
}
local v263 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {},
        ["rotation"] = {}
    },
    ["blastResistance"] = 1.4,
    ["health"] = 10,
    ["disableInventoryPickup"] = true,
    ["maxPlaced"] = 24
}
v262.block = v263
v262.sharingDisabled = true
v262.drawBridgeSource = {}
v262.skins = { v21.CHRISTMAS_DRAWBRIDGE }
v_u_96[v261] = v262
local v264 = v_u_58.SCAFFOLD
local v265 = {
    ["displayName"] = "Scaffold",
    ["footstepSound"] = v47.WOOD
}
local v266 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {},
        ["rotation"] = {}
    },
    ["blastResistance"] = 1.4,
    ["health"] = 1,
    ["disableInventoryPickup"] = true,
    ["collectionServiceTags"] = { "scaffold" },
    ["flammable"] = true
}
v265.block = v266
v265.sharingDisabled = true
v265.skins = { v21.CHRISTMAS_SCAFFOLD }
v_u_96[v264] = v265
local v267 = v_u_58.OAK_LOG
local v268 = {
    ["displayName"] = "Oak Log",
    ["footstepSound"] = v47.WOOD
}
local v269 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 17
        },
        {
            ["blockId"] = 35
        },
        {
            ["blockId"] = 159,
            ["blockData"] = 8
        }
    },
    ["health"] = 30
}
v268.block = v269
v_u_96[v267] = v268
local v270 = v_u_58.BIRCH_LOG
local v271 = {
    ["displayName"] = "Birch Log",
    ["footstepSound"] = v47.WOOD
}
local v272 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 17,
            ["blockData"] = 2
        }
    },
    ["health"] = 30
}
v271.block = v272
v_u_96[v270] = v271
local v273 = v_u_58.SPRUCE_LOG
local v274 = {
    ["displayName"] = "Spruce Log",
    ["footstepSound"] = v47.WOOD
}
local v275 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 17,
            ["blockData"] = 1
        }
    },
    ["health"] = 30
}
v274.block = v275
v_u_96[v273] = v274
local v276 = v_u_58.HICKORY_LOG
local v277 = {
    ["displayName"] = "Hickory Log",
    ["footstepSound"] = v47.WOOD
}
local v278 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 17,
            ["blockData"] = 3
        },
        {
            ["blockId"] = 162,
            ["blockData"] = 0
        }
    },
    ["health"] = 30
}
v277.block = v278
v_u_96[v276] = v277
local v279 = v_u_58.WOOD_PLANK_BIRCH
local v280 = {
    ["displayName"] = "Birch Wood Plank",
    ["footstepSound"] = v47.WOOD
}
local v281 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 5,
            ["blockData"] = 2
        }
    },
    ["health"] = 30
}
v280.block = v281
v_u_96[v279] = v280
local v282 = v_u_58.WOOD_PLANK_SPRUCE
local v283 = {
    ["displayName"] = "Spruce Wood Plank",
    ["footstepSound"] = v47.WOOD
}
local v284 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 5,
            ["blockData"] = 1
        }
    },
    ["health"] = 30
}
v283.block = v284
v_u_96[v282] = v283
local v285 = v_u_58.WOOD_PLANK_MAPLE
local v286 = {
    ["displayName"] = "Maple Wood Plank",
    ["footstepSound"] = v47.WOOD
}
local v287 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 5,
            ["blockData"] = 4
        }
    },
    ["health"] = 30
}
v286.block = v287
v_u_96[v285] = v286
local v288 = v_u_58.BOOKSHELF
local v289 = {
    ["displayName"] = "Bookshelf",
    ["footstepSound"] = v47.WOOD
}
local v290 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 47
        }
    },
    ["health"] = 15
}
v289.block = v290
v_u_96[v288] = v289
local v291 = v_u_58.GLASS
local v292 = {
    ["displayName"] = "Glass",
    ["footstepSound"] = v47.STONE
}
local v293 = {
    ["breakType"] = v2.STONE,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 20
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 0
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 1
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 2
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 3
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 4
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 5
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 6
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 7
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 8
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 9
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 10
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 11
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 12
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 13
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 14
        },
        {
            ["blockId"] = 95,
            ["blockData"] = 15
        }
    },
    ["health"] = 1,
    ["seeThrough"] = true
}
v292.block = v293
v292.image = "rbxassetid://6909521321"
v_u_96[v291] = v292
local v294 = v_u_58.BED
local v295 = {
    ["displayName"] = "Bed",
    ["footstepSound"] = v47.WOOD
}
local v296 = {
    ["healthType"] = v3.GLOBAL,
    ["breakType"] = v2.WOOD,
    ["blastProof"] = true,
    ["blastResistance"] = 10000000,
    ["seeThrough"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 24,
    ["collectionServiceTags"] = { "bed" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12005
        }
    },
    ["noRegen"] = true
}
v295.block = v296
v_u_96[v294] = v295
local v297 = v_u_58.OG_BED
local v298 = {
    ["displayName"] = "Bed",
    ["footstepSound"] = v47.WOOD,
    ["block"] = {
        ["healthType"] = v3.GLOBAL,
        ["breakType"] = v2.WOOD,
        ["blastProof"] = true,
        ["blastResistance"] = 10000000,
        ["seeThrough"] = true,
        ["disableInventoryPickup"] = true,
        ["health"] = 24,
        ["collectionServiceTags"] = { "bed" },
        ["noRegen"] = true
    }
}
v_u_96[v297] = v298
local v299 = v_u_58.FLAG
local v300 = {
    ["displayName"] = "Flag",
    ["footstepSound"] = v47.WOOD
}
local v301 = {
    ["breakType"] = v2.WOOD,
    ["blastProof"] = true,
    ["seeThrough"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 18,
    ["collectionServiceTags"] = { "flag" },
    ["denyPlaceOn"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12006
        }
    }
}
v300.block = v301
v_u_96[v299] = v300
local v302 = v_u_58.PINATA
local v303 = {
    ["displayName"] = "Pi\195\177ata",
    ["footstepSound"] = v47.STONE
}
local v304 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_6, (copy) v_u_48
        return v_u_55(v_u_6.fromList(v_u_48.PINATA_HIT_1, v_u_48.PINATA_HIT_2, v_u_48.PINATA_HIT_3))
    end,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_6, (copy) v_u_48
        return v_u_55(v_u_6.fromList(v_u_48.PINATA_HIT_1, v_u_48.PINATA_HIT_2, v_u_48.PINATA_HIT_3))
    end,
    ["collectionServiceTags"] = { "piggy-bank" },
    ["maxPlaced"] = 1,
    ["disableInventoryPickup"] = true,
    ["health"] = 35,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8013
        }
    },
    ["seeThrough"] = true
}
v303.block = v304
v303.image = "rbxassetid://10013673974"
v303.sharingDisabled = true
v_u_96[v302] = v303
local v305 = v_u_58.LEATHER_HELMET
local v306 = {
    ["displayName"] = "Leather Helmet",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 0.12
    },
    ["image"] = "rbxassetid://6855466216",
    ["sharingDisabled"] = true
}
v_u_96[v305] = v306
local v307 = v_u_58.LEATHER_CHESTPLATE
local v308 = {
    ["displayName"] = "Leather Chestplate",
    ["armor"] = {
        ["slot"] = v37.CHESTPLATE,
        ["damageReductionMultiplier"] = 0.16
    },
    ["image"] = "rbxassetid://6876833204",
    ["sharingDisabled"] = true
}
v_u_96[v307] = v308
local v309 = v_u_58.LEATHER_BOOTS
local v310 = {
    ["displayName"] = "Leather Boots",
    ["armor"] = {
        ["slot"] = v37.BOOTS,
        ["damageReductionMultiplier"] = 0.08
    },
    ["image"] = "rbxassetid://6855466456",
    ["sharingDisabled"] = true
}
v_u_96[v309] = v310
local v311 = v_u_58.IRON_HELMET
local v312 = {
    ["displayName"] = "Iron Helmet",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 0.2
    },
    ["image"] = "rbxassetid://6874272559",
    ["sharingDisabled"] = true
}
v_u_96[v311] = v312
local v313 = v_u_58.IRON_CHESTPLATE
local v314 = {
    ["displayName"] = "Iron Chestplate",
    ["armor"] = {
        ["slot"] = v37.CHESTPLATE,
        ["damageReductionMultiplier"] = 0.24
    },
    ["image"] = "rbxassetid://6874272631",
    ["sharingDisabled"] = true
}
v_u_96[v313] = v314
local v315 = v_u_58.IRON_BOOTS
local v316 = {
    ["displayName"] = "Iron Boots",
    ["armor"] = {
        ["slot"] = v37.BOOTS,
        ["damageReductionMultiplier"] = 0.12
    },
    ["image"] = "rbxassetid://6874272718",
    ["sharingDisabled"] = true
}
v_u_96[v315] = v316
local v317 = v_u_58.DIAMOND_HELMET
local v318 = {
    ["displayName"] = "Diamond Helmet",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 0.24
    },
    ["image"] = "rbxassetid://6874272793",
    ["sharingDisabled"] = true
}
v_u_96[v317] = v318
local v319 = v_u_58.DIAMOND_CHESTPLATE
local v320 = {
    ["displayName"] = "Diamond Chestplate",
    ["image"] = "rbxassetid://6874272898",
    ["armor"] = {
        ["slot"] = v37.CHESTPLATE,
        ["damageReductionMultiplier"] = 0.32
    },
    ["sharingDisabled"] = true
}
v_u_96[v319] = v320
local v321 = v_u_58.DIAMOND_BOOTS
local v322 = {
    ["displayName"] = "Diamond Boots",
    ["armor"] = {
        ["slot"] = v37.BOOTS,
        ["damageReductionMultiplier"] = 0.2
    },
    ["image"] = "rbxassetid://6874272964",
    ["sharingDisabled"] = true
}
v_u_96[v321] = v322
local v323 = v_u_58.EMERALD_HELMET
local v324 = {
    ["displayName"] = "Emerald Helmet",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 0.24
    },
    ["image"] = "rbxassetid://6931675766",
    ["sharingDisabled"] = true
}
v_u_96[v323] = v324
local v325 = v_u_58.EMERALD_CHESTPLATE
local v326 = {
    ["displayName"] = "Emerald Chestplate",
    ["image"] = "rbxassetid://6931675868",
    ["armor"] = {
        ["slot"] = v37.CHESTPLATE,
        ["damageReductionMultiplier"] = 0.4
    },
    ["sharingDisabled"] = true
}
v_u_96[v325] = v326
local v327 = v_u_58.EMERALD_BOOTS
local v328 = {
    ["displayName"] = "Emerald Boots",
    ["armor"] = {
        ["slot"] = v37.BOOTS,
        ["damageReductionMultiplier"] = 0.2
    },
    ["image"] = "rbxassetid://6931675942",
    ["sharingDisabled"] = true
}
v_u_96[v327] = v328
local v329 = v_u_58.VOID_HELMET
local v330 = {
    ["displayName"] = "Void Helmet",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 0.2
    },
    ["image"] = "rbxassetid://9866786767"
}
v_u_96[v329] = v330
local v331 = v_u_58.VOID_CHESTPLATE
local v332 = {
    ["displayName"] = "Void Chestplate",
    ["armor"] = {
        ["slot"] = v37.CHESTPLATE,
        ["damageReductionMultiplier"] = 0.34
    },
    ["image"] = "rbxassetid://9866786852"
}
v_u_96[v331] = v332
local v333 = v_u_58.VOID_BOOTS
local v334 = {
    ["displayName"] = "Void Boots",
    ["armor"] = {
        ["slot"] = v37.BOOTS,
        ["damageReductionMultiplier"] = 0.16
    },
    ["image"] = "rbxassetid://9866786979"
}
v_u_96[v333] = v334
local v335 = v_u_58.JUGGERNAUT_HELMET
local v336 = {
    ["displayName"] = "Juggernaut Helmet",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 0.26
    },
    ["image"] = "rbxassetid://8730010634"
}
v_u_96[v335] = v336
local v337 = v_u_58.JUGGERNAUT_CHESTPLATE
local v338 = {
    ["displayName"] = "Juggernaut Chestplate",
    ["image"] = "rbxassetid://8730010865",
    ["armor"] = {
        ["slot"] = v37.CHESTPLATE,
        ["damageReductionMultiplier"] = 0.42
    }
}
v_u_96[v337] = v338
local v339 = v_u_58.JUGGERNAUT_BOOTS
local v340 = {
    ["displayName"] = "Juggernaut Boots",
    ["armor"] = {
        ["slot"] = v37.BOOTS,
        ["damageReductionMultiplier"] = 0.22
    },
    ["image"] = "rbxassetid://8730011123"
}
v_u_96[v339] = v340
v_u_96[v_u_58.IRON] = {
    ["displayName"] = "Iron",
    ["displayNameColor"] = Color3.fromRGB(255, 255, 255),
    ["image"] = "rbxassetid://6850537969",
    ["hotbarFillRight"] = true
}
v_u_96[v_u_58.DIAMOND] = {
    ["displayName"] = "Diamond",
    ["displayNameColor"] = v5.hexColor(5636095),
    ["image"] = "rbxassetid://6850538161",
    ["hotbarFillRight"] = true,
    ["pickUpOverlaySound"] = v_u_48.NEW_DIAMOND_PICKUP
}
v_u_96[v_u_58.EMERALD] = {
    ["displayName"] = "Emerald",
    ["displayNameColor"] = v5.hexColor(5635925),
    ["image"] = "rbxassetid://6850538075",
    ["hotbarFillRight"] = true,
    ["pickUpOverlaySound"] = v_u_48.NEW_EMERALD_PICKUP
}
v_u_96[v_u_58.GOLD] = {
    ["displayName"] = "Gold",
    ["displayNameColor"] = Color3.fromRGB(255, 209, 0),
    ["image"] = "rbxassetid://13465460696",
    ["hotbarFillRight"] = true
}
v_u_96[v_u_58.CANDY] = {
    ["displayName"] = "Candy",
    ["displayNameColor"] = v5.hexColor(5635925),
    ["image"] = "rbxassetid://10013673573",
    ["hotbarFillRight"] = true,
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.VOID_CRYSTAL] = {
    ["displayName"] = "Void Crystal",
    ["displayNameColor"] = v50.mcPink,
    ["image"] = "rbxassetid://9866758117",
    ["hotbarFillRight"] = true
}
local v341 = v_u_58.EMERALD_BLOCK
local v342 = {
    ["displayName"] = "Emerald Block",
    ["footstepSound"] = v47.STONE
}
local v343 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastResistance"] = 0.25,
    ["health"] = 100,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 133
        }
    }
}
v342.block = v343
v_u_96[v341] = v342
local v344 = v_u_58.GALACTITE
local v345 = {
    ["displayName"] = "Galactite",
    ["footstepSound"] = v47.VOID
}
local v346 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 87
        }
    }
}
v345.block = v346
v_u_96[v344] = v345
local v347 = v_u_58.GALACTITE_BRICK
local v348 = {
    ["displayName"] = "Galactite Brick",
    ["footstepSound"] = v47.VOID
}
local v349 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 112
        }
    }
}
v348.block = v349
v_u_96[v347] = v348
local v350 = v_u_58.KOBBLAK
local v351 = {
    ["displayName"] = "Kobblak",
    ["footstepSound"] = v47.VOID
}
local v352 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 216
        }
    }
}
v351.block = v352
v_u_96[v350] = v351
local v353 = v_u_58.VOID_DIRT
local v354 = {
    ["displayName"] = "Void Dirt",
    ["footstepSound"] = v47.GRASS
}
local v355 = {
    ["breakType"] = v2.DIRT,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GRASS_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 3,
            ["blockData"] = 1
        }
    }
}
v354.block = v355
v_u_96[v353] = v354
local v356 = v_u_58.VOID_GROWTH
local v357 = {
    ["displayName"] = "Void Growth",
    ["footstepSound"] = v47.GRASS
}
local v358 = {
    ["breakType"] = v2.DIRT,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GRASS_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 214
        }
    }
}
v357.block = v358
v_u_96[v356] = v357
local v359 = v_u_58.VOID_GRASS
local v360 = {
    ["displayName"] = "Kresh",
    ["footstepSound"] = v47.GRASS
}
local v361 = {
    ["breakType"] = v2.DIRT,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GRASS_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 3,
            ["blockData"] = 2
        }
    }
}
v360.block = v361
v_u_96[v359] = v360
local v362 = v_u_58.DIAMOND_BLOCK
local v363 = {
    ["displayName"] = "Diamond Block",
    ["footstepSound"] = v47.STONE
}
local v364 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastResistance"] = 0.25,
    ["health"] = 100,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 57
        }
    }
}
v363.block = v364
v_u_96[v362] = v363
local v365 = v_u_58.IRON_BLOCK
local v366 = {
    ["displayName"] = "Iron Block",
    ["footstepSound"] = v47.STONE
}
local v367 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastResistance"] = 0.25,
    ["health"] = 100,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 42
        }
    }
}
v366.block = v367
v_u_96[v365] = v366
local v368 = v_u_58.GOLD_BLOCK
local v369 = {
    ["displayName"] = "Gold Block",
    ["footstepSound"] = v47.STONE
}
local v370 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 251,
            ["blockData"] = 4
        }
    }
}
v369.block = v370
v_u_96[v368] = v369
local v371 = v_u_58.GUILDED_IRON
local v372 = {
    ["displayName"] = "Guilded Iron Block",
    ["footstepSound"] = v47.STONE
}
local v373 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 41
        }
    }
}
v372.block = v373
v_u_96[v371] = v372
local v374 = v_u_58.COPPER_BLOCK
local v375 = {
    ["displayName"] = "Copper Block",
    ["footstepSound"] = v47.STONE
}
local v376 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 14
        }
    }
}
v375.block = v376
v_u_96[v374] = v375
local v377 = v_u_58.STEEL_BLOCK
local v378 = {
    ["displayName"] = "Steel Block",
    ["footstepSound"] = v47.STONE
}
local v379 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 15
        }
    }
}
v378.block = v379
v_u_96[v377] = v378
local v380 = {
    ["displayName"] = "White Wool",
    ["minecraftConversions"] = {
        {
            ["blockId"] = 35,
            ["blockData"] = 0
        }
    }
}
v_u_96[v_u_58.WOOL_WHITE] = v53.wool(v380)
local v381 = v_u_58.WOOL_BUILDER
local v382 = {
    ["displayName"] = "Wool Wall",
    ["image"] = "rbxassetid://10717426564",
    ["description"] = "Build a wool wall",
    ["footstepSound"] = v47.WOOL,
    ["block"] = {
        ["breakType"] = v2.WOOL,
        ["hitSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.WOOL_BREAK)
        end,
        ["placeSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
        end,
        ["health"] = 8,
        ["blastResistance"] = 0.65,
        ["wool"] = true,
        ["flammable"] = true
    },
    ["removeFromCustoms"] = true
}
v_u_96[v381] = v382
local v383 = {
    ["displayName"] = "Blue Wool",
    ["minecraftConversions"] = {
        {
            ["blockId"] = 35,
            ["blockData"] = 11
        },
        {
            ["blockId"] = 35,
            ["blockData"] = 3
        }
    }
}
v_u_96[v_u_58.WOOL_BLUE] = v53.wool(v383)
local v384 = {
    ["displayName"] = "Red Wool",
    ["minecraftConversions"] = {
        {
            ["blockId"] = 35,
            ["blockData"] = 14
        }
    }
}
v_u_96[v_u_58.WOOL_RED] = v53.wool(v384)
local v385 = {
    ["displayName"] = "Green Wool",
    ["minecraftConversions"] = {
        {
            ["blockId"] = 35,
            ["blockData"] = 5
        }
    }
}
v_u_96[v_u_58.WOOL_GREEN] = v53.wool(v385)
local v386 = {
    ["displayName"] = "Orange Wool",
    ["minecraftConversions"] = {
        {
            ["blockId"] = 35,
            ["blockData"] = 1
        }
    }
}
v_u_96[v_u_58.WOOL_ORANGE] = v53.wool(v386)
local v387 = {
    ["displayName"] = "Yellow Wool",
    ["minecraftConversions"] = {
        {
            ["blockId"] = 35,
            ["blockData"] = 4
        }
    }
}
v_u_96[v_u_58.WOOL_YELLOW] = v53.wool(v387)
local v388 = {
    ["displayName"] = "Pink Wool",
    ["minecraftConversions"] = {
        {
            ["blockId"] = 35,
            ["blockData"] = 6
        }
    }
}
v_u_96[v_u_58.WOOL_PINK] = v53.wool(v388)
local v389 = {
    ["displayName"] = "Cyan Wool",
    ["minecraftConversions"] = {
        {
            ["blockId"] = 35,
            ["blockData"] = 9
        }
    }
}
v_u_96[v_u_58.WOOL_CYAN] = v53.wool(v389)
local v390 = {
    ["displayName"] = "Purple Wool",
    ["minecraftConversions"] = {
        {
            ["blockId"] = 35,
            ["blockData"] = 10
        }
    }
}
v_u_96[v_u_58.WOOL_PURPLE] = v53.wool(v390)
v_u_96[v_u_58.WOOL_BROWN] = v53.wool({
    ["displayName"] = "Brown Wool"
})
local v391 = v_u_58.VOLATILE_STONE
local v392 = {
    ["displayName"] = "Volatile Stone",
    ["footstepSound"] = v47.STONE
}
local v393 = {
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["pointLight"] = {
        ["Brightness"] = 0.4,
        ["Color"] = Color3.fromRGB(176, 250, 191),
        ["Shadows"] = true,
        ["Range"] = 12
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12020
        }
    }
}
v392.block = v393
v_u_96[v391] = v392
local v394 = v_u_58.VOID_BLOCK
local v395 = {
    ["displayName"] = "Void Rock",
    ["footstepSound"] = v47.VOID
}
local v396 = {
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["collectionServiceTags"] = { "void_block" }
}
v395.block = v396
v_u_96[v394] = v395
local v397 = v_u_58.INVISIBLE_BLOCK
local v398 = {
    ["displayName"] = "Void Rock",
    ["footstepSound"] = v47.VOID,
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["hitSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.STONE_BREAK)
        end,
        ["disableInventoryPickup"] = true
    },
    ["removeFromCustoms"] = true
}
v_u_96[v397] = v398
local v399 = v_u_58.FLYING_MONSTER_BLOCK
local v400 = {
    ["displayName"] = "Air",
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["hitSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.STONE_BREAK)
        end,
        ["disableInventoryPickup"] = true,
        ["collectionServiceTags"] = { "no-query-block" },
        ["denyPlaceOn"] = true
    },
    ["removeFromCustoms"] = true
}
v_u_96[v399] = v400
local v401 = v_u_58.DAMAGE_BANNER
local v402 = {
    ["displayName"] = "Fire Banner",
    ["description"] = "Place banner that grants \'Fire II\' to yourself and any team member inside banner radius.",
    ["image"] = "rbxassetid://9557924197",
    ["sharingDisabled"] = true
}
local v403 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["health"] = 80,
    ["disableInventoryPickup"] = true,
    ["unbreakableByTeammates"] = true,
    ["seeThrough"] = true,
    ["collectionServiceTags"] = { "flag-kit" },
    ["maxPlaced"] = 1,
    ["denyPlaceOn"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12007
        }
    }
}
v402.block = v403
v_u_96[v401] = v402
local v404 = v_u_58.DEFENSE_BANNER
local v405 = {
    ["displayName"] = "Defense Banner",
    ["description"] = "Place banner that grants \'Anti Knockback\' to yourself and any team member inside banner radius.",
    ["image"] = "rbxassetid://9557924054",
    ["sharingDisabled"] = true
}
local v406 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["health"] = 80,
    ["disableInventoryPickup"] = true,
    ["unbreakableByTeammates"] = true,
    ["seeThrough"] = true,
    ["collectionServiceTags"] = { "flag-kit" },
    ["maxPlaced"] = 1,
    ["denyPlaceOn"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12008
        }
    }
}
v405.block = v406
v_u_96[v404] = v405
local v407 = v_u_58.HEAL_BANNER
local v408 = {
    ["displayName"] = "Heal Banner",
    ["description"] = "Place banner that heals yourself and any team member inside banner radius.",
    ["image"] = "rbxassetid://9557924389",
    ["sharingDisabled"] = true
}
local v409 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["health"] = 80,
    ["disableInventoryPickup"] = true,
    ["unbreakableByTeammates"] = true,
    ["seeThrough"] = true,
    ["collectionServiceTags"] = { "flag-kit" },
    ["maxPlaced"] = 1,
    ["denyPlaceOn"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12009
        }
    }
}
v408.block = v409
v_u_96[v407] = v408
local v410 = v_u_58.PIRATE_FLAG
local v411 = {
    ["displayName"] = "Pirate Flag",
    ["description"] = "Periodically collects nearby dropped items",
    ["image"] = "rbxassetid://10797226392"
}
local v412 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["health"] = 40,
    ["disableInventoryPickup"] = true,
    ["unbreakableByTeammates"] = true,
    ["seeThrough"] = true,
    ["collectionServiceTags"] = { "pirate-flag" },
    ["maxPlaced"] = 1,
    ["denyPlaceOn"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12022
        }
    }
}
v411.block = v412
v_u_96[v410] = v411
local v413 = v_u_58.IRON_ORE_MESH_BLOCK
local v414 = {
    ["displayName"] = "Iron Ore",
    ["footstepSound"] = v47.STONE
}
local v415 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["health"] = 100,
    ["disableInventoryPickup"] = true,
    ["unbreakableByTeammates"] = true,
    ["noRegen"] = true,
    ["seeThrough"] = true,
    ["blastResistance"] = 0.25,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12021
        }
    }
}
v414.block = v415
v_u_96[v413] = v414
v_u_96[v_u_58.PIRATE_TELESCOPE] = {
    ["displayName"] = "Pirate Telescope",
    ["description"] = "Grants nearby allies enhanced projectiles",
    ["image"] = "rbxassetid://10797226885"
}
local v416 = v_u_58.CLAY
local v417 = {
    ["displayName"] = "Clay",
    ["footstepSound"] = v47.STONE
}
local v418 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 82
        }
    },
    ["health"] = 8
}
v417.block = v418
v_u_96[v416] = v417
local v419 = v_u_58.CLAY_ORANGE
local v420 = {
    ["displayName"] = "Orange Clay",
    ["footstepSound"] = v47.STONE
}
local v421 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 1
        },
        {
            ["blockId"] = 251,
            ["blockData"] = 1
        }
    },
    ["health"] = 8
}
v420.block = v421
v_u_96[v419] = v420
local v422 = v_u_58.CLAY_DARK_GREEN
local v423 = {
    ["displayName"] = "Dark Green Clay",
    ["footstepSound"] = v47.STONE
}
local v424 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 13
        },
        {
            ["blockId"] = 18,
            ["blockData"] = 1
        }
    },
    ["health"] = 8
}
v423.block = v424
v_u_96[v422] = v423
local v425 = v_u_58.CLAY_LIGHT_GREEN
local v426 = {
    ["displayName"] = "Light Green Clay",
    ["footstepSound"] = v47.STONE
}
local v427 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 5
        }
    },
    ["health"] = 8
}
v426.block = v427
v_u_96[v425] = v426
local v428 = v_u_58.CLAY_RED
local v429 = {
    ["displayName"] = "Red Clay",
    ["footstepSound"] = v47.STONE
}
local v430 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 14
        },
        {
            ["blockId"] = 251,
            ["blockData"] = 14
        }
    },
    ["health"] = 8
}
v429.block = v430
v_u_96[v428] = v429
local v431 = v_u_58.CLAY_PINK
local v432 = {
    ["displayName"] = "Pink Clay",
    ["footstepSound"] = v47.STONE
}
local v433 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 6
        },
        {
            ["blockId"] = 159,
            ["blockData"] = 2
        },
        {
            ["blockId"] = 251,
            ["blockData"] = 6
        }
    },
    ["health"] = 8
}
v432.block = v433
v_u_96[v431] = v432
local v434 = v_u_58.CLAY_BLUE
local v435 = {
    ["displayName"] = "Blue Clay",
    ["footstepSound"] = v47.STONE
}
local v436 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 251,
            ["blockData"] = 11
        }
    },
    ["health"] = 8
}
v435.block = v436
v_u_96[v434] = v435
local v437 = v_u_58.CLAY_PURPLE
local v438 = {
    ["displayName"] = "Purple Clay",
    ["footstepSound"] = v47.STONE
}
local v439 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 10
        },
        {
            ["blockId"] = 251,
            ["blockData"] = 10
        }
    },
    ["health"] = 8
}
v438.block = v439
v_u_96[v437] = v438
local v440 = v_u_58.CLAY_BLACK
local v441 = {
    ["displayName"] = "Black Clay",
    ["footstepSound"] = v47.STONE
}
local v442 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 15
        },
        {
            ["blockId"] = 35,
            ["blockData"] = 7
        },
        {
            ["blockId"] = 251,
            ["blockData"] = 15
        }
    },
    ["health"] = 8
}
v441.block = v442
v_u_96[v440] = v441
local v443 = v_u_58.CLAY_TAN
local v444 = {
    ["displayName"] = "Tan Clay",
    ["footstepSound"] = v47.STONE
}
local v445 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 172,
            ["blockData"] = 0
        }
    },
    ["health"] = 8
}
v444.block = v445
v_u_96[v443] = v444
local v446 = v_u_58.CLAY_LIGHT_BROWN
local v447 = {
    ["displayName"] = "Light Brown Clay",
    ["footstepSound"] = v47.STONE
}
local v448 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 12
        },
        {
            ["blockId"] = 251,
            ["blockData"] = 12
        }
    },
    ["health"] = 8
}
v447.block = v448
v_u_96[v446] = v447
local v449 = v_u_58.CLAY_DARK_BROWN
local v450 = {
    ["displayName"] = "Dark Brown Clay",
    ["footstepSound"] = v47.STONE
}
local v451 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 7
        },
        {
            ["blockId"] = 35,
            ["blockData"] = 12
        }
    },
    ["health"] = 8
}
v450.block = v451
v_u_96[v449] = v450
local v452 = v_u_58.CLAY_YELLOW
local v453 = {
    ["displayName"] = "Yellow Clay",
    ["footstepSound"] = v47.STONE
}
local v454 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 4
        }
    },
    ["health"] = 8
}
v453.block = v454
v_u_96[v452] = v453
local v455 = v_u_58.CLAY_WHITE
local v456 = {
    ["displayName"] = "White Clay",
    ["footstepSound"] = v47.STONE
}
local v457 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 251,
            ["blockData"] = 0
        },
        {
            ["blockId"] = 159,
            ["blockData"] = 0
        }
    },
    ["health"] = 8
}
v456.block = v457
v_u_96[v455] = v456
local v458 = v_u_58.CLAY_GRAY
local v459 = {
    ["displayName"] = "Gray Clay",
    ["footstepSound"] = v47.STONE
}
local v460 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 9
        }
    },
    ["health"] = 8
}
v459.block = v460
v_u_96[v458] = v459
local v461 = v_u_58.CLAY_GREEN
local v462 = {
    ["displayName"] = "Green Clay",
    ["footstepSound"] = v47.STONE
}
local v463 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 251,
            ["blockData"] = 5
        }
    },
    ["health"] = 8
}
v462.block = v463
v_u_96[v461] = v462
local v464 = v_u_58.CONCRETE_GREEN
local v465 = {
    ["displayName"] = "Green Concrete",
    ["footstepSound"] = v47.STONE
}
local v466 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 251,
            ["blockData"] = 13
        }
    },
    ["health"] = 8
}
v465.block = v466
v_u_96[v464] = v465
local v467 = v_u_58.MARBLE
local v468 = {
    ["displayName"] = "Marble",
    ["footstepSound"] = v47.STONE
}
local v469 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 155,
            ["blockData"] = 0
        }
    },
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["health"] = 8
}
v468.block = v469
v468.image = "rbxassetid://6594536339"
v_u_96[v467] = v468
local v470 = v_u_58.MARBLE_PILLAR
local v471 = {
    ["displayName"] = "Marble Pillar",
    ["footstepSound"] = v47.STONE
}
local v472 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 155,
            ["blockData"] = 2
        }
    },
    ["health"] = 8
}
v471.block = v472
v_u_96[v470] = v471
local v473 = v_u_58.SLATE_BRICK
local v474 = {
    ["displayName"] = "Slate Brick",
    ["footstepSound"] = v47.STONE
}
local v475 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 159,
            ["blockData"] = 11
        }
    },
    ["health"] = 8
}
v474.block = v475
v_u_96[v473] = v474
local v476 = v_u_58.SLATE_TILES
local v477 = {
    ["displayName"] = "Slate Tiles",
    ["footstepSound"] = v47.STONE
}
local v478 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 168,
            ["blockData"] = 2
        }
    },
    ["health"] = 8
}
v477.block = v478
v_u_96[v476] = v477
local v479 = v_u_58.SAND
local v480 = {
    ["displayName"] = "Sand",
    ["footstepSound"] = v47.SAND
}
local v481 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12,
            ["blockData"] = 0
        }
    },
    ["health"] = 8
}
v480.block = v481
v_u_96[v479] = v480
local v482 = v_u_58.RED_SAND
local v483 = {
    ["displayName"] = "Red Sand",
    ["footstepSound"] = v47.SAND
}
local v484 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12,
            ["blockData"] = 1
        }
    }
}
v483.block = v484
v_u_96[v482] = v483
local v485 = v_u_58.SANDSTONE
local v486 = {
    ["displayName"] = "Sandstone",
    ["footstepSound"] = v47.STONE
}
local v487 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 24,
            ["blockData"] = 0
        }
    },
    ["health"] = 8
}
v486.block = v487
v_u_96[v485] = v486
local v488 = v_u_58.SANDSTONE_POLISHED
local v489 = {
    ["displayName"] = "Sandstone Polished",
    ["footstepSound"] = v47.STONE
}
local v490 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 98,
            ["blockData"] = 2
        }
    },
    ["health"] = 8
}
v489.block = v490
v_u_96[v488] = v489
local v491 = v_u_58.SANDSTONE_SMOOTH
local v492 = {
    ["displayName"] = "Sandstone Smooth",
    ["footstepSound"] = v47.STONE
}
local v493 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 98,
            ["blockData"] = 3
        }
    },
    ["health"] = 8
}
v492.block = v493
v_u_96[v491] = v492
local v494 = v_u_58.RED_SANDSTONE
local v495 = {
    ["displayName"] = "Red Sandstone",
    ["footstepSound"] = v47.STONE
}
local v496 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 179,
            ["blockData"] = 0
        }
    },
    ["health"] = 8
}
v495.block = v496
v_u_96[v494] = v495
local v497 = v_u_58.RED_SANDSTONE_POLISHED
local v498 = {
    ["displayName"] = "Red Sandstone Polished",
    ["footstepSound"] = v47.STONE
}
local v499 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 168
        }
    },
    ["health"] = 8
}
v498.block = v499
v_u_96[v497] = v498
local v500 = v_u_58.RED_SANDSTONE_SMOOTH
local v501 = {
    ["displayName"] = "Red Sandstone Smooth",
    ["footstepSound"] = v47.STONE
}
local v502 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 168,
            ["blockData"] = 1
        }
    },
    ["health"] = 8
}
v501.block = v502
v_u_96[v500] = v501
local v503 = v_u_58.SNOW
local v504 = {
    ["displayName"] = "Snow",
    ["footstepSound"] = v47.SNOW
}
local v505 = {
    ["breakType"] = v2.WOOL,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.SNOW_FOOTSTEP_1, v_u_48.SNOW_FOOTSTEP_2, v_u_48.SNOW_FOOTSTEP_3, v_u_48.SNOW_FOOTSTEP_4)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 78
        },
        {
            ["blockId"] = 80
        }
    },
    ["health"] = 1
}
v504.block = v505
v_u_96[v503] = v504
local v506 = v_u_58.ICE
local v507 = {
    ["displayName"] = "Ice",
    ["footstepSound"] = v47.ICE
}
local v508 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 79
        },
        {
            ["blockId"] = 174
        },
        {
            ["blockId"] = 212
        }
    },
    ["health"] = 8
}
v507.block = v508
v_u_96[v506] = v507
local v509 = v_u_58.TNT
local v510 = {
    ["displayName"] = "TNT",
    ["footstepSound"] = v47.SAND
}
local v511 = {
    ["breakType"] = v2.WOOL,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.WOOL_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["health"] = 1
}
v510.block = v511
v_u_96[v509] = v510
local v512 = v_u_58.SIEGE_TNT
local v513 = {
    ["displayName"] = "Siege TNT",
    ["footstepSound"] = v47.SAND
}
local v514 = {
    ["breakType"] = v2.WOOL,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.WOOL_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["health"] = 1
}
v513.block = v514
v513.sharingDisabled = true
v_u_96[v512] = v513
local v515 = v_u_58.BLASTPROOF_CERAMIC
local v516 = {
    ["displayName"] = "Blastproof Ceramic",
    ["footstepSound"] = v47.STONE
}
local v517 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["health"] = 20,
    ["regenSpeed"] = 0.1,
    ["blastProof"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8014
        }
    }
}
v516.block = v517
v_u_96[v515] = v516
local v518 = v_u_58.SLIME_BLOCK
local v519 = {
    ["displayName"] = "Slime Block",
    ["image"] = "rbxassetid://8273432599",
    ["footstepSound"] = v47.SAND
}
local v520 = {
    ["breakType"] = v2.WOOL,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.SLIME_BLOCK_PLACE)
    end,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.SLIME_BLOCK_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["health"] = 1,
    ["elasticity"] = {
        ["elasticityPercent"] = 0.7,
        ["bounceSound"] = v_u_48.SLIME_BLOCK_BOUNCE
    },
    ["fallDamageMultiplier"] = 0,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 165
        }
    }
}
v519.block = v520
v_u_96[v518] = v519
local v521 = v_u_58.MAGIC_GLASS
local v522 = {
    ["displayName"] = "Magic Glass",
    ["description"] = "Blast Proof. Attacks and projectiles phase through this magic window!",
    ["footstepSound"] = v47.VOID
}
local v523 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.MAGIC_GLASS_PLACE_1, v_u_48.MAGIC_GLASS_PLACE_2, v_u_48.MAGIC_GLASS_PLACE_3)
    end,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.MAGIC_GLASS_HIT_1, v_u_48.MAGIC_GLASS_HIT_2, v_u_48.MAGIC_GLASS_HIT_3, v_u_48.MAGIC_GLASS_HIT_4)
    end,
    ["breakSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.MAGIC_GLASS_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["health"] = 20,
    ["blastProof"] = true
}
v522.block = v523
v_u_96[v521] = v522
local v524 = v_u_58.MELON_SEEDS
local v525 = {
    ["displayName"] = "Melon Seeds",
    ["image"] = "rbxassetid://6956387796",
    ["placesBlock"] = {
        ["blockType"] = v_u_58.MELON
    }
}
v_u_96[v524] = v525
local v526 = v_u_58.MELON
local v527 = {
    ["displayName"] = "Melon"
}
local v528 = {
    ["breakType"] = v2.WOOD,
    ["health"] = 5,
    ["denyPlaceOn"] = true,
    ["placedBy"] = {
        ["itemType"] = v_u_58.MELON_SEEDS
    },
    ["seeThrough"] = true,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.CROP_PLANT_1, v_u_48.CROP_PLANT_2, v_u_48.CROP_PLANT_3)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8015
        }
    },
    ["disableFlamableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["hideDamageTextures"] = true
}
v527.block = v528
v527.image = "rbxassetid://6915428682"
v_u_96[v526] = v527
local v529 = v_u_58.CARROT_SEEDS
local v530 = {
    ["displayName"] = "Carrot Seeds",
    ["image"] = "rbxassetid://6956387835",
    ["placesBlock"] = {
        ["blockType"] = v_u_58.CARROT
    }
}
v_u_96[v529] = v530
local v531 = v_u_58.CHICKEN_EGG
local v532 = {
    ["displayName"] = "Egg",
    ["image"] = "rbxassetid://13988247733",
    ["placesBlock"] = {
        ["blockType"] = v_u_58.CHICKEN_EGG_BLOCK
    },
    ["sharingDisabled"] = true
}
v_u_96[v531] = v532
local v533 = v_u_58.CHICKEN_EGG_BLOCK
local v534 = {
    ["displayName"] = "Egg"
}
local v535 = {
    ["breakType"] = v2.WOOD,
    ["health"] = 5,
    ["denyPlaceOn"] = true,
    ["placedBy"] = {
        ["itemType"] = v_u_58.CHICKEN_EGG
    },
    ["seeThrough"] = true,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.CHICKEN_EGG_CRACK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8016
        }
    },
    ["disableFlamableByTeammates"] = true
}
v534.block = v535
v534.image = "rbxassetid://3677675280"
v_u_96[v533] = v534
local v536 = v_u_58.CHICKEN_DEPLOY
local v537 = {
    ["displayName"] = "Chicken",
    ["image"] = "rbxassetid://13988247449"
}
local v538 = {
    ["projectileType"] = function()
        return "deploy_chicken"
    end,
    ["ammoItemTypes"] = { v_u_58.CHICKEN_DEPLOY },
    ["fireDelaySec"] = 0.3,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.THROW_CHICKEN,
        ["idleAnimation"] = v_u_7.HOLD_CHICKEN
    }
}
v537.projectileSource = v538
v537.sharingDisabled = true
v537.enablePersonalChest = true
v_u_96[v536] = v537
local v539 = v_u_58.CARROT
local v540 = {
    ["displayName"] = "Carrot"
}
local v541 = {
    ["breakType"] = v2.WOOD,
    ["health"] = 5,
    ["denyPlaceOn"] = true,
    ["placedBy"] = {
        ["itemType"] = v_u_58.CARROT_SEEDS
    },
    ["seeThrough"] = true,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.CROP_PLANT_1, v_u_48.CROP_PLANT_2, v_u_48.CROP_PLANT_3)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8016
        }
    },
    ["disableFlamableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["hideDamageTextures"] = true
}
v540.block = v541
v540.image = "rbxassetid://3677675280"
v_u_96[v539] = v540
v_u_96[v_u_58.WATERING_CAN] = {
    ["displayName"] = "Watering Can",
    ["image"] = "rbxassetid://6915423754"
}
v_u_96[v_u_58.HAMMER] = {
    ["displayName"] = "Hammer",
    ["image"] = "rbxassetid://6955848801",
    ["sharingDisabled"] = true,
    ["fortifiesBlock"] = true,
    ["skins"] = { v21.NUTCRACKER_HAMMER },
    ["keepOnDeath"] = true
}
local v542 = v_u_58.APPLE
local v543 = {
    ["displayName"] = "Health Apple",
    ["image"] = "rbxassetid://6985765179",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["requiresMissingHealth"] = true
    },
    ["maxStackSize"] = {
        ["amount"] = 3
    },
    ["skins"] = { v21.APPLE_SPIRIT, v21.APPLE_VALENTINE }
}
v_u_96[v542] = v543
local v544 = {
    ["displayName"] = "The Big Apple",
    ["image"] = "rbxassetid://75449163962073",
    ["description"] = "You\'ll be full after this",
    ["consumable"] = {
        ["consumeTime"] = 2.75,
        ["requiresMissingHealth"] = true
    },
    ["maxStackSize"] = {
        ["amount"] = 2
    }
}
v_u_96[v_u_58.BIG_APPLE] = v544
local v545 = v_u_58.PIE
local v546 = {
    ["displayName"] = "Speed Pie",
    ["image"] = "rbxassetid://6985761399",
    ["consumable"] = {
        ["consumeTime"] = 0.8
    },
    ["skins"] = { v21.PIE_SPIRIT, v21.PIE_VALENTINE }
}
v_u_96[v545] = v546
local v547 = v_u_58.ZIPLINE
local v548 = {
    ["displayName"] = "Zipline Launcher",
    ["image"] = "rbxassetid://7051148904"
}
local v549 = {
    ["projectileType"] = function()
        return "zipline"
    end,
    ["ammoItemTypes"] = { v_u_58.ZIPLINE },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    }
}
v548.projectileSource = v549
v_u_96[v547] = v548
local v550 = v_u_58.ZIPLINE_BASE
local v551 = {
    ["displayName"] = "Zipline Base",
    ["image"] = "rbxassetid://7051148904"
}
local v552 = {
    ["breakType"] = v2.WOOD,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["blastProof"] = true,
    ["seeThrough"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 20,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8017
        }
    }
}
v551.block = v552
v_u_96[v550] = v551
v_u_96[v_u_58.GUITAR] = {
    ["displayName"] = "Guitar",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7085044606",
    ["cooldownId"] = v19.MELODY,
    ["skins"] = { v21.GUITAR_ROCKSTAR, v21.GUITAR_HOLIDAY_COZY, v21.GUITAR_SIREN }
}
local v553 = v_u_58.CANNON
local v554 = {
    ["displayName"] = "Cannon",
    ["image"] = "rbxassetid://7121221753"
}
local v555 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["seeThrough"] = true,
    ["health"] = 8,
    ["collectionServiceTags"] = { "cannon" },
    ["disableInventoryPickup"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8018
        }
    }
}
v554.block = v555
v554.skins = {
    v21.CANNON_GHOST,
    v21.GOLD_VICTORIOUS_CANNON,
    v21.PLATINUM_VICTORIOUS_CANNON,
    v21.DIAMOND_VICTORIOUS_CANNON,
    v21.EMERALD_VICTORIOUS_CANNON,
    v21.NIGHTMARE_VICTORIOUS_CANNON,
    v21.CANNON_DEEPSEA
}
v_u_96[v553] = v554
local v556 = v_u_58.MANUAL_CANNON
local v557 = {
    ["displayName"] = "Manual Cannon",
    ["description"] = "Shoots a single TNT at a time",
    ["image"] = "rbxassetid://10717427560"
}
local v558 = {
    ["breakType"] = v2.STONE,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12011
        }
    },
    ["health"] = 50,
    ["collectionServiceTags"] = { "cannon-type" },
    ["unbreakableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["noSuffocation"] = true,
    ["denyPlaceOn"] = true
}
v557.block = v558
v_u_96[v556] = v557
local v559 = v_u_58.AUTO_CANNON
local v560 = {
    ["displayName"] = "Auto Cannon",
    ["description"] = "Automatically fires TNT on an interval",
    ["image"] = "rbxassetid://10717427845"
}
local v561 = {
    ["breakType"] = v2.STONE,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12012
        }
    },
    ["health"] = 100,
    ["collectionServiceTags"] = { "cannon-type" },
    ["unbreakableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["noSuffocation"] = true,
    ["denyPlaceOn"] = true
}
v560.block = v561
v_u_96[v559] = v560
local v562 = v_u_58.SPREAD_CANNON
local v563 = {
    ["displayName"] = "Spread Cannon",
    ["image"] = "rbxassetid://10717427375",
    ["description"] = "Rapidly fires three TNT at a time"
}
local v564 = {
    ["breakType"] = v2.STONE,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12013
        }
    },
    ["health"] = 150,
    ["collectionServiceTags"] = { "cannon-type" },
    ["unbreakableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["noSuffocation"] = true,
    ["denyPlaceOn"] = true
}
v563.block = v564
v_u_96[v562] = v563
local v565 = v_u_58.PARTY_CANNON
local v566 = {
    ["displayName"] = "Firework Cannon",
    ["image"] = "rbxassetid://11967427804",
    ["description"] = "Now it\'s really a party."
}
local v567 = {
    ["breakType"] = v2.STONE,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12018
        }
    },
    ["health"] = 300,
    ["collectionServiceTags"] = { "cannon-type" },
    ["unbreakableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["noSuffocation"] = true,
    ["denyPlaceOn"] = true
}
v566.block = v567
v_u_96[v565] = v566
local v568 = v_u_58.BALLISTA
local v569 = {
    ["displayName"] = "Ballista",
    ["image"] = "rbxassetid://17858940835"
}
local v570 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["seeThrough"] = true,
    ["health"] = 8,
    ["collectionServiceTags"] = { "Ballista" },
    ["disableInventoryPickup"] = false
}
local v571 = {
    ["projectileType"] = function()
        return "ballista_projectile"
    end,
    ["fireDelaySec"] = 1.8,
    ["launchSound"] = {
        v_u_48.BALLISTA_FIRE_1,
        v_u_48.BALLISTA_FIRE_2,
        v_u_48.BALLISTA_FIRE_3,
        v_u_48.BALLISTA_FIRE_4
    },
    ["relativeOverride"] = {
        ["relX"] = 0,
        ["relY"] = 0,
        ["relZ"] = 0
    }
}
v570.projectileSource = v571
v570.noSuffocation = true
v569.block = v570
v_u_96[v568] = v569
v_u_96[v_u_58.BALLISTA_AMMO] = {
    ["displayName"] = "Explosive Arrow",
    ["description"] = "Explosive ballista ammunition to smash through enemy defenses",
    ["image"] = "rbxassetid://17858940500",
    ["hotbarFillRight"] = true
}
local v572 = v_u_58.EXCALIBUR
local v573 = {
    ["displayName"] = "Excalibur",
    ["image"] = "",
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["hitSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
        end,
        ["seeThrough"] = true,
        ["health"] = 8,
        ["collectionServiceTags"] = { "Excalibur" },
        ["disableInventoryPickup"] = true,
        ["noSuffocation"] = true,
        ["unbreakable"] = true
    }
}
v_u_96[v572] = v573
local v574 = v_u_58.BALLOON
local v575 = {
    ["displayName"] = "Balloon",
    ["description"] = "Use up to three times to gain slowfall and jump boost.",
    ["image"] = "rbxassetid://7122143895",
    ["cooldownId"] = v19.BALLOON,
    ["maxStackSize"] = {
        ["amount"] = 5,
        ["shouldDropExtras"] = false
    },
    ["balloon"] = true
}
v_u_96[v574] = v575
local v576 = v_u_58.ANNIVERSARY_BALLOON
local v577 = {
    ["displayName"] = "Balloon",
    ["description"] = "Use up to three times to gain slowfall and jump boost.",
    ["image"] = v36.ANNIVERSARY_BALLOON_LOBBY_GADGET,
    ["cooldownId"] = v19.BALLOON,
    ["maxStackSize"] = {
        ["amount"] = 3
    },
    ["balloon"] = true
}
v_u_96[v576] = v577
local v578 = v_u_58.LASSO
local v579 = {
    ["displayName"] = "Lasso",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7192710930"
}
local v580 = {
    ["projectileType"] = function()
        return "lasso"
    end,
    ["fireDelaySec"] = 8,
    ["maxStrengthChargeSec"] = 0.5,
    ["minStrengthScalar"] = 0.5,
    ["walkSpeedMultiplier"] = 0.25,
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_LASSO_CHARGE,
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v579.projectileSource = v580
v579.skins = { v21.LASSO_MUMMY, v21.LASSO_WRANGLER_REINDEER_LASSY, v21.LASSO_LIFEGUARD }
v_u_96[v578] = v579
local v581 = v_u_58.WIZARD_STAFF
local v582 = {
    ["displayName"] = "Wizard Staff I",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://13397121945"
}
local v583 = {}
local v584 = {
    ["projectileType"] = function()
        return "electric_orb"
    end,
    ["fireDelaySec"] = 1,
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.WIZARD_BALL_CAST
    },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["cooldownId"] = v19.WIZARD_STAFF
}
v583.electric_orb = v584
local v585 = {
    ["projectileType"] = function()
        return "lightning_strike"
    end,
    ["fireDelaySec"] = 1,
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.WIZARD_LIGHTNING_CAST
    },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["cooldownId"] = v19.WIZARD_STAFF
}
v583.lightning_strike = v585
v582.multiProjectileSource = v583
v582.skins = {
    v21.WIZARD_STAFF_ANNIVERSARY,
    v21.GOLD_VICTORIOUS_WIZARD_STAFF,
    v21.PLATINUM_VICTORIOUS_WIZARD_STAFF,
    v21.DIAMOND_VICTORIOUS_WIZARD_STAFF,
    v21.EMERALD_VICTORIOUS_WIZARD_STAFF,
    v21.NIGHTMARE_VICTORIOUS_WIZARD_STAFF
}
v_u_96[v581] = v582
local v586 = v_u_58.WIZARD_STAFF_2
local v587 = {
    ["displayName"] = "Wizard Staff II",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://13397121643"
}
local v588 = {}
local v589 = {
    ["projectileType"] = function()
        return "electric_orb"
    end,
    ["fireDelaySec"] = 1,
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.WIZARD_BALL_CAST
    },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["cooldownId"] = v19.WIZARD_STAFF
}
v588.electric_orb = v589
local v590 = {
    ["projectileType"] = function()
        return "lightning_strike"
    end,
    ["fireDelaySec"] = 1,
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.WIZARD_LIGHTNING_CAST
    },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["cooldownId"] = v19.WIZARD_STAFF
}
v588.lightning_strike = v590
v587.multiProjectileSource = v588
v587.replaces = { v_u_58.WIZARD_STAFF }
v587.skins = {
    v21.WIZARD_STAFF_2_ANNIVERSARY,
    v21.GOLD_VICTORIOUS_WIZARD_STAFF_2,
    v21.PLATINUM_VICTORIOUS_WIZARD_STAFF_2,
    v21.DIAMOND_VICTORIOUS_WIZARD_STAFF_2,
    v21.EMERALD_VICTORIOUS_WIZARD_STAFF_2,
    v21.NIGHTMARE_VICTORIOUS_WIZARD_STAFF_2
}
v_u_96[v586] = v587
local v591 = v_u_58.WIZARD_STAFF_3
local v592 = {
    ["displayName"] = "Wizard Staff III",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://13397121485"
}
local v593 = {}
local v594 = {
    ["projectileType"] = function()
        return "electric_orb"
    end,
    ["fireDelaySec"] = 1,
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.WIZARD_BALL_CAST
    },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["cooldownId"] = v19.WIZARD_STAFF
}
v593.electric_orb = v594
local v595 = {
    ["projectileType"] = function()
        return "lightning_strike"
    end,
    ["fireDelaySec"] = 1,
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.WIZARD_LIGHTNING_CAST
    },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["cooldownId"] = v19.WIZARD_STAFF
}
v593.lightning_strike = v595
v592.multiProjectileSource = v593
v592.replaces = { v_u_58.WIZARD_STAFF, v_u_58.WIZARD_STAFF_2 }
v592.skins = {
    v21.WIZARD_STAFF_3_ANNIVERSARY,
    v21.GOLD_VICTORIOUS_WIZARD_STAFF_3,
    v21.PLATINUM_VICTORIOUS_WIZARD_STAFF_3,
    v21.DIAMOND_VICTORIOUS_WIZARD_STAFF_3,
    v21.EMERALD_VICTORIOUS_WIZARD_STAFF_3,
    v21.NIGHTMARE_VICTORIOUS_WIZARD_STAFF_3
}
v_u_96[v591] = v592
v_u_96[v_u_58.TABLET] = {
    ["displayName"] = "Tablet",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7290617886",
    ["skins"] = {
        v21.TABLET_LUNAR,
        v21.TABLET_VAMPIRE,
        v21.TABLET_CREAM_SODA,
        v21.TABLET_STARRYSOLDIER
    }
}
local v596 = v_u_58.CAMERA_TURRET
local v597 = {
    ["displayName"] = "Camera Turret",
    ["image"] = "rbxassetid://7290567966",
    ["sharingDisabled"] = true
}
local v598 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["seeThrough"] = true,
    ["health"] = 50,
    ["disableInventoryPickup"] = true,
    ["unbreakableByTeammates"] = true,
    ["collectionServiceTags"] = { "Turret", v18.VULCAN_TURRET },
    ["blastResistance"] = 2.915
}
local v599 = {
    ["projectileType"] = function()
        return "turretBullet"
    end,
    ["fireDelaySec"] = 0.2,
    ["launchSound"] = { v_u_48.TURRET_SHOOT },
    ["relativeOverride"] = {
        ["relX"] = 0,
        ["relY"] = 0,
        ["relZ"] = 0
    }
}
v598.projectileSource = v599
v598.minecraftConversions = {
    {
        ["blockId"] = 8019
    }
}
v597.block = v598
v597.skins = {
    v21.CAMERA_TURRET_LUNAR,
    v21.CAMERA_TURRET_VAMPIRE,
    v21.CAMERA_TURRET_CREAM_SODA,
    v21.CAMERA_TURRET_STARRYSOLDIER
}
v_u_96[v596] = v597
v_u_96[v_u_58.FLAMETHROWER] = {
    ["displayName"] = "Flamethrower",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7343272403",
    ["cooldownId"] = v19.FLAMETHROWER_USE
}
v_u_96[v_u_58.EMBER] = {
    ["displayName"] = "Ember",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7343272545",
    ["keepOnDeath"] = true
}
v_u_96[v_u_58.FROST_CRYSTAL] = {
    ["displayName"] = "Frost Crystal",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://11847445215",
    ["skins"] = { v21.VOID_ADETUNDE_CRYSTAL }
}
v_u_96[v_u_58.RAVEN] = {
    ["displayName"] = "Raven",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7343272003"
}
v_u_96[v_u_58.BEE_NET] = {
    ["displayName"] = "Bee Net",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7343519004"
}
v_u_96[v_u_58.BEE] = {
    ["displayName"] = "Bee",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7343272839"
}
local v600 = v_u_58.BEEHIVE
local v601 = {
    ["displayName"] = "Beehive",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7343272692"
}
local v602 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["unbreakableByTeammates"] = true,
    ["disableEnemyInventoryPickup"] = true,
    ["collectionServiceTags"] = { "beehive" },
    ["seeThrough"] = true,
    ["health"] = 25,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8020
        }
    },
    ["maxPlaced"] = 5
}
v601.block = v602
v_u_96[v600] = v601
local v603 = v_u_58.BREWING_CAULDRON
local v604 = {
    ["displayName"] = "Brewing Cauldron",
    ["image"] = "rbxassetid://9134530108"
}
local v605 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["unbreakableByTeammates"] = true,
    ["collectionServiceTags"] = { "brewing_cauldron" },
    ["seeThrough"] = true,
    ["health"] = 25,
    ["disableInventoryPickup"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8021
        }
    }
}
v604.block = v605
v604.sharingDisabled = true
v604.crafting = {
    ["recipes"] = {
        v45(v_u_58.SLEEP_SPLASH_POTION),
        v45(v_u_58.BIG_SHIELD),
        v45(v_u_58.POISON_SPLASH_POTION),
        v45(v_u_58.HEAL_SPLASH_POTION)
    }
}
v_u_96[v603] = v604
local v606 = {
    ["displayName"] = "Jade Hammer",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7343272236",
    ["firstPerson"] = {
        ["verticalOffset"] = -1.2
    }
}
v_u_96[v_u_58.JADE_HAMMER] = v606
local v607 = v_u_58.WARRIOR_HELMET
local v608 = {
    ["displayName"] = "Warrior Helmet",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 0.24
    },
    ["image"] = "rbxassetid://7343992908"
}
v_u_96[v607] = v608
local v609 = v_u_58.WARRIOR_CHESTPLATE
local v610 = {
    ["displayName"] = "Warrior Chestplate",
    ["image"] = "rbxassetid://7343992770",
    ["armor"] = {
        ["slot"] = v37.CHESTPLATE,
        ["damageReductionMultiplier"] = 0.36
    }
}
v_u_96[v609] = v610
local v611 = v_u_58.WARRIOR_BOOTS
local v612 = {
    ["displayName"] = "Warrior Boots",
    ["armor"] = {
        ["slot"] = v37.BOOTS,
        ["damageReductionMultiplier"] = 0.2
    },
    ["image"] = "rbxassetid://7343993019"
}
v_u_96[v611] = v612
local v613 = v_u_58.BAGUETTE
local v614 = {
    ["displayName"] = "Knockback Baguette",
    ["image"] = "rbxassetid://7392211056"
}
local v615 = {
    ["damage"] = 1,
    ["attackSpeed"] = 0.4,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 1.5,
        ["vertical"] = 1.2
    },
    ["swingSounds"] = { v_u_48.BAGUETTE_SWING }
}
v614.sword = v615
v614.firstPerson = {
    ["scale"] = 0.8
}
v_u_96[v613] = v614
local v616 = v_u_58.SPIRIT
local v617 = {
    ["displayName"] = "Spirit",
    ["image"] = "rbxassetid://7498308261",
    ["maxStackSize"] = {
        ["amount"] = 8
    },
    ["sharingDisabled"] = true,
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "deploy_spirit"
        end,
        ["ammoItemTypes"] = { v_u_58.SPIRIT },
        ["fireDelaySec"] = 0.6,
        ["maxStrengthChargeSec"] = 1.5,
        ["minStrengthScalar"] = 0.2,
        ["launchSound"] = { v_u_48.TELEPEARL_THROW }
    }
}
v_u_96[v616] = v617
local v618 = v_u_58.TESLA_TRAP
local v619 = {
    ["displayName"] = "Tesla Coil Trap",
    ["image"] = "rbxassetid://7498163110"
}
local v620 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["collectionServiceTags"] = { "tesla-trap" },
    ["seeThrough"] = true,
    ["health"] = 18,
    ["disableInventoryPickup"] = true,
    ["maxPlaced"] = 1,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8022
        }
    }
}
v619.block = v620
v_u_96[v618] = v619
local v621 = v_u_58.CHARGE_SHIELD
local v622 = {
    ["displayName"] = "Charge Shield",
    ["image"] = "rbxassetid://7745351893",
    ["firstPerson"] = {
        ["scale"] = 0.8
    },
    ["cooldownId"] = v19.CHARGE_SHIELD
}
v_u_96[v621] = v622
local v623 = v_u_58.ROCKET_LAUNCHER
local v624 = {
    ["displayName"] = "Rocket Launcher",
    ["image"] = "rbxassetid://7680994780",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "rocket_launcher_missile"
        end,
        ["ammoItemTypes"] = { v_u_58.ROCKET_LAUNCHER_MISSILE },
        ["fireDelaySec"] = 2.2,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.ROCKET_LAUNCHER_FIRE },
        ["activeReload"] = true
    }
}
v_u_96[v623] = v624
v_u_96[v_u_58.ROCKET_LAUNCHER_MISSILE] = {
    ["displayName"] = "Rocket",
    ["image"] = "rbxassetid://7682148316",
    ["hotbarFillRight"] = true
}
local v625 = v_u_58.GRENADE_LAUNCHER
local v626 = {
    ["displayName"] = "Rocket Launcher",
    ["image"] = "rbxassetid://10086864148"
}
local v627 = {
    ["projectileType"] = function()
        return "stun_grenade"
    end,
    ["ammoItemTypes"] = { v_u_58.STUN_GRENADE },
    ["launchSound"] = { v_u_48.CARROT_LAUNCHER_FIRE },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.ROCKET_LAUNCHER_SHOT,
        ["aimAnimation"] = v_u_7.ROCKET_LAUNCHER_IDLE
    },
    ["fireDelaySec"] = 2.2,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["activeReload"] = true
}
v626.projectileSource = v627
v_u_96[v625] = v626
v_u_96[v_u_58.STUN_GRENADE] = {
    ["displayName"] = "Stun Grenade",
    ["image"] = "rbxassetid://10086863810",
    ["hotbarFillRight"] = true
}
local v628 = v_u_58.TORNADO_LAUNCHER
local v629 = {
    ["displayName"] = "Tornado Launcher",
    ["description"] = "Launch a mini tornado that deals damage & launches up any players caught in its path.",
    ["image"] = "rbxassetid://9193792144"
}
local v630 = {
    ["projectileType"] = function()
        return "tornado_missile"
    end,
    ["fireDelaySec"] = 3,
    ["launchSound"] = { v_u_48.TORNADO_LAUNCHER_SHOOT },
    ["activeReload"] = true,
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.TORNADO_LAUNCHER_SHOOT,
        ["aimAnimation"] = v_u_7.TORNADO_LAUNCHER_HOLD
    }
}
local v631 = {
    ["config"] = {
        ["magnitude"] = 0.07,
        ["duration"] = 0.15,
        ["cycles"] = 2
    }
}
v630.launchScreenShake = v631
v629.projectileSource = v630
v629.thirdPerson = {}
v_u_96[v628] = v629
local v632 = v_u_58.DRAGON_BREATH
local v633 = {
    ["displayName"] = "Dragon Breath",
    ["description"] = "Source of the void energy",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "dragon_breath"
        end,
        ["fireDelaySec"] = 3,
        ["launchSound"] = { v_u_48.TORNADO_LAUNCHER_SHOOT },
        ["activeReload"] = true
    }
}
v_u_96[v632] = v633
local v634 = v_u_58.PORTAL_GUN
local v635 = {
    ["displayName"] = "Portal Gun",
    ["description"] = "Create portal rifts that can be linked and traveled between.",
    ["image"] = "rbxassetid://9378655884"
}
local v636 = {
    ["projectileType"] = function()
        return "portal_projectile"
    end,
    ["fireDelaySec"] = 3,
    ["activeReload"] = true,
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.TORNADO_LAUNCHER_SHOOT,
        ["aimAnimation"] = v_u_7.TORNADO_LAUNCHER_HOLD
    }
}
v635.projectileSource = v636
v_u_96[v634] = v635
local v637 = v_u_58.IMPULSE_GRENADE
local v638 = {
    ["displayName"] = "Impulse Grenade",
    ["description"] = "Delayed explosive grenade that deals little damage but massive knockback.",
    ["image"] = "rbxassetid://7681106844",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "impulse_grenade"
        end,
        ["ammoItemTypes"] = { v_u_58.IMPULSE_GRENADE },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 1,
        ["minStrengthScalar"] = 0.3333333333333333,
        ["walkSpeedMultiplier"] = 0.4,
        ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
        ["firstPerson"] = {}
    }
}
v_u_96[v637] = v638
local v639 = v_u_58.SMOKE_GRENADE
local v640 = {
    ["displayName"] = "Smoke Grenade",
    ["description"] = "Creates a blast of smoke where it lands.",
    ["image"] = "rbxassetid://7681033200",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "smoke_grenade"
        end,
        ["ammoItemTypes"] = { v_u_58.SMOKE_GRENADE },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 1,
        ["minStrengthScalar"] = 0.3333333333333333,
        ["walkSpeedMultiplier"] = 0.4,
        ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
        ["firstPerson"] = {}
    }
}
v_u_96[v639] = v640
local v641 = v_u_58.HOT_POTATO
local v642 = {
    ["displayName"] = "Hot Potato",
    ["description"] = "Harmful potato that damages the player carrying it. Explodes when the holder dies.",
    ["image"] = "rbxassetid://11465631173",
    ["sharingDisabled"] = true,
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["removeFromCustoms"] = true
}
local v643 = {
    ["damage"] = 0,
    ["attackSpeed"] = 0.75,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 2,
        ["vertical"] = 1
    }
}
local v644 = {
    ["minChargeTimeSec"] = 0.5,
    ["maxChargeTimeSec"] = 1,
    ["walkSpeedModifier"] = {
        ["multiplier"] = 0.95,
        ["delay"] = 0.25
    },
    ["chargedSwingAnimations"] = { v_u_7.HEAVENLY_SWORD_SWING },
    ["firstPersonChargedSwingAnimations"] = { v_u_7.FP_HEAVENLY_SWORD_SWING }
}
v643.chargedAttack = v644
v642.sword = v643
local v646 = {
    ["projectileType"] = function(p645)
        return p645 and "hot_potato" or "hot_potato"
    end,
    ["ammoItemTypes"] = { v_u_58.HOT_POTATO },
    ["fireDelaySec"] = 1,
    ["maxStrengthChargeSec"] = 1,
    ["minStrengthScalar"] = 0.3333333333333333,
    ["walkSpeedMultiplier"] = 0.6,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.GRENADE_THROW
    }
}
v642.projectileSource = v646
v642.firstPerson = {
    ["scale"] = 0.8
}
v_u_96[v641] = v642
local v647 = v_u_58.SLEEP_SPLASH_POTION
local v648 = {
    ["displayName"] = "Sleep Splash Potion",
    ["description"] = "Places players hit by the potion in a sleep state until the effect wears off.",
    ["image"] = "rbxassetid://9134319146",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "sleep_splash_potion"
        end,
        ["ammoItemTypes"] = { v_u_58.SLEEP_SPLASH_POTION },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 1,
        ["minStrengthScalar"] = 0.3333333333333333,
        ["walkSpeedMultiplier"] = 0.7,
        ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
        ["firstPerson"] = {}
    },
    ["maxStackSize"] = {
        ["amount"] = 3
    }
}
v_u_96[v647] = v648
local v649 = v_u_58.POISON_SPLASH_POTION
local v650 = {
    ["displayName"] = "Poison Splash Potion",
    ["description"] = "Splash potion that deals damage over time to enemies in the splash area.",
    ["image"] = "rbxassetid://9135917252",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "poison_splash_potion"
        end,
        ["ammoItemTypes"] = { v_u_58.POISON_SPLASH_POTION },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 1,
        ["minStrengthScalar"] = 0.3333333333333333,
        ["walkSpeedMultiplier"] = 0.7,
        ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
        ["firstPerson"] = {}
    },
    ["maxStackSize"] = {
        ["amount"] = 2
    }
}
v_u_96[v649] = v650
local v651 = v_u_58.HEAL_SPLASH_POTION
local v652 = {
    ["displayName"] = "Heal Splash Potion",
    ["description"] = "Splash potion that heals anyone inside the splash area.",
    ["image"] = "rbxassetid://9135912233",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "heal_splash_potion"
        end,
        ["ammoItemTypes"] = { v_u_58.HEAL_SPLASH_POTION },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 1,
        ["minStrengthScalar"] = 0.3333333333333333,
        ["walkSpeedMultiplier"] = 0.7,
        ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
        ["firstPerson"] = {}
    },
    ["maxStackSize"] = {
        ["amount"] = 3
    }
}
v_u_96[v651] = v652
local v653 = v_u_58.KNOCKBACK_FISH
local v654 = {
    ["displayName"] = "Knockback Fish",
    ["description"] = "Deals massive knockback but minimal damage.",
    ["image"] = "rbxassetid://7976208326"
}
local v655 = {
    ["damage"] = 1,
    ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 2
    },
    ["swingSounds"] = { v_u_48.BAGUETTE_SWING }
}
v654.sword = v655
v654.firstPerson = {
    ["scale"] = 0.8
}
v_u_96[v653] = v654
local v656 = v_u_58.INVISIBILITY_POTION
local v657 = {
    ["displayName"] = "Invisiblity Potion",
    ["description"] = "Drink to gain the effects of invisibility.",
    ["image"] = "rbxassetid://7836794914"
}
local v658 = {
    ["consumeTime"] = 0.8,
    ["potion"] = true,
    ["statusEffect"] = {
        ["statusEffectType"] = v49.INVISIBILITY,
        ["duration"] = 30
    }
}
v657.consumable = v658
v657.crafting = {
    ["recipe"] = v46[v_u_58.INVISIBILITY_POTION]
}
v657.maxStackSize = {
    ["amount"] = 1
}
v_u_96[v656] = v657
local v659 = v_u_58.SERPENTS_TOUCH_POTION
local v660 = {
    ["displayName"] = "Serpent\'s Touch"
}
local v661 = v10.SERPENTS_TOUCH_POTION_DURATION
v660.description = "A deadly toxin that inflicts lingering pain on those struck by the user\226\128\153s weapon. (" .. tostring(v661) .. " seconds)"
v660.image = "rbxassetid://99777727368131"
local v662 = {
    ["consumeTime"] = 0.8,
    ["potion"] = true,
    ["statusEffect"] = {
        ["statusEffectType"] = v49.SERPENTS_TOUCH_POTION,
        ["duration"] = v10.SERPENTS_TOUCH_POTION_DURATION
    }
}
v660.consumable = v662
v660.maxStackSize = {
    ["amount"] = 1
}
v_u_96[v659] = v660
local v663 = v_u_58.FURY_POTION
local v664 = {
    ["displayName"] = "Fury Potion"
}
local v665 = v51.roundToDecimalPlaces(v10.FURY_POTION_ATTACK_SPEED_MULTIPLIER - 1, 1) * 100
local v666 = tostring(v665)
local v667 = v10.FURY_POTION_DURATION
v664.description = "A potent mixture that fills the user with uncontrollable rage and power.  Increases attack speed by " .. v666 .. " % for (" .. tostring(v667) .. " seconds)"
v664.image = "rbxassetid://122851344376912"
local v668 = {
    ["consumeTime"] = 0.8,
    ["potion"] = true,
    ["statusEffect"] = {
        ["statusEffectType"] = v49.FURY_POTION,
        ["duration"] = v10.FURY_POTION_DURATION
    }
}
v664.consumable = v668
v664.maxStackSize = {
    ["amount"] = 1
}
v_u_96[v663] = v664
local v669 = v_u_58.LARGE_ROCK
local v670 = {
    ["displayName"] = "Large Rock (Very)",
    ["image"] = "rbxassetid://7681398025",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "large_rock"
        end,
        ["ammoItemTypes"] = { v_u_58.LARGE_ROCK },
        ["fireDelaySec"] = 0.4,
        ["launchSound"] = { v_u_48.NEW_BOW_FIRE }
    }
}
v_u_96[v669] = v670
local v671 = v_u_58.THROWABLE_BRIDGE
local v672 = {
    ["displayName"] = "Portable Bridge",
    ["image"] = "rbxassetid://10866146253",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "throwable_bridge"
        end,
        ["ammoItemTypes"] = { v_u_58.THROWABLE_BRIDGE },
        ["fireDelaySec"] = 0.15,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692
    }
}
v_u_96[v671] = v672
local v673 = v_u_58.LUCKY_BLOCK
local v674 = {
    ["displayName"] = "Lucky Block"
}
local v675 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.LUCKY_BLOCK_BREAK)
    end,
    ["collectionServiceTags"] = { "LuckyBlock" },
    ["greedyMesh"] = {
        ["textures"] = {}
    }
}
local v676 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 1
        }
    }
}
v675.luckyBlock = v676
v675.blastProof = true
v675.disableInventoryPickup = true
v675.health = 15
v675.minecraftConversions = {
    {
        ["blockId"] = 9000
    }
}
v674.block = v675
v_u_96[v673] = v674
local v677 = v_u_58.PURPLE_LUCKY_BLOCK
local v678 = {
    ["displayName"] = "Purple Lucky Block"
}
local v679 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.LUCKY_BLOCK_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    }
}
local v680 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 4
        }
    },
    ["allowedRarity"] = { v43.RARE, v43.EPIC, v43.LEGENDARY },
    ["allowedPolarity"] = { v42.POSITIVE, v42.NEUTRAL }
}
v679.luckyBlock = v680
v679.blastProof = true
v679.disableInventoryPickup = true
v679.health = 30
v679.minecraftConversions = {
    {
        ["blockId"] = 9001
    }
}
v678.block = v679
v_u_96[v677] = v678
local v681 = v_u_58.LUCKY_BLOCK_TRAP
local v682 = {
    ["displayName"] = "Lucky Block Trap"
}
local v683 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastProof"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 15,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 9002
        }
    }
}
v682.block = v683
v_u_96[v681] = v682
local v684 = v_u_58.VACUUM
local v685 = {
    ["displayName"] = "Vacuum",
    ["description"] = "Used to capture a ghost. If a ghost is already caught, you can fire the ghost to deal damage.",
    ["image"] = "rbxassetid://7813758517",
    ["sharingDisabled"] = true
}
local v686 = {
    ["projectileType"] = function()
        return "ghost"
    end,
    ["fireDelaySec"] = 0.8,
    ["launchSound"] = { v_u_48.GHOST_VACUUM_SHOOT },
    ["cooldownBar"] = {
        ["colorGradient"] = ColorSequence.new(Color3.fromRGB(235, 95, 180))
    },
    ["cooldownId"] = v19.VACUUM_LAUNCH_GHOST
}
v685.projectileSource = v686
v_u_96[v684] = v685
local v687 = v_u_58.SWAP_BALL
local v688 = {
    ["displayName"] = "Swap Ball",
    ["description"] = "Hit players with the ball to swap positions with them.",
    ["image"] = "rbxassetid://7681107021"
}
local v689 = {
    ["projectileType"] = function()
        return "swap_ball"
    end,
    ["ammoItemTypes"] = { v_u_58.SWAP_BALL },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v688.projectileSource = v689
v_u_96[v687] = v688
local v690 = v_u_58.BANANA_PEEL
local v691 = {
    ["displayName"] = "Banana Peel",
    ["description"] = "Opponents that walk over the peel will ragdoll.",
    ["image"] = "rbxassetid://7681234378",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "banana_peel"
        end,
        ["ammoItemTypes"] = { v_u_58.BANANA_PEEL },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.SWORD_SWING_1 }
    }
}
v_u_96[v690] = v691
local v692 = v_u_58.JUMP_BOOTS
local v693 = {
    ["displayName"] = "Jump Boots",
    ["image"] = "rbxassetid://7911163797",
    ["armor"] = {
        ["slot"] = v37.BOOTS,
        ["damageReductionMultiplier"] = 0.08
    }
}
v_u_96[v692] = v693
local v694 = v_u_58.SPEED_BOOTS
local v695 = {
    ["displayName"] = "Speed Boots",
    ["image"] = "rbxassetid://7911163144",
    ["armor"] = {
        ["slot"] = v37.BOOTS,
        ["damageReductionMultiplier"] = 0.08
    }
}
v_u_96[v694] = v695
v_u_96[v_u_58.SHIELD_AXOLOTL] = {
    ["displayName"] = "Shield Axolotl",
    ["image"] = "rbxassetid://7863780357"
}
v_u_96[v_u_58.DAMAGE_AXOLOTL] = {
    ["displayName"] = "Damage Axolotl",
    ["image"] = "rbxassetid://7863780231"
}
v_u_96[v_u_58.BREAK_SPEED_AXOLOTL] = {
    ["displayName"] = "Break Speed Axolotl",
    ["image"] = "rbxassetid://7863779927"
}
v_u_96[v_u_58.HEALTH_REGEN_AXOLOTL] = {
    ["displayName"] = "Health Regen Axolotl",
    ["image"] = "rbxassetid://7863780097"
}
local v696 = v_u_58.SNAP_TRAP
local v697 = {
    ["displayName"] = "Snap Trap",
    ["image"] = "rbxassetid://7805515071"
}
local v698 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["seeThrough"] = true,
    ["health"] = 18,
    ["collectionServiceTags"] = { "snap_trap" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8001
        }
    },
    ["disableEnemyInventoryPickup"] = true
}
v697.block = v698
v_u_96[v696] = v697
local v699 = v_u_58.TELEPORT_BLOCK
local v700 = {
    ["displayName"] = "Teleport Block",
    ["image"] = "rbxassetid://9369048721"
}
local v701 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["seeThrough"] = true,
    ["health"] = 8,
    ["collectionServiceTags"] = { "teleport_block" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8002
        }
    }
}
v700.block = v701
v_u_96[v699] = v700
local v702 = {
    ["displayName"] = "Jump Potion",
    ["image"] = "rbxassetid://7836794681",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["potion"] = true
    },
    ["maxStackSize"] = {
        ["amount"] = 2
    }
}
v_u_96[v_u_58.JUMP_POTION] = v702
local v703 = v_u_58.SPEED_POTION
local v704 = {
    ["displayName"] = "Speed Potion",
    ["image"] = "rbxassetid://7836794566",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["potion"] = true
    },
    ["crafting"] = {
        ["recipe"] = v46[v_u_58.SPEED_POTION]
    },
    ["maxStackSize"] = {
        ["amount"] = 2
    }
}
v_u_96[v703] = v704
local v705 = v_u_58.FISHING_ROD
local v706 = {
    ["displayName"] = "Fishing Rod",
    ["image"] = "rbxassetid://7807308581",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "fisherman_bobber"
        end,
        ["fireDelaySec"] = 0,
        ["launchSound"] = { v_u_48.FISHING_ROD_CAST }
    },
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["verticalOffset"] = -1
    }
}
v_u_96[v705] = v706
local v707 = {
    ["displayName"] = "Mini Shield",
    ["image"] = "rbxassetid://7863380185",
    ["consumable"] = {
        ["consumeTime"] = 0.8
    },
    ["maxStackSize"] = {
        ["amount"] = 3
    }
}
v_u_96[v_u_58.MINI_SHIELD] = v707
local v708 = {
    ["displayName"] = "Big Shield",
    ["image"] = "rbxassetid://7863380423",
    ["consumable"] = {
        ["consumeTime"] = 1.8
    },
    ["maxStackSize"] = {
        ["amount"] = 3
    }
}
v_u_96[v_u_58.BIG_SHIELD] = v708
local v709 = v_u_58.SPEAR
local v710 = {
    ["displayName"] = "Spear",
    ["image"] = "rbxassetid://7808151805",
    ["maxStackSize"] = {
        ["amount"] = 10
    },
    ["sharingDisabled"] = true,
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "spear"
        end,
        ["ammoItemTypes"] = { v_u_58.SPEAR },
        ["fireDelaySec"] = 0.7,
        ["maxStrengthChargeSec"] = 0.25,
        ["walkSpeedMultiplier"] = 0.2,
        ["minStrengthScalar"] = 0.7692307692307692
    }
}
v_u_96[v709] = v710
local v711 = {
    ["displayName"] = "Feather",
    ["image"] = "rbxassetid://127232846136294",
    ["sword"] = {
        ["damage"] = 30,
        ["swingAnimations"] = {},
        ["attackSpeed"] = 0.4,
        ["attackRange"] = 24
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.WHISPER_FEATHER] = v711
local v712 = {
    ["displayName"] = "Guitar",
    ["image"] = "rbxassetid://7085044606",
    ["sword"] = {
        ["damage"] = 40,
        ["swingAnimations"] = {},
        ["attackSpeed"] = 0.9,
        ["attackRange"] = 21,
        ["applyCooldownOnMiss"] = true,
        ["respectAttackSpeedForEffects"] = true
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.SUPER_GUITAR] = v712
local v713 = v_u_58.OIL_CONSUMABLE
local v714 = {
    ["displayName"] = "Oil Blob",
    ["image"] = "rbxassetid://7808151981",
    ["sharingDisabled"] = true,
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "oil_projectile"
        end,
        ["ammoItemTypes"] = { v_u_58.OIL_CONSUMABLE },
        ["fireDelaySec"] = 1.5,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.25,
        ["walkSpeedMultiplier"] = 0.5
    }
}
v_u_96[v713] = v714
local v715 = v_u_58.STOPWATCH
local v716 = {
    ["displayName"] = "Stopwatch",
    ["image"] = "rbxassetid://7871761250",
    ["consumable"] = {
        ["soundOverride"] = "None",
        ["disableAnimation"] = true,
        ["consumeTime"] = 1.5
    },
    ["cooldownId"] = v19.STOPWATCH
}
v_u_96[v715] = v716
local v717 = v_u_58.GIANT_POTION
local v718 = {
    ["displayName"] = "Giant Potion",
    ["image"] = "rbxassetid://7911163626",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["potion"] = true
    },
    ["crafting"] = {
        ["recipe"] = v46[v_u_58.GIANT_POTION]
    }
}
v_u_96[v717] = v718
local v719 = v_u_58.SHRINK_POTION
local v720 = {
    ["displayName"] = "Shrink Potion",
    ["image"] = "rbxassetid://7911163448",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["potion"] = true
    },
    ["crafting"] = {
        ["recipe"] = v46[v_u_58.SHRINK_POTION]
    }
}
v_u_96[v719] = v720
local v721 = v_u_58.SNOWBALL
local v722 = {
    ["displayName"] = "Snowball",
    ["image"] = "rbxassetid://7911163294",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "snowball"
        end,
        ["ammoItemTypes"] = { v_u_58.SNOWBALL },
        ["fireDelaySec"] = 0.22,
        ["launchSound"] = { v_u_48.SNOWBALL_THROW },
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692
    },
    ["maxStackSize"] = {
        ["amount"] = 80
    }
}
v_u_96[v721] = v722
local v723 = v_u_58.BASEBALL_BAT
local v724 = {
    ["displayName"] = "Baseball Bat"
}
local v725 = {
    ["damage"] = 100,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 5
    },
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["attackSpeed"] = 6,
    ["swingSounds"] = {}
}
v724.sword = v725
v_u_96[v723] = v724
local v726 = v_u_58.FAKE_BED
local v727 = {
    ["displayName"] = "Fake Bed",
    ["image"] = "rbxassetid://7911164143"
}
local v728 = {
    ["breakType"] = v2.WOOD,
    ["blastProof"] = true,
    ["seeThrough"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 18,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8023
        }
    }
}
v727.block = v728
v_u_96[v726] = v727
local v729 = v_u_58.TASER
local v730 = {
    ["displayName"] = "Taser",
    ["image"] = "rbxassetid://7911162966"
}
local v731 = {
    ["damage"] = 1,
    ["attackSpeed"] = 6,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 0,
        ["vertical"] = 0
    },
    ["swingSounds"] = {},
    ["swingAnimations"] = { v_u_7.PUNCH }
}
v730.sword = v731
v_u_96[v729] = v730
local v732 = v_u_58.BIG_WOOD_SWORD
local v733 = {
    ["displayName"] = "Big Wood Sword",
    ["image"] = "rbxassetid://6875480974"
}
local v734 = {
    ["damage"] = 20,
    ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
    ["knockbackMultiplier"] = {
        ["vertical"] = 2
    }
}
v733.sword = v734
v733.firstPerson = {}
v_u_96[v732] = v733
local v735 = v_u_58.BLACKHOLE_BOMB
local v736 = {
    ["displayName"] = "Blackhole",
    ["image"] = "rbxassetid://7976208473",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "blackhole_bomb"
        end,
        ["ammoItemTypes"] = { v_u_58.BLACKHOLE_BOMB },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.SWORD_SWING_1 }
    }
}
v_u_96[v735] = v736
local v737 = v_u_58.POPUP_CUBE
local v738 = {
    ["image"] = "rbxassetid://7976208116",
    ["displayName"] = "Popup Tower",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "popup_cube"
        end,
        ["ammoItemTypes"] = { v_u_58.POPUP_CUBE },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.SWORD_SWING_1 }
    }
}
v_u_96[v737] = v738
local v739 = v_u_58.ROBBERY_BALL
local v740 = {
    ["displayName"] = "Robbery Ball",
    ["image"] = "rbxassetid://7977038485"
}
local v741 = {
    ["projectileType"] = function()
        return "robbery_ball"
    end,
    ["ammoItemTypes"] = { v_u_58.ROBBERY_BALL },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v740.projectileSource = v741
v_u_96[v739] = v740
local v742 = v_u_58.GUIDED_MISSILE
local v743 = {
    ["displayName"] = "Guided Missile",
    ["image"] = "rbxassetid://8042313266",
    ["guidedProjectileSource"] = {
        ["consumeItem"] = v_u_58.GUIDED_MISSILE,
        ["guidedProjectile"] = "guided_missile"
    },
    ["firstPerson"] = {
        ["scale"] = 0.7
    }
}
v_u_96[v742] = v743
local v744 = v_u_58.CHEST
local v745 = {
    ["displayName"] = "Chest",
    ["image"] = "rbxassetid://8562772907",
    ["footstepSound"] = v47.WOOD
}
local v746 = {
    ["blastProof"] = true,
    ["breakType"] = v2.WOOD,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 54
        },
        {
            ["blockId"] = 146
        }
    },
    ["health"] = 30,
    ["collectionServiceTags"] = { "chest" },
    ["seeThrough"] = true
}
v745.block = v746
v_u_96[v744] = v745
local v747 = v_u_58.PERSONAL_CHEST
local v748 = {
    ["displayName"] = "Personal Chest",
    ["image"] = "rbxassetid://8164577594",
    ["footstepSound"] = v47.WOOD
}
local v749 = {
    ["blastProof"] = true,
    ["breakType"] = v2.WOOD,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 130
        }
    },
    ["health"] = 30,
    ["collectionServiceTags"] = { "chest", "personal-chest" },
    ["seeThrough"] = true
}
v748.block = v749
v_u_96[v747] = v748
local v750 = v_u_58.OG_PERSONAL_CHEST
local v751 = {
    ["displayName"] = "Personal Chest",
    ["image"] = "rbxassetid://8164577594",
    ["footstepSound"] = v47.WOOD
}
local v752 = {
    ["blastProof"] = true,
    ["breakType"] = v2.WOOD,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 130
        }
    },
    ["health"] = 30,
    ["collectionServiceTags"] = { "chest", "personal-chest" },
    ["seeThrough"] = true
}
v751.block = v752
v_u_96[v750] = v751
local v753 = v_u_58.LUCKY_BLOCK_ITEM_SMELTER
local v754 = {
    ["displayName"] = "Smelter",
    ["image"] = "rbxassetid://8562772907",
    ["footstepSound"] = v47.WOOD,
    ["block"] = {
        ["blastProof"] = true,
        ["breakType"] = v2.WOOD,
        ["health"] = 30,
        ["collectionServiceTags"] = { "chest" },
        ["seeThrough"] = true
    }
}
v_u_96[v753] = v754
local v755 = v_u_58.SQUAD_LAUNCHER
local v756 = {
    ["displayName"] = "Squad Launcher",
    ["image"] = "",
    ["footstepSound"] = v47.WOOD,
    ["block"] = {
        ["blastProof"] = true,
        ["breakType"] = v2.WOOD,
        ["health"] = 30,
        ["collectionServiceTags"] = { "squad-launcher" },
        ["seeThrough"] = true,
        ["noSuffocation"] = true
    }
}
v_u_96[v755] = v756
local v757 = {
    ["displayName"] = "Hang Glider",
    ["image"] = "rbxassetid://8216181054",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["firstPerson"] = {
        ["scale"] = 0.7
    }
}
v_u_96[v_u_58.HANG_GLIDER] = v757
local v758 = v_u_58.ENCHANT_TABLE_GLITCHED
local v759 = {
    ["displayName"] = "Glitched Enchant Table"
}
local v760 = {
    ["blastProof"] = true,
    ["breakType"] = v2.WOOD,
    ["health"] = 20,
    ["collectionServiceTags"] = { "enchant-table" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8004,
            ["blockData"] = 2
        }
    }
}
v759.block = v760
v_u_96[v758] = v759
local v761 = v_u_58.ENCHANT_TABLE
local v762 = {
    ["displayName"] = "Enchant Table",
    ["image"] = v36.ENCHANTING_TABLE
}
local v763 = {
    ["blastProof"] = true,
    ["breakType"] = v2.WOOD,
    ["health"] = 20,
    ["collectionServiceTags"] = { "enchant-table" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8004
        }
    }
}
v762.block = v763
v_u_96[v761] = v762
local v764 = v_u_58.SNAKE_FOUNTAIN
local v765 = {
    ["displayName"] = "Snake Shrine",
    ["block"] = {
        ["isImportantBlock"] = true,
        ["blastProof"] = true,
        ["breakType"] = v2.WOOD,
        ["health"] = 20,
        ["collectionServiceTags"] = { "SnakeShrine" }
    }
}
v_u_96[v764] = v765
local v766 = v_u_58.BROKEN_ENCHANT_TABLE
local v767 = {
    ["displayName"] = "Broken Enchant Table"
}
local v768 = {
    ["blastProof"] = true,
    ["breakType"] = v2.WOOD,
    ["health"] = 20,
    ["collectionServiceTags"] = { "broken-enchant-table" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8004,
            ["blockData"] = 1
        }
    }
}
v767.block = v768
v_u_96[v766] = v767
local v769 = v_u_58.GUMDROP_BOUNCE_PAD
local v770 = {
    ["displayName"] = "Gumdrop Bounce Pad",
    ["sharingDisabled"] = true
}
local v771 = {
    ["breakType"] = v2.WOOL,
    ["health"] = 2,
    ["collectionServiceTags"] = { "launch-pad" },
    ["seeThrough"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8005
        }
    },
    ["disableEnemyInventoryPickup"] = true
}
v770.block = v771
v770.image = "rbxassetid://8270466544"
v_u_96[v769] = v770
local v772 = v_u_58.JUMP_PAD
local v773 = {
    ["displayName"] = "Jump Pad"
}
local v774 = {
    ["breakType"] = v2.WOOL,
    ["health"] = 2,
    ["collectionServiceTags"] = { "launch-pad" },
    ["seeThrough"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 100005
        }
    },
    ["disableEnemyInventoryPickup"] = true
}
v773.block = v774
v773.image = "rbxassetid://9414655737"
v_u_96[v772] = v773
local v775 = v_u_58.SANTA_BOMB
local v776 = {
    ["displayName"] = "Santa Strafe",
    ["description"] = "Throw to mark a location to drop 3 TNT bombs.",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "santa_bomb"
        end,
        ["ammoItemTypes"] = { v_u_58.SANTA_BOMB },
        ["fireDelaySec"] = 0.2,
        ["maxStrengthChargeSec"] = 1,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["walkSpeedMultiplier"] = 0.4,
        ["launchSound"] = { v_u_48.TELEPEARL_THROW }
    },
    ["maxStackSize"] = {
        ["amount"] = 3
    },
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://8273495195"
}
v_u_96[v775] = v776
local v777 = v_u_58.SANTA_BOMB_SIEGE
local v778 = {
    ["displayName"] = "Santa Siege",
    ["description"] = "Throw to mark a location to drop a Siege TNT bomb.",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "santa_bomb_siege"
        end,
        ["ammoItemTypes"] = { v_u_58.SANTA_BOMB_SIEGE },
        ["fireDelaySec"] = 0.2,
        ["maxStrengthChargeSec"] = 1,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["walkSpeedMultiplier"] = 0.4,
        ["launchSound"] = { v_u_48.TELEPEARL_THROW }
    },
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://8273495195"
}
v_u_96[v777] = v778
local v779 = v_u_58.FROSTED_SNOWBALL
local v780 = {
    ["displayName"] = "Frosted Snowball",
    ["image"] = "rbxassetid://7911163294",
    ["sharingDisabled"] = true,
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "frosted_snowball"
        end,
        ["ammoItemTypes"] = { v_u_58.FROSTED_SNOWBALL },
        ["fireDelaySec"] = 0.3,
        ["launchSound"] = { v_u_48.SNOWBALL_THROW },
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692
    }
}
v_u_96[v779] = v780
local v781 = {
    ["displayName"] = "Void Axe",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://8322058718",
    ["firstPerson"] = {
        ["verticalOffset"] = -1.2
    }
}
v_u_96[v_u_58.VOID_AXE] = v781
local v782 = v_u_58.GOLDEN_BOW
local v784 = {
    ["displayName"] = "Golden Bow",
    ["projectileSource"] = {
        ["projectileType"] = function(p783)
            -- upvalues: (copy) v_u_58
            if p783 == v_u_58.IRON_ARROW then
                return "golden_arrow_iron"
            end
            local _ = p783 == v_u_58.ARROW
            return "golden_arrow"
        end,
        ["ammoItemTypes"] = { v_u_58.ARROW, v_u_58.IRON_ARROW },
        ["fireDelaySec"] = 0.3,
        ["maxStrengthChargeSec"] = 0.5,
        ["minStrengthScalar"] = 0.25,
        ["walkSpeedMultiplier"] = 0.25,
        ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
        ["chargeBeginSound"] = { v_u_48.BOW_DRAW }
    },
    ["image"] = "rbxassetid://8479270340"
}
v_u_96[v782] = v784
local v785 = v_u_58.THROWING_KNIFE
local v786 = {
    ["displayName"] = "Throwing Knife",
    ["image"] = "rbxassetid://8479269961",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "throwing_knife"
        end,
        ["ammoItemTypes"] = { v_u_58.THROWING_KNIFE },
        ["fireDelaySec"] = 0.8,
        ["maxStrengthChargeSec"] = 0.4,
        ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
        ["multiShot"] = true,
        ["multiShotCount"] = 3,
        ["multiShotDelay"] = 0.2
    }
}
v_u_96[v785] = v786
local v787 = v_u_58.SCYTHE
local v788 = {
    ["displayName"] = "Scythe",
    ["image"] = "rbxassetid://8479270510"
}
local v789 = {
    ["damage"] = 70,
    ["swingAnimations"] = { v_u_7.SCYTHE_SWING },
    ["idleAnimation"] = v_u_7.SCYTHE_IDLE,
    ["attackSpeed"] = 1,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 1.3,
        ["vertical"] = 2
    }
}
v788.sword = v789
v788.firstPerson = {
    ["scale"] = 0.8,
    ["verticalOffset"] = -1.2
}
v_u_96[v787] = v788
local v790 = {
    ["displayName"] = "Smoke Bomb",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://8532898334",
    ["consumable"] = {
        ["consumeTime"] = 0.5,
        ["cancelOnDamage"] = true
    },
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
v_u_96[v_u_58.SMOKE_BOMB] = v790
local v791 = v_u_58.SMOKE_BLOCK
local v792 = {
    ["displayName"] = "Smoke Block",
    ["sharingDisabled"] = true,
    ["footstepSound"] = v47.GRASS
}
local v793 = {
    ["breakType"] = v2.DIRT,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["greedyMesh"] = {
        ["textures"] = { "rbxassetid://8536406963" }
    },
    ["collectionServiceTags"] = { "smoke_block" },
    ["seeThrough"] = true,
    ["health"] = 6,
    ["maxPlaced"] = 20,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8006
        }
    }
}
v792.block = v793
v_u_96[v791] = v792
local v794 = {
    ["displayName"] = "Duck Egg",
    ["image"] = "rbxassetid://8732031366",
    ["consumable"] = {
        ["consumeTime"] = 3.5,
        ["cancelOnDamage"] = true,
        ["disableAnimation"] = true,
        ["soundOverride"] = "None"
    }
}
v_u_96[v_u_58.DUCK_SPAWN_EGG] = v794
local v795 = v_u_58.JUGGERNAUT_CRATE
local v796 = {
    ["displayName"] = "Juggernaut Crate"
}
local v797 = {
    ["breakType"] = v2.STONE,
    ["health"] = 20,
    ["collectionServiceTags"] = { "juggernaut-crate" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8007
        }
    }
}
v796.block = v797
v_u_96[v795] = v796
local v798 = v_u_58.HEAT_SEEKING_ROCK
local v799 = {
    ["displayName"] = "Heat Seeking Rock",
    ["image"] = "rbxassetid://7681398025",
    ["guidedProjectileSource"] = {
        ["consumeItem"] = v_u_58.HEAT_SEEKING_ROCK,
        ["guidedProjectile"] = "heat_seeking_rock"
    },
    ["firstPerson"] = {
        ["scale"] = 0.7
    }
}
v_u_96[v798] = v799
local v800 = v_u_58.BATTLE_AXE
local v801 = {
    ["displayName"] = "Battle Axe",
    ["image"] = "rbxassetid://8795403259"
}
local v802 = {
    ["damage"] = 50,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 2
    },
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["attackRange"] = 7 * v_u_17
}
local v803 = {
    ["cooldownBar"] = {
        ["color"] = Color3.fromRGB(242, 207, 10)
    }
}
v802.cooldown = v803
v802.attackSpeed = 2
v802.swingSounds = {}
v801.sword = v802
v_u_96[v800] = v801
local v804 = v_u_58.MASS_HAMMER
local v805 = {
    ["displayName"] = "Mass Hammer",
    ["image"] = "rbxassetid://8938480294"
}
local v806 = {
    ["damage"] = 35,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 1.2,
        ["vertical"] = 1.2
    },
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["attackRange"] = 5 * v_u_17
}
local v807 = {
    ["cooldownBar"] = {
        ["color"] = Color3.fromRGB(161, 97, 15)
    }
}
v806.cooldown = v807
v806.attackSpeed = 1.5
v806.swingSounds = {}
v805.sword = v806
v_u_96[v804] = v805
local v808 = v_u_58.TWIRLBLADE
local v809 = {
    ["displayName"] = "Twirlblade",
    ["image"] = "rbxassetid://8795403035"
}
local v810 = {
    ["damage"] = 50,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 1.1
    },
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["attackSpeed"] = 1,
    ["attackRange"] = 6 * v_u_17
}
local v811 = {
    ["cooldownBar"] = {
        ["color"] = Color3.fromRGB(179, 5, 5)
    }
}
v810.cooldown = v811
v810.swingAnimations = { v_u_7.TWIRLBLADE_ATTACK_1, v_u_7.TWIRLBLADE_ATTACK_2 }
v810.firstPersonSwingAnimations = { v_u_7.FP_TWIRLBLADE_ATTACK_1, v_u_7.FP_TWIRLBLADE_ATTACK_2 }
v810.swingSounds = {}
v809.sword = v810
v_u_96[v808] = v809
local v812 = {
    ["displayName"] = "Forcefield Potion",
    ["image"] = "rbxassetid://8795406077",
    ["consumable"] = {
        ["consumeTime"] = 1.5,
        ["cancelOnDamage"] = true
    }
}
v_u_96[v_u_58.FORCEFIELD_POTION] = v812
local v813 = v_u_58.TIME_BOMB_POTION
local v814 = {
    ["displayName"] = "Time Bomb Potion",
    ["image"] = "rbxassetid://9135921093",
    ["consumable"] = {
        ["consumeTime"] = 0.6,
        ["potion"] = true
    },
    ["crafting"] = {
        ["recipe"] = v46[v_u_58.TIME_BOMB_POTION]
    }
}
v_u_96[v813] = v814
local v815 = v_u_58.STONE_PLAYER_BLOCK
local v816 = {
    ["displayName"] = "Stone Player Block",
    ["footstepSound"] = v47.GRASS
}
local v817 = {
    ["breakType"] = v2.DIRT,
    ["disableInventoryPickup"] = true,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["greedyMesh"] = {
        ["textures"] = { "rbxassetid://8536406963" }
    },
    ["seeThrough"] = true,
    ["health"] = 6,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8008
        }
    }
}
v816.block = v817
v_u_96[v815] = v816
local v818 = v_u_58.MINER_PICKAXE
local v819 = {
    ["displayName"] = "Miner Pickaxe",
    ["sharingDisabled"] = true,
    ["breakBlock"] = {
        [v2.STONE] = 30
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["skins"] = { v21.MINER_PICKAXE_SPACE, v21.MINER_PICKAXE_WINTER }
}
v_u_96[v818] = v819
local v820 = v_u_58.PAINT_SHOTGUN
local v821 = {
    ["displayName"] = "Paint Blaster",
    ["image"] = "rbxassetid://9135902677",
    ["firstPerson"] = {
        ["holdAnimation"] = v_u_7.FP_PAINT_SHOTGUN_IDLE
    }
}
v_u_96[v820] = v821
local v822 = v_u_58.CARROT_CANNON
local v823 = {
    ["displayName"] = "Carrot Cannon",
    ["image"] = "rbxassetid://9134613651",
    ["firstPerson"] = {
        ["holdAnimation"] = v_u_7.FP_CARROT_CANNON_IDLE
    },
    ["thirdPerson"] = {
        ["holdAnimation"] = v_u_7.CARROT_CANNON_IDLE
    }
}
local v824 = {
    ["projectileType"] = function(_)
        return "carrot_rocket"
    end,
    ["ammoItemTypes"] = { v_u_58.CARROT_ROCKET },
    ["fireDelaySec"] = v22.COOLDOWN,
    ["launchSound"] = { v_u_48.CARROT_LAUNCHER_FIRE },
    ["launchSoundConfig"] = {
        ["pitch"] = NumberRange.new(0.95, 1.05)
    },
    ["activeReload"] = true,
    ["multiShot"] = true,
    ["multiShotCount"] = 4,
    ["multiShotDelay"] = 0.1,
    ["walkSpeedMultiplier"] = 0.6,
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_CARROT_CANNON_SHOOT
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.CARROT_CANNON_SHOOT
    }
}
local v825 = {
    ["config"] = {
        ["magnitude"] = 0.07,
        ["duration"] = 0.15,
        ["cycles"] = 2
    }
}
v824.launchScreenShake = v825
v823.projectileSource = v824
v_u_96[v822] = v823
v_u_96[v_u_58.CARROT_ROCKET] = {
    ["displayName"] = "Carrot Rocket",
    ["hotbarFillRight"] = true,
    ["image"] = "rbxassetid://9133691017"
}
local v826 = v_u_58.BOBA_BLASTER
local v827 = {
    ["displayName"] = "Boba Blaster",
    ["image"] = "rbxassetid://9188763408"
}
local v828 = {
    ["projectileType"] = function(_)
        return "boba_pearl"
    end,
    ["ammoItemTypes"] = { v_u_58.BOBA_PEARL },
    ["fireDelaySec"] = 0.3,
    ["activeReload"] = true,
    ["walkSpeedMultiplier"] = 0.4,
    ["launchSound"] = { v_u_48.BOBA_SHOOT },
    ["maxStrengthChargeSec"] = 0.6,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.BOBA_BLASTER_FIRE
    }
}
v827.projectileSource = v828
v827.thirdPerson = {
    ["holdAnimation"] = v_u_7.BOBA_BLASTER_IDLE
}
v_u_96[v826] = v827
v_u_96[v_u_58.BOBA_PEARL] = {
    ["displayName"] = "Boba Pearl",
    ["description"] = "Ammo for the Boba Blaster.",
    ["hotbarFillRight"] = true,
    ["image"] = "rbxassetid://9194313932"
}
local v829 = v_u_58.DETONATED_BOMB
local v830 = {
    ["displayName"] = "Remote Explosive",
    ["description"] = "it explodes",
    ["hotbarFillRight"] = true,
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "detonated_bomb"
        end,
        ["ammoItemTypes"] = { v_u_58.DETONATED_BOMB },
        ["fireDelaySec"] = 0.15,
        ["launchSound"] = { v_u_48.SNOWBALL_THROW },
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692
    },
    ["image"] = "rbxassetid://10648647141"
}
v_u_96[v829] = v830
v_u_96[v_u_58.BOMB_CONTROLLER] = {
    ["displayName"] = "bomb controller",
    ["description"] = "don\'t press the red button",
    ["image"] = "rbxassetid://10648652428"
}
local v831 = v_u_58.VENDING_MACHINE
local v832 = {
    ["displayName"] = "Vending Machine"
}
local v833 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["seeThrough"] = true,
    ["health"] = 20,
    ["collectionServiceTags"] = { "VendingMachine" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8009
        }
    }
}
v832.block = v833
v_u_96[v831] = v832
v_u_96[v_u_58.CROOK] = {
    ["displayName"] = "Crook"
}
local v834 = {
    ["displayName"] = "Turtle Shell",
    ["image"] = "rbxassetid://9006935204",
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
v_u_96[v_u_58.TURTLE_SHELL] = v834
v_u_96[v_u_58.WILD_FLOWER] = {
    ["displayName"] = "Flower",
    ["description"] = "Alchemist crafting material.",
    ["image"] = "rbxassetid://9134545166"
}
v_u_96[v_u_58.THORNS] = {
    ["displayName"] = "Thorns",
    ["description"] = "Alchemist crafting material.",
    ["image"] = "rbxassetid://9134549615"
}
v_u_96[v_u_58.MUSHROOMS] = {
    ["displayName"] = "Mushrooms",
    ["description"] = "Alchemist crafting material.",
    ["image"] = "rbxassetid://9134534696"
}
local v835 = v_u_58.FRYING_PAN
local v836 = {
    ["displayName"] = "Frying Pan",
    ["description"] = "Charge weapon to increase damage and knockback.",
    ["image"] = "rbxassetid://9253246741"
}
local v837 = {
    ["damage"] = 18,
    ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 1
    }
}
local v838 = {
    ["maxChargeTimeSec"] = 1,
    ["bonusKnockback"] = {
        ["horizontal"] = 0.5,
        ["vertical"] = 0.5
    },
    ["bonusDamage"] = 4
}
v837.chargedAttack = v838
v836.sword = v837
v836.firstPerson = {
    ["scale"] = 0.8
}
v_u_96[v835] = v836
local v839 = v_u_58.JUGGERNAUT_RAGE_BLADE
local v840 = {
    ["displayName"] = "Jugg Rage Blade",
    ["description"] = "Only the worthy shall wield this blade.",
    ["image"] = "rbxassetid://7051149237"
}
local v841 = {
    ["damage"] = 35,
    ["attackSpeed"] = v14.JUGGERNAUT_SWORD_COOLDOWN,
    ["swingAnimations"] = {},
    ["applyCooldownOnMiss"] = true,
    ["attackRange"] = 5 * v_u_17,
    ["knockbackMultiplier"] = {
        ["vertical"] = 1.2,
        ["horizontal"] = 1.4
    }
}
v840.sword = v841
v_u_96[v839] = v840
local v842 = v_u_58.HEAVENLY_SWORD
local v843 = {
    ["displayName"] = "Light Sword",
    ["image"] = "rbxassetid://9620517732",
    ["sharingDisabled"] = true
}
local v844 = {
    ["damage"] = 47,
    ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 1
    }
}
local v845 = {
    ["maxChargeTimeSec"] = v29.MAX_CHARGE_TIME,
    ["walkSpeedModifier"] = {
        ["multiplier"] = 0.85,
        ["delay"] = 0.25
    },
    ["minChargeTimeSec"] = v29.MIN_CHARGE_TIME,
    ["chargedSwingAnimations"] = { v_u_7.HEAVENLY_SWORD_SWING },
    ["firstPersonChargedSwingAnimations"] = { v_u_7.FP_HEAVENLY_SWORD_SWING }
}
v844.chargedAttack = v845
v843.sword = v844
v843.projectileSource = {
    ["projectileType"] = function(p846)
        -- upvalues: (copy) v_u_58
        return p846 == v_u_58.HEAVENLY_SWORD and "sword_wave1" or (p846 == v_u_58.FESTIVE_SWORD_WAVE and "festive_sword_wave" or (p846 == v_u_58.FESTIVE_SWORD_WAVE1 and "festive_sword_wave1" or "sword_wave"))
    end,
    ["fireDelaySec"] = 0.3
}
v843.firstPerson = {
    ["scale"] = 0.8
}
v843.skins = { v21.HEAVENLY_SWORD_FESTIVE_LUMEN }
v_u_96[v842] = v843
v_u_96[v_u_58.FESTIVE_SWORD_WAVE] = {
    ["displayName"] = "Festive Sword Wave"
}
v_u_96[v_u_58.FESTIVE_SWORD_WAVE1] = {
    ["displayName"] = "Festive Sword Wave1"
}
local v847 = v_u_58.INFERNAL_SABER
local v848 = {
    ["displayName"] = "Infernal Saber",
    ["image"] = "rbxassetid://9620506030",
    ["sharingDisabled"] = true
}
local v849 = {
    ["damage"] = 40,
    ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
}
local v850 = {
    ["maxChargeTimeSec"] = 1,
    ["minChargeTimeSec"] = 1,
    ["walkSpeedModifier"] = {
        ["multiplier"] = 1
    },
    ["attackCooldown"] = 0.5
}
v849.chargedAttack = v850
v849.knockbackMultiplier = {
    ["horizontal"] = 0.5
}
v848.sword = v849
v848.firstPerson = {
    ["scale"] = 0.8,
    ["verticalOffset"] = -1.2
}
v848.skins = { v21.INFERNAL_SABER_KRAMPUS }
v_u_96[v847] = v848
local v851 = v_u_58.BEAR_CLAWS
local v852 = {
    ["displayName"] = "Bear Claw",
    ["image"] = "rbxassetid://9434318163"
}
local v853 = {
    ["damage"] = 45,
    ["attackSpeed"] = 0.8,
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["swingSounds"] = { v_u_48.BEAR_CLAWS_SWIPE },
    ["swingAnimations"] = { v_u_7.BEAR_CLAWS_SWIPE },
    ["firstPersonSwingAnimations"] = { v_u_7.BEAR_CLAWS_SWIPE },
    ["knockbackMultiplier"] = {
        ["horizontal"] = 0.1
    }
}
local v854 = {
    ["maxChargeTimeSec"] = 1,
    ["bonusKnockback"] = {
        ["horizontal"] = 0.1,
        ["vertical"] = 0.1
    },
    ["bonusDamage"] = 15,
    ["ignoreEffectsOnFullyCharged"] = true
}
v853.chargedAttack = v854
v852.sword = v853
v852.firstPerson = {
    ["scale"] = 0.8
}
v_u_96[v851] = v852
local v855 = {
    ["displayName"] = "Big Head Potion",
    ["description"] = "Consume potion to grow yourself a bigger head.",
    ["image"] = "rbxassetid://9192325186",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["potion"] = true
    }
}
v_u_96[v_u_58.BIG_HEAD_POTION] = v855
local v856 = v_u_58.BEDROCK
local v857 = {
    ["displayName"] = "Bedrock",
    ["footstepSound"] = v47.STONE
}
local v858 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 7
        }
    },
    ["health"] = 10,
    ["blastProof"] = true,
    ["breakableOnlyByHosts"] = true
}
v857.block = v858
v_u_96[v856] = v857
local v859 = v_u_58.BARRIER
local v860 = {
    ["displayName"] = "Barrier",
    ["footstepSound"] = v47.STONE
}
local v861 = {
    ["collectionServiceTags"] = { "BARRIER_BLOCK" },
    ["breakType"] = v2.STONE,
    ["seeThrough"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 166
        }
    },
    ["health"] = 1,
    ["blastProof"] = true,
    ["breakableOnlyByHosts"] = true
}
v860.block = v861
v_u_96[v859] = v860
local v862 = v_u_58.INVISIBLE_LANDMINE
local v863 = {
    ["displayName"] = "Invisible Landmine",
    ["image"] = "rbxassetid://9434319010"
}
local v864 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["health"] = 25,
    ["seeThrough"] = true,
    ["disableInventoryPickup"] = true,
    ["unbreakableByTeammates"] = true,
    ["collectionServiceTags"] = { "invisible-landmine" },
    ["maxPlaced"] = 6,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8011
        }
    }
}
v863.block = v864
v_u_96[v862] = v863
local v865 = v_u_58.INFERNAL_SHIELD
local v866 = {
    ["displayName"] = "Infernal Shield",
    ["description"] = "Deflect incoming projectiles while shield is raised.",
    ["image"] = "rbxassetid://7051149149",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.8
    },
    ["skins"] = { v21.INFERNAL_SHIELD_SUMMER }
}
v_u_96[v865] = v866
local v867 = {
    ["displayName"] = "Rocket Belt",
    ["description"] = "The moment you doubt whether you can fly, you cease forever to be able to do it.",
    ["image"] = "rbxassetid://10480113919",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["backpack"] = {
        ["cooldown"] = 10
    }
}
v_u_96[v_u_58.ROCKET_BELT] = v867
local v868 = {
    ["displayName"] = "Turtle Shell",
    ["image"] = "rbxassetid://9006935204",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["backpack"] = {
        ["activeAbility"] = false
    }
}
v_u_96[v_u_58.TURTLE_BACKPACK] = v868
local v869 = {
    ["displayName"] = "Spike Shell",
    ["image"] = "rbxassetid://11272107426",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["description"] = "Take reduced damage based on the direction of the attack and reflect that damage back to the enemy.",
    ["backpack"] = {
        ["activeAbility"] = false
    }
}
v_u_96[v_u_58.SPIKE_SHELL_BACKPACK] = v869
local v870 = {
    ["displayName"] = "Portable Vending Machine",
    ["image"] = "rbxassetid://11272093702",
    ["description"] = "Visit the Shop anywhere and unlock the Blind-Box in the Shop. Purchasing an item will put the vending machine on cooldown.",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["backpack"] = {
        ["activeAbility"] = true
    }
}
v_u_96[v_u_58.PORTABLE_VENDING_MACHINE] = v870
local v871 = {
    ["displayName"] = "First Aid Kit",
    ["image"] = "rbxassetid://10562874983",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["description"] = "Gradually heal you and nearby teammates over 10 seconds.",
    ["backpack"] = {
        ["activeAbility"] = false
    }
}
v_u_96[v_u_58.HEALING_BACKPACK] = v871
v_u_96[v_u_58.METAL_DETECTOR] = {
    ["displayName"] = "Metal Detector",
    ["image"] = "rbxassetid://9378643217",
    ["sharingDisabled"] = true
}
local v872 = v_u_58.MAGMA_BLOCK
local v873 = {
    ["displayName"] = "Magma Block",
    ["footstepSound"] = v47.STONE
}
local v874 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 213
        }
    },
    ["health"] = 10,
    ["blastProof"] = true,
    ["breakableOnlyByHosts"] = true,
    ["pointLight"] = {
        ["Brightness"] = 4,
        ["Color"] = Color3.fromRGB(255, 130, 130),
        ["Shadows"] = true,
        ["Range"] = 8
    },
    ["collectionServiceTags"] = { "MagmaBlock" }
}
v873.block = v874
v_u_96[v872] = v873
local v875 = v_u_58.DRONE
local v876 = {
    ["displayName"] = "Drone",
    ["image"] = v36.CYBER_DRONE_RENDER,
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["sharingDisabled"] = true,
    ["guidedProjectileSource"] = {
        ["guidedProjectile"] = "drone"
    }
}
v_u_96[v875] = v876
local v877 = v_u_58.GRAPPLING_HOOK
local v878 = {
    ["displayName"] = "Grapple Hook",
    ["description"] = "Launch, grapple, and pull yourself along for fast travel.",
    ["image"] = "rbxassetid://9499344892"
}
local v879 = {
    ["projectileType"] = function(_)
        return "grappling_hook_projectile"
    end,
    ["fireDelaySec"] = 1,
    ["launchSound"] = { v_u_48.GRAPPLING_HOOK_FIRE },
    ["waitForHit"] = true,
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.TORNADO_LAUNCHER_SHOOT,
        ["aimAnimation"] = v_u_7.TORNADO_LAUNCHER_HOLD
    },
    ["blockingStatusEffects"] = { v49.GROUNDED }
}
v878.projectileSource = v879
v_u_96[v877] = v878
local v880 = {
    ["displayName"] = "Minicopter",
    ["image"] = "rbxassetid://9559559860",
    ["consumable"] = {
        ["consumeTime"] = 3,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    }
}
v_u_96[v_u_58.HELICOPTER_DEPLOY] = v880
local v881 = {
    ["displayName"] = "UFO",
    ["image"] = "rbxassetid://11977366776",
    ["consumable"] = {
        ["consumeTime"] = 3,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    }
}
v_u_96[v_u_58.UFO_DEPLOY] = v881
local v882 = {
    ["displayName"] = "Attack Minicopter",
    ["image"] = "rbxassetid://10236878231",
    ["description"] = "Weaponized flying death machine.",
    ["consumable"] = {
        ["consumeTime"] = 3,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    }
}
v_u_96[v_u_58.ATTACK_HELICOPTER_DEPLOY] = v882
local v883 = {
    ["displayName"] = "Sleigh",
    ["image"] = "rbxassetid://99857605333058",
    ["consumable"] = {
        ["consumeTime"] = 3,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    }
}
v_u_96[v_u_58.SLEIGH_DEPLOY] = v883
v_u_96[v_u_58.PLAYER_VACUUM] = {
    ["displayName"] = "Vacuum",
    ["image"] = "rbxassetid://9679750852"
}
local v884 = {
    ["displayName"] = "Dino",
    ["image"] = "rbxassetid://9855535867",
    ["sharingDisabled"] = true,
    ["consumable"] = {
        ["consumeTime"] = 2,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true,
        ["keepOnConsume"] = true
    },
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
v_u_96[v_u_58.DINO_DEPLOY] = v884
local v885 = v_u_58.VITALITY_STAR
local v886 = {
    ["displayName"] = "Vitality Star",
    ["description"] = "Consume to gain a health buff for yourself and nearby teammates!",
    ["sharingDisabled"] = true,
    ["consumable"] = {
        ["consumeTime"] = 1,
        ["animationOverride"] = v_u_7.STAR_ITEM_CONSUME,
        ["soundOverride"] = "None"
    },
    ["image"] = "rbxassetid://9866757969"
}
v_u_96[v885] = v886
local v887 = v_u_58.CRIT_STAR
local v888 = {
    ["displayName"] = "Crit Star",
    ["description"] = "Consume to gain a crit rate buff for yourself and nearby teammates!",
    ["sharingDisabled"] = true,
    ["consumable"] = {
        ["consumeTime"] = 1,
        ["animationOverride"] = v_u_7.STAR_ITEM_CONSUME,
        ["soundOverride"] = "None"
    },
    ["image"] = "rbxassetid://9866757805"
}
v_u_96[v887] = v888
local v889 = v_u_58.VOID_PORTAL
local v890 = {
    ["displayName"] = "Void Portal"
}
local v891 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["seeThrough"] = true,
    ["health"] = 20,
    ["collectionServiceTags"] = { "VoidPortal" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8010
        }
    }
}
v890.block = v891
v_u_96[v889] = v890
local v892 = v_u_58.TEAM_DOOR
local v893 = {
    ["displayName"] = "Team Door",
    ["image"] = "rbxassetid://10322205747"
}
local v894 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["seeThrough"] = true,
    ["health"] = 20,
    ["collectionServiceTags"] = { "CanNoclip", "TeamDoor" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12004
        }
    }
}
v893.block = v894
v_u_96[v892] = v893
local v895 = v_u_58.VOID_TURRET
local v896 = {
    ["displayName"] = "Void Turret",
    ["image"] = "rbxassetid://9942058258"
}
local v897 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["seeThrough"] = true,
    ["health"] = 25,
    ["blastResistance"] = 4,
    ["disableInventoryPickup"] = true,
    ["unbreakableByTeammates"] = true,
    ["collectionServiceTags"] = { "Turret", v18.VOID_TURRET },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8011
        }
    }
}
v896.block = v897
v_u_96[v895] = v896
local v898 = v_u_58.SPIKE_TRAP
local v899 = {
    ["displayName"] = "Spike Trap",
    ["image"] = "rbxassetid://10322206238"
}
local v900 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["seeThrough"] = true,
    ["health"] = 20,
    ["maxPlaced"] = 14,
    ["collectionServiceTags"] = { "spike_trap" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12003
        }
    }
}
v899.block = v900
v_u_96[v898] = v899
local v901 = v_u_58.AUTO_TURRET
local v902 = {
    ["displayName"] = "Auto Turret",
    ["image"] = "rbxassetid://7290567966"
}
local v903 = {
    ["maxPlaced"] = 10,
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["seeThrough"] = true,
    ["health"] = 25,
    ["disableInventoryPickup"] = true,
    ["unbreakableByTeammates"] = true,
    ["blastResistance"] = 4,
    ["collectionServiceTags"] = { "Turret", v18.VOID_TURRET, v18.AUTO_TURRET }
}
local v904 = {
    ["projectileType"] = function()
        return "autoTurretBullet"
    end,
    ["fireDelaySec"] = 0.3,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["relativeOverride"] = {
        ["relX"] = 0,
        ["relY"] = 0,
        ["relZ"] = 0
    }
}
v903.projectileSource = v904
v903.minecraftConversions = {
    {
        ["blockId"] = 12002
    }
}
v902.block = v903
v_u_96[v901] = v902
local v905 = v_u_58.SHOCK_WAVE_TURRET
local v906 = {
    ["displayName"] = "Shock Wave Turret",
    ["image"] = "rbxassetid://10322206511"
}
local v907 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["collectionServiceTags"] = { "shock-wave-turret" },
    ["seeThrough"] = true,
    ["health"] = 18,
    ["disableInventoryPickup"] = true,
    ["maxPlaced"] = 2,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12001
        }
    }
}
v906.block = v907
v_u_96[v905] = v906
v_u_96[v_u_58.VOID_TURRET_TABLET] = {
    ["displayName"] = "Void Turret Tablet",
    ["image"] = "rbxassetid://9942058467",
    ["hotbarFillRight"] = true,
    ["keepOnDeath"] = true
}
local v908 = v_u_58.HUGE_LUCKY_BLOCK
local v909 = {
    ["displayName"] = "Huge Lucky Block"
}
local v910 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.LUCKY_BLOCK_BREAK)
    end
}
local v911 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 1
        },
        {
            ["luckMultiplier"] = 1
        },
        {
            ["luckMultiplier"] = 2
        },
        {
            ["luckMultiplier"] = 2
        },
        {
            ["luckMultiplier"] = 4
        }
    },
    ["timeBetweenDropsSec"] = 0.5,
    ["allowedRarity"] = {
        v43.UNCOMMON,
        v43.RARE,
        v43.EPIC,
        v43.LEGENDARY
    },
    ["allowedPolarity"] = { v42.NEUTRAL, v42.POSITIVE }
}
v910.luckyBlock = v911
v910.blastProof = true
v910.disableInventoryPickup = true
v910.health = 150
v910.minecraftConversions = {
    {
        ["blockId"] = 9010
    }
}
v909.block = v910
v_u_96[v908] = v909
local v912 = v_u_58.STICKY_FIREWORK
local v913 = {
    ["displayName"] = "Sticky Firework",
    ["image"] = "rbxassetid://10086863934",
    ["description"] = "Throw at players to launch them into the sky"
}
local v914 = {
    ["projectileType"] = function()
        return "sticky_firework"
    end,
    ["ammoItemTypes"] = { v_u_58.STICKY_FIREWORK },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v913.projectileSource = v914
v_u_96[v912] = v913
local v915 = v_u_58.DIZZY_TOAD
local v916 = {
    ["displayName"] = "Dizzy Toad",
    ["description"] = "Throw at players to make them dizzy",
    ["image"] = "rbxassetid://10086864455"
}
local v917 = {
    ["projectileType"] = function()
        return "dizzy_toad"
    end,
    ["ammoItemTypes"] = { v_u_58.DIZZY_TOAD },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v916.projectileSource = v917
v_u_96[v915] = v916
local v918 = v_u_58.TOY_HAMMER
local v919 = {
    ["displayName"] = "Toy Hammer",
    ["description"] = "Hit players for huge knockback"
}
local v920 = {
    ["damage"] = 10,
    ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 2.5
    },
    ["hitSound"] = v_u_48.TOY_HAMMER_HIT
}
v919.sword = v920
v919.firstPerson = {
    ["scale"] = 0.8,
    ["verticalOffset"] = -1.2
}
v919.image = "rbxassetid://10086863582"
v_u_96[v918] = v919
local v921 = v_u_58.SMALL_BUSH
local v922 = {
    ["displayName"] = "Small Bush"
}
local v923 = {
    ["unbreakable"] = true,
    ["breakType"] = v2.DIRT,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 175,
            ["blockData"] = 2
        }
    },
    ["seeThrough"] = true,
    ["canReplace"] = true,
    ["dontPlaceInPublicMatch"] = true
}
v922.block = v923
v_u_96[v921] = v922
local v924 = v_u_58.LARGE_BUSH
local v925 = {
    ["displayName"] = "Large Bush"
}
local v926 = {
    ["unbreakable"] = true,
    ["breakType"] = v2.DIRT,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12000,
            ["blockData"] = 2
        }
    },
    ["seeThrough"] = true,
    ["canReplace"] = true,
    ["dontPlaceInPublicMatch"] = true
}
v925.block = v926
v_u_96[v924] = v925
local v927 = v_u_58.FLOWER_PURPLE
local v928 = {
    ["displayName"] = "Purple Flower"
}
local v929 = {
    ["unbreakable"] = true,
    ["breakType"] = v2.DIRT,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 31,
            ["blockData"] = 1
        },
        {
            ["blockId"] = 37
        }
    },
    ["seeThrough"] = true,
    ["canReplace"] = true,
    ["dontPlaceInPublicMatch"] = true
}
v928.block = v929
v_u_96[v927] = v928
local v930 = v_u_58.BROKEN_SNOW_CONE_MACHINE
local v931 = {
    ["displayName"] = "Broken Snow Cone Machine"
}
local v932 = {
    ["breakType"] = v2.STONE,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12010
        }
    },
    ["collectionServiceTags"] = { "BrokenSnowConeMachine" },
    ["seeThrough"] = true,
    ["noSuffocation"] = true
}
v931.block = v932
v_u_96[v930] = v931
local v933 = v_u_58.SNOW_CONE_MACHINE
local v934 = {
    ["displayName"] = "Snow Cone Machine"
}
local v935 = {
    ["breakType"] = v2.STONE,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12010,
            ["blockData"] = 2
        }
    },
    ["collectionServiceTags"] = { "SnowConeMachine" },
    ["seeThrough"] = true,
    ["noSuffocation"] = true
}
v934.block = v935
v_u_96[v933] = v934
local v936 = v_u_58.SNOW_CONE
local v937 = {
    ["displayName"] = "Snow Cone",
    ["description"] = "Consume for 1 Snow Cone stack!",
    ["image"] = "rbxassetid://10489888403"
}
local v938 = {
    ["consumeTime"] = 0.5,
    ["statusEffect"] = {
        ["statusEffectType"] = v49.SNOW_CONE,
        ["incrementStacks"] = 1
    }
}
v937.consumable = v938
v_u_96[v936] = v937
local v939 = v_u_58.LUCKY_SNOW_CONE
local v940 = {
    ["displayName"] = "Lucky Snow Cone",
    ["description"] = "Worth five Snow Cone stacks!",
    ["image"] = "rbxassetid://10489888627"
}
local v941 = {
    ["consumeTime"] = 0.5,
    ["statusEffect"] = {
        ["statusEffectType"] = v49.SNOW_CONE,
        ["incrementStacks"] = 5
    }
}
v940.consumable = v941
v_u_96[v939] = v940
local v942 = v_u_58.TENNIS_RACKET
local v943 = {
    ["displayName"] = "Tennis Racket",
    ["image"] = "rbxassetid://10392204924",
    ["description"] = "Used to hit explosive tennis balls."
}
local v944 = {
    ["projectileType"] = function(_)
        return "tennis_ball"
    end,
    ["ammoItemTypes"] = { v_u_58.TENNIS_BALL },
    ["fireDelaySec"] = 0.4,
    ["activeReload"] = true,
    ["walkSpeedMultiplier"] = 0.4,
    ["launchSound"] = { v_u_48.TENNIS_BALL_HIT_1, v_u_48.TENNIS_BALL_HIT_2 },
    ["maxStrengthChargeSec"] = 0.65,
    ["minStrengthScalar"] = 0.7692307692307692
}
local v945 = {
    ["config"] = {
        ["magnitude"] = 0.04,
        ["duration"] = 0.11,
        ["cycles"] = 1
    }
}
v944.launchScreenShake = v945
v944.firstPerson = {
    ["fireAnimation"] = v_u_7.TENNIS_RACKET_HIT
}
v944.thirdPerson = {
    ["fireAnimation"] = v_u_7.TENNIS_RACKET_HIT
}
v943.projectileSource = v944
v943.firstPerson = {
    ["scale"] = 0.8,
    ["verticalOffset"] = -2,
    ["holdAnimation"] = v_u_7.TENNIS_RACKET_IDLE
}
v943.thirdPerson = {
    ["holdAnimation"] = v_u_7.TENNIS_RACKET_IDLE
}
v943.maxStackSize = {
    ["amount"] = 10
}
v943.sharingDisabled = true
v_u_96[v942] = v943
v_u_96[v_u_58.TENNIS_BALL] = {
    ["displayName"] = "Exploding Tennis Ball",
    ["description"] = "Explosive ammo for the tennis racket.",
    ["hotbarFillRight"] = true,
    ["image"] = "rbxassetid://10392205271",
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.VOLLEY_ARROW] = {
    ["displayName"] = "Volley Arrow",
    ["image"] = "rbxassetid://6869295400"
}
local v946 = {
    ["displayName"] = "Cannon Ball",
    ["maxStackSize"] = {
        ["amount"] = 2
    }
}
v_u_96[v_u_58.CANNON_BALL] = v946
local v947 = v_u_58.BLUNDERBUSS
local v948 = {
    ["displayName"] = "Blunderbuss",
    ["image"] = "rbxassetid://10722841562",
    ["projectileSource"] = {
        ["fireDelaySec"] = 0.7,
        ["projectileType"] = function()
            return "blunderbuss_bullet"
        end,
        ["launchSound"] = { v_u_48.BLUNDERBUSS_SHOOT }
    }
}
v_u_96[v947] = v948
v_u_96[v_u_58.BLUNDERBUSS_BULLET] = {
    ["displayName"] = "Blunderbuss Bullet",
    ["removeFromCustoms"] = true
}
local v949 = v_u_58.GLITCH_SNOWBALL
local v950 = {
    ["displayName"] = "Snowball?",
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["glitched"] = true,
    ["image"] = "rbxassetid://7911163294",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "glitch_snowball"
        end,
        ["ammoItemTypes"] = { v_u_58.GLITCH_SNOWBALL },
        ["fireDelaySec"] = 0.15,
        ["launchSound"] = { v_u_48.SNOWBALL_THROW },
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692
    }
}
v_u_96[v949] = v950
local v951 = v_u_58.GLITCH_WOOD_BOW
local v952 = {
    ["displayName"] = "Bow?",
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["glitched"] = true
}
local v953 = {
    ["projectileType"] = function(_)
        return "glitch_arrow"
    end,
    ["ammoItemTypes"] = {
        v_u_58.FIREWORK_ARROW,
        v_u_58.ARROW,
        v_u_58.VOLLEY_ARROW,
        v_u_58.TNT
    },
    ["fireDelaySec"] = 1.1,
    ["maxStrengthChargeSec"] = 0.65,
    ["minStrengthScalar"] = 0.3333333333333333,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["chargeBeginSound"] = { v_u_48.BOW_DRAW },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.BOW_AIM,
        ["fireAnimation"] = v_u_7.BOW_FIRE,
        ["drawAnimation"] = v_u_7.BOW_DRAW
    }
}
v952.projectileSource = v953
v952.image = "rbxassetid://6869295332"
v_u_96[v951] = v952
local v954 = v_u_58.GLITCH_POPUP_CUBE
local v955 = {
    ["image"] = "rbxassetid://7976208116",
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["displayName"] = "Popup Tower?",
    ["glitched"] = true,
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "glitch_popup_cube"
        end,
        ["ammoItemTypes"] = { v_u_58.GLITCH_POPUP_CUBE },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.SWORD_SWING_1 }
    }
}
v_u_96[v954] = v955
local v956 = v_u_58.GLITCH_ROBBERY_BALL
local v957 = {
    ["displayName"] = "Robbery Ball?",
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["glitched"] = true,
    ["image"] = "rbxassetid://7977038485"
}
local v958 = {
    ["projectileType"] = function()
        return "glitch_robbery_ball"
    end,
    ["ammoItemTypes"] = { v_u_58.GLITCH_ROBBERY_BALL },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v957.projectileSource = v958
v_u_96[v956] = v957
local v959 = v_u_58.GLITCH_THROWABLE_BRIDGE
local v960 = {
    ["displayName"] = "Portable Bridge?",
    ["image"] = "rbxassetid://10866146253",
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["glitched"] = true
}
local v961 = {
    ["projectileType"] = function()
        return "glitch_throwable_bridge"
    end,
    ["ammoItemTypes"] = { v_u_58.GLITCH_THROWABLE_BRIDGE },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v960.projectileSource = v961
v_u_96[v959] = v960
local v962 = v_u_58.GLITCH_APPLE
local v963 = {
    ["displayName"] = "Apple?",
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["glitched"] = true,
    ["image"] = "rbxassetid://6985765179",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["potion"] = true
    },
    ["maxStackSize"] = {
        ["amount"] = 4
    }
}
v_u_96[v962] = v963
local v964 = v_u_58.GLITCH_BIG_SHIELD
local v965 = {
    ["displayName"] = "Big Shield?",
    ["image"] = "rbxassetid://7863380423",
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["glitched"] = true,
    ["consumable"] = {
        ["consumeTime"] = 1.8
    }
}
v_u_96[v964] = v965
local v966 = v_u_58.GLITCH_TASER
local v967 = {
    ["displayName"] = "Taser?",
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["glitched"] = true,
    ["image"] = "rbxassetid://7911162966"
}
local v968 = {
    ["damage"] = 1,
    ["attackSpeed"] = 6,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 0,
        ["vertical"] = 0
    },
    ["swingSounds"] = {},
    ["swingAnimations"] = { v_u_7.PUNCH }
}
v967.sword = v968
v_u_96[v966] = v967
local v969 = v_u_58.GLITCH_GRENADE_LAUNCHER
local v970 = {
    ["displayName"] = "Rocket Launcher?",
    ["glitched"] = true,
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["image"] = "rbxassetid://10086864148"
}
local v971 = {
    ["projectileType"] = function()
        return "glitch_stun_grenade"
    end,
    ["ammoItemTypes"] = { v_u_58.GLITCH_STUN_GRENADE },
    ["launchSound"] = { v_u_48.CARROT_LAUNCHER_FIRE },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.ROCKET_LAUNCHER_SHOT,
        ["aimAnimation"] = v_u_7.ROCKET_LAUNCHER_IDLE
    },
    ["fireDelaySec"] = 2.2,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["activeReload"] = true
}
v970.projectileSource = v971
v_u_96[v969] = v970
v_u_96[v_u_58.GLITCH_STUN_GRENADE] = {
    ["displayName"] = "Stun Grenade?",
    ["glitched"] = true,
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["image"] = "rbxassetid://10086863810",
    ["hotbarFillRight"] = true
}
v_u_96[v_u_58.GLITCH_GUITAR] = {
    ["displayName"] = "Guitar?",
    ["glitched"] = true,
    ["cooldownId"] = v19.MELODY,
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["image"] = "rbxassetid://12509567989"
}
local v972 = v_u_58.GLITCH_INFERNAL_SHIELD
local v973 = {
    ["displayName"] = "Infernal Shield?",
    ["glitched"] = true,
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["image"] = "rbxassetid://7051149149",
    ["firstPerson"] = {
        ["scale"] = 0.8
    }
}
v_u_96[v972] = v973
local v974 = v_u_58.GLITCHED_LUCKY_BLOCK
local v975 = {
    ["displayName"] = "Glitched Lucky Block",
    ["glitched"] = true,
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY
}
local v976 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.LUCKY_BLOCK_BREAK)
    end,
    ["collectionServiceTags"] = { "GlitchedLuckyBlock" },
    ["greedyMesh"] = {
        ["textures"] = {}
    }
}
local v977 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        }
    },
    ["categories"] = { v41.GLITCH }
}
v976.luckyBlock = v977
v976.minecraftConversions = {
    {
        ["blockId"] = 12014
    }
}
v976.blastProof = true
v976.disableInventoryPickup = true
v976.health = 17
v975.block = v976
v_u_96[v974] = v975
local v978 = v_u_58.GLITCH_WOOD_SWORD
local v979 = {
    ["displayName"] = "Wood Sword?",
    ["image"] = "rbxassetid://6875480974",
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["glitched"] = true,
    ["sword"] = {
        ["damage"] = 42,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    }
}
v_u_96[v978] = v979
local v980 = v_u_58.TRUMPET
local v981 = {
    ["displayName"] = "Trumpet",
    ["description"] = "Make some noise!",
    ["image"] = "rbxassetid://10857089714",
    ["thirdPerson"] = {
        ["holdAnimation"] = v_u_7.BOBA_BLASTER_IDLE
    }
}
v_u_96[v980] = v981
local v982 = v_u_58.GLITCH_TRUMPET
local v983 = {
    ["displayName"] = "Trumpet?",
    ["description"] = "Make some noise!",
    ["image"] = "rbxassetid://10857089714",
    ["pickUpOverlaySound"] = v_u_48.GLITCH_OVERLAY,
    ["glitched"] = true,
    ["thirdPerson"] = {
        ["holdAnimation"] = v_u_7.BOBA_BLASTER_IDLE
    }
}
v_u_96[v982] = v983
local v984 = v_u_58.PARTY_POPPER
local v985 = {
    ["displayName"] = "Party Popper",
    ["description"] = "Time to party!",
    ["image"] = "rbxassetid://11967427626",
    ["thirdPerson"] = {
        ["holdAnimation"] = v_u_7.PARTY_POPPER_HOLD
    }
}
v_u_96[v984] = v985
local v986 = v_u_58.GLITCH_TACTICAL_CROSSBOW
local v987 = {
    ["displayName"] = "Tactical Crossbow?",
    ["sharingDisabled"] = true
}
local v988 = {
    ["projectileType"] = function(_)
        return "glitch_tactical_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.FIREWORK_ARROW, v_u_58.ARROW },
    ["fireDelaySec"] = v_u_54.CROSSBOW_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.CROSSBOW_FIRE
    },
    ["multiShot"] = true,
    ["multiShotCount"] = 3
}
v987.projectileSource = v988
v987.glitched = true
v987.image = "rbxassetid://7051149016"
v_u_96[v986] = v987
local v989 = v_u_58.GLITCH_VOID_SWORD
local v990 = {
    ["displayName"] = "Void Sword?",
    ["sword"] = {
        ["damage"] = 25,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["glitched"] = true,
    ["image"] = "rbxassetid://9873021357"
}
v_u_96[v989] = v990
local v991 = v_u_58.MAGE_SPELLBOOK
local v992 = {
    ["displayName"] = "Mage Spellbook",
    ["description"] = "Cast powerful spells at your enemies!",
    ["image"] = "rbxassetid://11003634601",
    ["sharingDisabled"] = true,
    ["keepOnDeath"] = true
}
local v993 = {}
local v994 = {
    ["projectileType"] = function()
        return "mage_spell_base"
    end,
    ["fireDelaySec"] = 0.7,
    ["launchSound"] = { v_u_48.WHIM_CAST_BASE_1, v_u_48.WHIM_CAST_BASE_2, v_u_48.WHIM_CAST_BASE_3 },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v993.mage_spell_base = v994
local v995 = {
    ["projectileType"] = function()
        return "mage_spell_fire"
    end,
    ["fireDelaySec"] = 0.7,
    ["launchSound"] = { v_u_48.WHIM_CAST_FIRE_1, v_u_48.WHIM_CAST_FIRE_2, v_u_48.WHIM_CAST_FIRE_3 },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v993.mage_spell_fire = v995
local v996 = {
    ["projectileType"] = function()
        return "mage_spell_ice"
    end,
    ["fireDelaySec"] = 0.7,
    ["launchSound"] = { v_u_48.WHIM_CAST_ICE_1, v_u_48.WHIM_CAST_ICE_2, v_u_48.WHIM_CAST_ICE_3 },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v993.mage_spell_ice = v996
local v997 = {
    ["projectileType"] = function()
        return "mage_spell_nature"
    end,
    ["fireDelaySec"] = 0.7,
    ["launchSound"] = { v_u_48.WHIM_CAST_NATURE_1, v_u_48.WHIM_CAST_NATURE_2, v_u_48.WHIM_CAST_NATURE_3 },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v993.mage_spell_nature = v997
v992.multiProjectileSource = v993
v_u_96[v991] = v992
v_u_96[v_u_58.NATURES_ESSENCE_1] = {
    ["displayName"] = "Nature\'s Essence I",
    ["image"] = v36.NATURES_ESSENCE,
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.NATURES_ESSENCE_2] = {
    ["displayName"] = "Nature\'s Essence II",
    ["image"] = v36.NATURES_ESSENCE,
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.NATURES_ESSENCE_3] = {
    ["displayName"] = "Nature\'s Essence III",
    ["image"] = v36.NATURES_ESSENCE,
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.NATURES_ESSENCE_4] = {
    ["displayName"] = "Nature\'s Essence IV",
    ["image"] = v36.NATURES_ESSENCE,
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.DAMAGE_ORB_EMERALD] = {
    ["displayName"] = "Damage Orb",
    ["image"] = v36.ALCHEMIZE_ORB_EMERALD,
    ["description"] = "Grants +2% damage.",
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.DAMAGE_ORB_DIAMOND] = {
    ["displayName"] = "Damage Orb",
    ["image"] = v36.ALCHEMIZE_ORB_DIAMOND,
    ["description"] = "Grants +2% damage.",
    ["removeFromCustoms"] = true
}
local v998 = v_u_58.DRAGON_EGG
local v999 = {
    ["displayName"] = "Dragon Egg",
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["hitSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.LUCKY_BLOCK_BREAK)
        end,
        ["health"] = 500,
        ["unbreakable"] = true
    }
}
v_u_96[v998] = v999
local v1000 = v_u_58.WORMHOLE
local v1001 = {
    ["displayName"] = "Wormhole",
    ["image"] = "rbxassetid://11192696778",
    ["description"] = "Teleport to base while standing still.",
    ["consumable"] = {
        ["consumeTime"] = 0.5,
        ["soundOverride"] = v_u_48.WORMHOLE_USE,
        ["animationOverride"] = v_u_7.RAVEN_HOLD,
        ["cancelOnDamage"] = true,
        ["walkSpeedMultiplier"] = 0
    },
    ["maxStackSize"] = {
        ["amount"] = 5
    },
    ["cooldownId"] = v19.WORMHOLE
}
v_u_96[v1000] = v1001
local v1002 = v_u_58.PUMPKIN_SEEDS
local v1003 = {
    ["displayName"] = "Pumpkin Seeds",
    ["description"] = "Can be harvested into a throwable explosive!",
    ["image"] = "rbxassetid://11164828140",
    ["placesBlock"] = {
        ["blockType"] = v_u_58.PUMPKIN
    },
    ["sharingDisabled"] = true
}
v_u_96[v1002] = v1003
local v1004 = v_u_58.PUMPKIN
local v1005 = {
    ["displayName"] = "Pumpkin",
    ["image"] = v36.PUMPKIN_BOMB
}
local v1006 = {
    ["breakType"] = v2.WOOD,
    ["health"] = 5,
    ["denyPlaceOn"] = true,
    ["placedBy"] = {
        ["itemType"] = v_u_58.PUMPKIN_SEEDS
    },
    ["seeThrough"] = true,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.CROP_PLANT_1, v_u_48.CROP_PLANT_2, v_u_48.CROP_PLANT_3)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8015
        }
    },
    ["disableFlamableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["hideDamageTextures"] = true
}
v1005.block = v1006
v_u_96[v1004] = v1005
local v1007 = v_u_58.PUMPKIN_BOMB_1
local v1008 = {
    ["displayName"] = "Jack o\'Boom",
    ["image"] = v36.PUMPKIN_BOMB
}
local v1009 = {
    ["projectileType"] = function()
        return "pumpkin_bomb_1"
    end,
    ["ammoItemTypes"] = { v_u_58.PUMPKIN_BOMB_1 },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v1008.projectileSource = v1009
v_u_96[v1007] = v1008
local v1010 = v_u_58.PUMPKIN_BOMB_2
local v1011 = {
    ["displayName"] = "Jack o\'Boom (Large)",
    ["image"] = v36.PUMPKIN_BOMB
}
local v1012 = {
    ["projectileType"] = function()
        return "pumpkin_bomb_2"
    end,
    ["ammoItemTypes"] = { v_u_58.PUMPKIN_BOMB_2 },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v1011.projectileSource = v1012
v_u_96[v1010] = v1011
local v1013 = v_u_58.PUMPKIN_BOMB_3
local v1014 = {
    ["displayName"] = "Jack o\'Boom (Huge)",
    ["image"] = v36.PUMPKIN_BOMB
}
local v1015 = {
    ["projectileType"] = function()
        return "pumpkin_bomb_3"
    end,
    ["ammoItemTypes"] = { v_u_58.PUMPKIN_BOMB_3 },
    ["fireDelaySec"] = 0.15,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v1014.projectileSource = v1015
v_u_96[v1013] = v1014
local v1016 = v_u_58.SCEPTER
local v1017 = {
    ["displayName"] = "Scepter of Light",
    ["image"] = v36.SCEPTER,
    ["sharingDisabled"] = true,
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["consumable"] = {
        ["consumeTime"] = 1,
        ["cancelOnDamage"] = true,
        ["animationOverride"] = v_u_7.USE_CROSS,
        ["soundOverride"] = "None",
        ["blockingStatusEffects"] = { v49.GROUNDED }
    }
}
v_u_96[v1016] = v1017
local v1018 = {
    ["displayName"] = "Blind Box",
    ["image"] = "rbxassetid://8273441274",
    ["description"] = "Contains a random item, no refunds",
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
v_u_96[v_u_58.BLIND_BOX] = v1018
v_u_96[v_u_58.CHICKEN_SHOP_ITEM] = {
    ["displayName"] = "Egg",
    ["image"] = "rbxassetid://13990235477"
}
v_u_96[v_u_58.CHICKEN_LEATHER] = {
    ["displayName"] = "Leather Chicken",
    ["image"] = "rbxassetid://13980233415"
}
v_u_96[v_u_58.CHICKEN_IRON] = {
    ["displayName"] = "Iron Chicken",
    ["image"] = "rbxassetid://13980233520"
}
v_u_96[v_u_58.CHICKEN_DIAMOND] = {
    ["displayName"] = "Diamond Chicken",
    ["image"] = "rbxassetid://13980233777"
}
v_u_96[v_u_58.CHICKEN_EMERALD] = {
    ["displayName"] = "Emerald Chicken",
    ["image"] = "rbxassetid://13980233671"
}
v_u_96[v_u_58.CHICKEN_VOID] = {
    ["displayName"] = "Void Chicken",
    ["image"] = "rbxassetid://13980233120"
}
local v1019 = v_u_58.NECROMANCER_STAFF
local v1020 = {
    ["displayName"] = "Necromancer Staff",
    ["image"] = "rbxassetid://11350214469",
    ["sharingDisabled"] = true,
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "deploy_skeleton"
        end,
        ["fireDelaySec"] = 0.6,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.SPIRITORB_PULL_1 }
    },
    ["skins"] = { v21.NECROMANCER_STAFF_CHRISTMAS, v21.NECROMANCER_STAFF_WRECKED }
}
v_u_96[v1019] = v1020
v_u_96[v_u_58.ZENITH_SATELLITE_UPGRADE_2] = {
    ["displayName"] = "Satellite Upgrade 2",
    ["image"] = "rbxassetid://108335485693754",
    ["description"] = "Upgrade Level 2"
}
v_u_96[v_u_58.ZENITH_SATELLITE_UPGRADE_3] = {
    ["displayName"] = "Satellite Upgrade 3",
    ["image"] = "rbxassetid://132702848414950",
    ["description"] = "Upgrade Level 3"
}
local v1021 = v_u_58.SATELLITE_DISH
local v1022 = {
    ["displayName"] = "Satellite Dish",
    ["description"] = "Send signals to disrupt your foes, earning resources on their shop purchases.",
    ["footstepSound"] = v47.STONE,
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://11585161152"
}
local v1023 = {
    ["breakType"] = v2.STONE,
    ["health"] = 20,
    ["collectionServiceTags"] = { "satellite-dish" },
    ["maxPlaced"] = 1,
    ["blastProof"] = true,
    ["unbreakableByTeammates"] = true,
    ["disableEnemyInventoryPickup"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12016
        }
    }
}
v1022.block = v1023
v_u_96[v1021] = v1022
local v1024 = v_u_58.GLUE_PROJECTILE
local v1025 = {
    ["displayName"] = "Gloop",
    ["description"] = "A throwable glue trap! Hit players will be grounded and slowed."
}
local v1026 = {
    ["projectileType"] = function()
        return "glue_trap"
    end,
    ["ammoItemTypes"] = { v_u_58.GLUE_PROJECTILE },
    ["fireDelaySec"] = 1,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.PUNCH
    }
}
v1025.projectileSource = v1026
v1025.maxStackSize = {
    ["amount"] = 3
}
v1025.image = "rbxassetid://11467634330"
v1025.sharingDisabled = true
v_u_96[v1024] = v1025
v_u_96[v_u_58.GLUE_TRAP] = {
    ["displayName"] = "Glue Trap",
    ["description"] = "Glue enemy to the ground",
    ["image"] = "rbxassetid://7192711008",
    ["removeFromCustoms"] = true
}
local v1027 = v_u_58.GLUE_PROJECTILE_CHARGING
local v1028 = {
    ["displayName"] = "Charging Gloop",
    ["description"] = "A throwable glue trap! Hit players will be grounded and slowed."
}
local v1029 = {
    ["projectileType"] = function()
        return "glue_trap_charging"
    end,
    ["ammoItemTypes"] = { v_u_58.GLUE_PROJECTILE_CHARGING },
    ["fireDelaySec"] = 1,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.PUNCH
    }
}
v1028.projectileSource = v1029
v1028.maxStackSize = {
    ["amount"] = 3
}
v1028.image = "rbxassetid://15579506278"
v1028.sharingDisabled = true
v_u_96[v1027] = v1028
v_u_96[v_u_58.GLUE_TRAP_CHARGING] = {
    ["displayName"] = "Glue Trap",
    ["description"] = "Glue enemy to the ground",
    ["image"] = "rbxassetid://7192711008",
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.NOXIOUS_SLEDGEHAMMER] = {
    ["displayName"] = "Noxious Sledgehammer",
    ["description"] = "An infected Sledgehammer that poisons enemies & breaks map blocks.",
    ["disableDroppingInQueues"] = { v20.INFECTED },
    ["image"] = "rbxassetid://11533278150"
}
local v1030 = v_u_58.REPAIR_TOOL
local v1031 = {
    ["displayName"] = "Map Repair",
    ["description"] = "Throw to repair the map from Sledgehammer strikes",
    ["image"] = "rbxassetid://11533277908"
}
local v1032 = {
    ["projectileType"] = function()
        return "repair_tool"
    end,
    ["ammoItemTypes"] = { v_u_58.REPAIR_TOOL },
    ["fireDelaySec"] = 0.3,
    ["maxStrengthChargeSec"] = 0.15,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.PUNCH
    }
}
v1031.projectileSource = v1032
v_u_96[v1030] = v1031
local v1033 = v_u_58.FROSTY_HAMMER
local v1034 = {
    ["displayName"] = "Frosty Hammer",
    ["description"] = "",
    ["image"] = "rbxassetid://11831565831",
    ["sword"] = {
        ["damage"] = 24,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
        ["respectAttackSpeedForEffects"] = false,
        ["applyCooldownOnMiss"] = false,
        ["noApplyDamageCooldown"] = false,
        ["ignoreDamageCooldown"] = false,
        ["hitSound"] = v_u_48.JUGGERNAUT_ATTACK_IMPACT_1,
        ["swingAnimations"] = { v_u_7.FROSTY_HAMMER_1, v_u_7.FROSTY_HAMMER_2, v_u_7.FROSTY_HAMMER_3 },
        ["firstPersonSwingAnimations"] = { v_u_7.FP_SWING_SWORD }
    },
    ["sharingDisabled"] = true,
    ["skins"] = { v21.VOID_ADETUNDE_HAMMER, v21.SNOW_OWL_ADETUNDE_HAMMER }
}
v_u_96[v1033] = v1034
local v1035 = {
    ["displayName"] = "Fishing Rod",
    ["image"] = "rbxassetid://7807308581",
    ["firstPerson"] = {
        ["verticalOffset"] = -1
    }
}
v_u_96[v_u_58.ICE_FISHING_ROD] = v1035
local v1036 = v_u_58.LASER_SWORD
local v1037 = {
    ["displayName"] = "Laser Sword",
    ["image"] = "rbxassetid://11775182286",
    ["sword"] = {
        ["damage"] = 42,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN + 0.1,
        ["respectAttackSpeedForEffects"] = true,
        ["applyCooldownOnMiss"] = true,
        ["swingSounds"] = { v_u_48.LASER_SWORD_SWING_1, v_u_48.LASER_SWORD_SWING_2, v_u_48.LASER_SWORD_SWING_3 },
        ["hitSound"] = v_u_48.LASER_SWORD_HIT,
        ["swingAnimations"] = { v_u_7.LASER_SWORD_SWING_2, v_u_7.LASER_SWORD_SWING_1 }
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    }
}
v_u_96[v1036] = v1037
local v1038 = v_u_58.SOLAR_PANEL
local v1039 = {
    ["displayName"] = "Solar Panel",
    ["image"] = "rbxassetid://11775182157"
}
local v1040 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["collectionServiceTags"] = { "SolarPanel" },
    ["seeThrough"] = true,
    ["health"] = 30,
    ["noSuffocation"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12017
        }
    }
}
v1039.block = v1040
v_u_96[v1038] = v1039
local v1041 = {
    ["displayName"] = "Orbital Satellite Tablet",
    ["description"] = "Controls the Orbital Satellite Laser",
    ["image"] = "rbxassetid://11776141709",
    ["consumable"] = {
        ["consumeTime"] = 0
    }
}
v_u_96[v_u_58.ORBITAL_SATELLITE_TABLET] = v1041
local v1042 = v_u_58.COSMIC_LUCKY_BLOCK
local v1043 = {
    ["displayName"] = "Cosmic Lucky Block"
}
local v1044 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.COSMIC_LUCKY_BLOCK_HIT)
    end,
    ["breakSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.COSMIC_LUCKY_BLOCK_BREAK)
    end,
    ["collectionServiceTags"] = { "LuckyBlock" },
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastProof"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 15
}
local v1045 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        }
    },
    ["categories"] = { v41.COSMIC }
}
v1044.luckyBlock = v1045
v1044.minecraftConversions = {
    {
        ["blockId"] = 12015
    }
}
v1043.block = v1044
v_u_96[v1042] = v1043
local v1046 = v_u_58.METEOR_SHOWER
local v1047 = {
    ["displayName"] = "Meteor Shower",
    ["description"] = "Summon a barrage of meteors!",
    ["image"] = "rbxassetid://11774788978",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "meteor_shower"
        end,
        ["ammoItemTypes"] = { v_u_58.METEOR_SHOWER },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.SWORD_SWING_1 }
    }
}
v_u_96[v1046] = v1047
local v1048 = v_u_58.ORIONS_BELT_BOW
local v1049 = {
    ["displayName"] = "Constellation Bow",
    ["description"] = "Shoots a constellation of explosive stars.",
    ["image"] = "rbxassetid://11774789128"
}
local v1050 = {
    ["projectileType"] = function()
        return "star_projectile"
    end,
    ["ammoItemTypes"] = { v_u_58.STAR },
    ["fireDelaySec"] = 0.3,
    ["maxStrengthChargeSec"] = 0.5,
    ["minStrengthScalar"] = 0.25,
    ["walkSpeedMultiplier"] = 0.25,
    ["launchSound"] = { v_u_48.STAR_FIRE },
    ["chargeBeginSound"] = { v_u_48.CHARGE_TRIPLE_SHOT },
    ["multiShot"] = true,
    ["multiShotCount"] = 3,
    ["multiShotDelay"] = 0.1,
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.BOW_AIM,
        ["fireAnimation"] = v_u_7.BOW_FIRE,
        ["drawAnimation"] = v_u_7.BOW_DRAW
    }
}
v1049.projectileSource = v1050
v_u_96[v1048] = v1049
v_u_96[v_u_58.STAR] = {
    ["displayName"] = "Star",
    ["description"] = "Ammo for the Constellation Bow.",
    ["image"] = "rbxassetid://11774788771",
    ["hotbarFillRight"] = true
}
local v1051 = v_u_58.SPARKLER
local v1052 = {
    ["displayName"] = "Sparkler Sword",
    ["image"] = "rbxassetid://11967707388",
    ["sword"] = {
        ["damage"] = 38,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    }
}
v_u_96[v1051] = v1052
local v1053 = v_u_58.NEW_YEARS_LUCKY_BLOCK
local v1054 = {
    ["displayName"] = "New Years Lucky Block"
}
local v1055 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.LUCKY_BLOCK_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12016
        }
    }
}
local v1056 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        }
    },
    ["categories"] = { v41.NEW_YEARS }
}
v1055.luckyBlock = v1056
v1055.blastProof = true
v1055.disableInventoryPickup = true
v1055.health = 15
v1054.block = v1055
v_u_96[v1053] = v1054
local v1057 = {
    ["displayName"] = "Sparkling Apple Juice",
    ["description"] = "Drink to gain a one minute speed and jump boost!",
    ["image"] = "rbxassetid://11967427500",
    ["consumable"] = {
        ["consumeTime"] = 1,
        ["potion"] = true
    }
}
v_u_96[v_u_58.SPARKLING_APPLE_JUICE] = v1057
local v1058 = v_u_58.TELEPORT_HAT
local v1059 = {
    ["displayName"] = "Teleport Hat",
    ["description"] = "Throw onto target players to gain the a teleport and peek ability.",
    ["image"] = "rbxassetid://12510119944",
    ["sharingDisabled"] = true,
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
local v1060 = {
    ["projectileType"] = function()
        return "teleport_hat"
    end,
    ["ammoItemTypes"] = { v_u_58.TELEPORT_HAT },
    ["fireDelaySec"] = 10,
    ["launchSound"] = { v_u_48.SNOWBALL_THROW },
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["cooldownId"] = v19.HAT_TOSS,
    ["cooldownBar"] = {
        ["colorGradient"] = ColorSequence.new(Color3.fromRGB(235, 95, 180))
    }
}
v1059.projectileSource = v1060
v_u_96[v1058] = v1059
local v1061 = v_u_58.OWL_ORB
local v1062 = {
    ["displayName"] = "OWL",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://12509662844",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["keepOnDeath"] = true,
    ["skins"] = { v21.OWL_ORB_FIRE }
}
v_u_96[v1061] = v1062
local v1063 = v_u_58.OWL_SHOOTER
local v1064 = {
    ["displayName"] = "OWL",
    ["image"] = v36.SCEPTER,
    ["sharingDisabled"] = true,
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
local v1065 = {
    ["projectileType"] = function()
        return "owl_projectile"
    end,
    ["fireDelaySec"] = 0.2,
    ["launchSound"] = { v_u_48.TURRET_SHOOT },
    ["relativeOverride"] = {
        ["relX"] = 0.01,
        ["relY"] = 0.01,
        ["relZ"] = 0.01
    }
}
v1064.projectileSource = v1065
v_u_96[v1063] = v1064
local v1066 = v_u_58.FIRE_SHEEP_STATUE
local v1067 = {
    ["displayName"] = "Fire Sheep Statue",
    ["image"] = "rbxassetid://12291381909"
}
local v1068 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["collectionServiceTags"] = {},
    ["seeThrough"] = true,
    ["unbreakableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["maxPlaced"] = 1,
    ["noSuffocation"] = true,
    ["health"] = 100000,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 656
        }
    }
}
v1067.block = v1068
v_u_96[v1066] = v1067
v_u_96[v_u_58.PURPLE_HAY_BALE] = {
    ["displayName"] = "Purple Hay Bale",
    ["description"] = "Used to feed Fire Sheep",
    ["image"] = "rbxassetid://12291381738"
}
v_u_96[v_u_58.TELEPORTING_HATTER] = {
    ["displayName"] = "Teleporting Hatter",
    ["description"] = "N/A",
    ["image"] = "rbxassetid://12291381738"
}
local v1069 = v_u_58.GOLDEN_APPLE
local v1070 = {
    ["displayName"] = "Golden Apple",
    ["image"] = "rbxassetid://12444096542",
    ["description"] = "Instantly heal, then heal over time and gain a damage reduction buff",
    ["consumable"] = {
        ["consumeTime"] = 1
    },
    ["maxStackSize"] = {
        ["amount"] = 3
    },
    ["skins"] = { v21.GOLDEN_APPLE_VALENTINE }
}
v_u_96[v1069] = v1070
local v1071 = v_u_58.RAINBOW_BOW
local v1072 = {
    ["displayName"] = "Spectrum Bow",
    ["description"] = "Shoot rainbow arrows that split into many different explosions.",
    ["image"] = "rbxassetid://12811607153"
}
local v1073 = {
    ["projectileType"] = function()
        return "rainbow_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.RAINBOW_ARROW },
    ["fireDelaySec"] = 0.3,
    ["maxStrengthChargeSec"] = 0.5,
    ["minStrengthScalar"] = 0.25,
    ["walkSpeedMultiplier"] = 0.25,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["chargeBeginSound"] = { v_u_48.BOW_DRAW },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.BOW_AIM,
        ["fireAnimation"] = v_u_7.BOW_FIRE,
        ["drawAnimation"] = v_u_7.BOW_DRAW
    }
}
v1072.projectileSource = v1073
v_u_96[v1071] = v1072
v_u_96[v_u_58.RAINBOW_ARROW] = {
    ["displayName"] = "Spectrum Arrow",
    ["description"] = "Ammo for the Spectrum Bow.",
    ["image"] = "rbxassetid://12813670017",
    ["hotbarFillRight"] = true
}
local v1074 = v_u_58.RAINBOW_AXE
local v1075 = {
    ["displayName"] = "Radiant Axe",
    ["image"] = "rbxassetid://12811586114",
    ["description"] = "Impale enemies with fragments of light."
}
local v1076 = {
    ["damage"] = 35,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 1.5,
        ["vertical"] = 0.8
    },
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["attackSpeed"] = 0.75,
    ["swingSounds"] = { v_u_48.JUGGERNAUT_ATTACK_SWING_1, v_u_48.JUGGERNAUT_ATTACK_SWING_2 }
}
v1075.sword = v1076
v_u_96[v1074] = v1075
local v1077 = v_u_58.DOUBLE_RAINBOW_BOOTS
local v1078 = {
    ["displayName"] = "Double Rainbow Boots",
    ["image"] = "rbxassetid://12813706493",
    ["description"] = "Jump through seven colors of the rainbow!",
    ["armor"] = {
        ["slot"] = v37.BOOTS,
        ["damageReductionMultiplier"] = 0.24
    }
}
v_u_96[v1077] = v1078
local v1079 = v_u_58.RAINBOW_STAFF
local v1080 = {
    ["displayName"] = "Mirage Staff",
    ["description"] = "Create rainbow bridges that give a speed boost for you and your team!",
    ["image"] = "rbxassetid://12813669578"
}
local v1081 = {}
local v1082 = {
    ["projectileType"] = function()
        return "rainbow_bridge"
    end,
    ["fireDelaySec"] = 8,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.WHIM_CAST_BASE_1, v_u_48.WHIM_CAST_BASE_2, v_u_48.WHIM_CAST_BASE_3 },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.WIZARD_LIGHTNING_CAST
    },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["cooldownId"] = v19.RAINBOW_STAFF
}
v1081.rainbow_bridge = v1082
local v1083 = {
    ["projectileType"] = function()
        return "rainbow_bridge_gadget"
    end,
    ["fireDelaySec"] = 8,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.WHIM_CAST_BASE_1, v_u_48.WHIM_CAST_BASE_2, v_u_48.WHIM_CAST_BASE_3 },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.WIZARD_LIGHTNING_CAST
    },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["cooldownId"] = v19.RAINBOW_STAFF
}
v1081.rainbow_bridge_gadget = v1083
v1080.multiProjectileSource = v1081
v_u_96[v1079] = v1080
local v1084 = {
    ["displayName"] = "Prismatic Backpack",
    ["description"] = "Summon prisms that attack nearby enemies.",
    ["image"] = "rbxassetid://12813669743",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["backpack"] = {
        ["activeAbility"] = false
    }
}
v_u_96[v_u_58.RAINBOW_BACKPACK] = v1084
v_u_96[v_u_58.MURDERER_DAGGER] = {
    ["displayName"] = "Murderer Dagger",
    ["image"] = "rbxassetid://10993361352",
    ["sharingDisabled"] = true
}
local v1085 = v_u_58.SHERIFF_CROSSBOW
local v1086 = {
    ["displayName"] = "Sheriff Crossbow",
    ["sharingDisabled"] = true
}
local v1087 = {
    ["projectileType"] = function()
        return "sheriff_crossbow_arrow"
    end,
    ["fireDelaySec"] = v_u_54.CROSSBOW_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.CROSSBOW_FIRE
    }
}
v1086.projectileSource = v1087
v1086.image = "rbxassetid://7051149016"
v_u_96[v1085] = v1086
local v1088 = {
    ["displayName"] = "Throwing Knife",
    ["description"] = "Deadly.",
    ["image"] = "rbxassetid://8479269961",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "murderer_throwing_knife"
        end,
        ["fireDelaySec"] = 7
    },
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.MURDERER_THROWING_KNIFE] = v1088
local v1089 = v_u_58.BEEHIVE_GRENADE
local v1090 = {
    ["displayName"] = "Beehive Grenade",
    ["description"] = "Explosive beehive that comes with a large kick! Hitting yourself will reset glide cooldown.",
    ["image"] = "rbxassetid://12671499151",
    ["maxStackSize"] = {
        ["amount"] = v31.MAX_BEEHIVE_GRENADES
    },
    ["sharingDisabled"] = true
}
local v1091 = {
    ["projectileType"] = function()
        return "beehive_grenade"
    end,
    ["ammoItemTypes"] = { v_u_58.BEEHIVE_GRENADE },
    ["fireDelaySec"] = 0.3,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.GRENADE_THROW
    }
}
v1090.projectileSource = v1091
v_u_96[v1089] = v1090
local v1092 = v_u_58.RAINBOW_LUCKY_BLOCK
local v1093 = {
    ["displayName"] = "Rainbow Lucky Block"
}
local v1094 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_6, (copy) v_u_48
        return v_u_55(v_u_6.fromList(v_u_48.RAINBOW_LB_HIT_1, v_u_48.RAINBOW_LB_HIT_2, v_u_48.RAINBOW_LB_HIT_3))
    end,
    ["collectionServiceTags"] = { "LuckyBlock" },
    ["blastProof"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 30
}
local v1095 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        }
    },
    ["categories"] = { v41.RAINBOW },
    ["allowedPolarity"] = { v42.NEGATIVE }
}
v1094.luckyBlock = v1095
v1094.minecraftConversions = {
    {
        ["blockId"] = 657
    }
}
v1093.block = v1094
v_u_96[v1092] = v1093
local v1096 = v_u_58.RAINBOW_POT_OF_GOLD
local v1097 = {
    ["displayName"] = "Rainbow Pot of Gold"
}
local v1098 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.RAINBOW_OPEN_POT_OF_GOLD)
    end,
    ["collectionServiceTags"] = { "LuckyBlock" },
    ["blastProof"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 1000
}
local v1099 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        },
        {
            ["luckMultiplier"] = 2
        },
        {
            ["luckMultiplier"] = 4
        }
    },
    ["timeBetweenDropsSec"] = 0.2,
    ["categories"] = { v41.RAINBOW },
    ["allowedPolarity"] = { v42.POSITIVE }
}
v1098.luckyBlock = v1099
v1098.minecraftConversions = {
    {
        ["blockId"] = 658
    }
}
v1097.block = v1098
v_u_96[v1096] = v1097
local v1100 = {
    ["displayName"] = "Rainbow Key",
    ["image"] = "rbxassetid://12811672398",
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    }
}
v_u_96[v_u_58.RAINBOW_KEY] = v1100
v_u_96[v_u_58.DRILL] = {
    ["displayName"] = "Drill",
    ["image"] = v36.Drill_RENDER,
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.DRILL_CONTROLLER] = {
    ["displayName"] = "Tablet",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://7290617886",
    ["keepOnDeath"] = true
}
local v1101 = v_u_58.LANTERN_BLOCK
local v1102 = {
    ["displayName"] = "Lantern Block",
    ["footstepSound"] = v47.STONE
}
local v1103 = {
    ["breakType"] = v2.DIRT,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 123
        }
    },
    ["health"] = 10,
    ["pointLight"] = {
        ["Brightness"] = 0.7,
        ["Color"] = Color3.fromRGB(255, 194, 166),
        ["Shadows"] = true,
        ["Range"] = 27
    }
}
v1102.block = v1103
v_u_96[v1101] = v1102
local v1104 = v_u_58.AQUAMARINE_LANTERN
local v1105 = {
    ["displayName"] = "Aquamarine Lantern",
    ["footstepSound"] = v47.STONE
}
local v1106 = {
    ["breakType"] = v2.DIRT,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 169
        }
    },
    ["health"] = 10,
    ["pointLight"] = {
        ["Brightness"] = 0.7,
        ["Color"] = Color3.fromRGB(219, 255, 255),
        ["Shadows"] = true,
        ["Range"] = 27
    }
}
v1105.block = v1106
v_u_96[v1104] = v1105
local v1107 = v_u_58.GLOWSTONE
local v1108 = {
    ["displayName"] = "Glowstone",
    ["footstepSound"] = v47.STONE
}
local v1109 = {
    ["breakType"] = v2.DIRT,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 89
        }
    },
    ["health"] = 10,
    ["pointLight"] = {
        ["Brightness"] = 0.7,
        ["Color"] = Color3.fromRGB(255, 247, 214),
        ["Shadows"] = true,
        ["Range"] = 27
    }
}
v1108.block = v1109
v_u_96[v1107] = v1108
local v1110 = v_u_58.SAND_SPEAR
local v1111 = {
    ["displayName"] = "Skorp Stinger",
    ["description"] = "Damages enemies and can be stuck to surfaces to bounce players into the air.",
    ["image"] = "rbxassetid://13034426218",
    ["maxStackSize"] = {
        ["amount"] = 99
    }
}
local v1112 = {
    ["projectileType"] = function()
        return "sand_spear"
    end,
    ["ammoItemTypes"] = { v_u_58.SAND_SPEAR },
    ["fireDelaySec"] = 0.7,
    ["maxStrengthChargeSec"] = 0.25,
    ["walkSpeedMultiplier"] = 0.7,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.SAND_SPEAR_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.SPEAR_THROW
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.SPEAR_THROW
    }
}
v1111.projectileSource = v1112
v_u_96[v1110] = v1111
local v1113 = v_u_58.EGG_LAUNCHER
local v1114 = {
    ["displayName"] = "Egg Launcher",
    ["image"] = "rbxassetid://13033176844"
}
local v1115 = {
    ["projectileType"] = function()
        return "easter_egg"
    end,
    ["ammoItemTypes"] = { v_u_58.EASTER_EGG_PROJECTILE },
    ["launchSound"] = { v_u_48.EGG_LAUNCH },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.ROCKET_LAUNCHER_SHOT,
        ["aimAnimation"] = v_u_7.ROCKET_LAUNCHER_IDLE
    },
    ["fireDelaySec"] = 2.2,
    ["activeReload"] = true
}
v1114.projectileSource = v1115
v1114.removeFromCustoms = true
v_u_96[v1113] = v1114
v_u_96[v_u_58.EASTER_EGG_PROJECTILE] = {
    ["displayName"] = "EGG",
    ["image"] = "rbxassetid://13031413739",
    ["hotbarFillRight"] = true
}
local v1116 = v_u_58.FLOWER_BOW
local v1117 = {
    ["displayName"] = "Floral Bow"
}
local v1119 = {
    ["projectileType"] = function(p1118)
        -- upvalues: (copy) v_u_58
        if p1118 == v_u_58.IRON_ARROW then
            return "flower_arrow_iron"
        end
        local _ = p1118 == v_u_58.ARROW
        return "flower_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.ARROW, v_u_58.IRON_ARROW },
    ["fireDelaySec"] = 0.6,
    ["maxStrengthChargeSec"] = 0.65,
    ["minStrengthScalar"] = 0.3333333333333333,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["chargeBeginSound"] = { v_u_48.BOW_DRAW },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.BOW_AIM,
        ["fireAnimation"] = v_u_7.BOW_FIRE,
        ["drawAnimation"] = v_u_7.BOW_DRAW
    },
    ["multiShotChargeTime"] = 0.8
}
v1117.projectileSource = v1119
v1117.firstPerson = {
    ["verticalOffset"] = 0
}
v1117.sharingDisabled = true
v1117.image = v36.FLOWER_BOW
v1117.skins = {
    v21.FLOWER_BOW_FROST_QUEEN,
    v21.GOLD_VICTORIOUS_FLOWER_BOW,
    v21.PLATINUM_VICTORIOUS_FLOWER_BOW,
    v21.DIAMOND_VICTORIOUS_FLOWER_BOW,
    v21.EMERALD_VICTORIOUS_FLOWER_BOW,
    v21.NIGHTMARE_VICTORIOUS_FLOWER_BOW
}
v_u_96[v1116] = v1117
local v1120 = v_u_58.FLOWER_CROSSBOW
local v1121 = {
    ["displayName"] = "Floral Crossbow"
}
local v1123 = {
    ["projectileType"] = function(p1122)
        -- upvalues: (copy) v_u_58
        if p1122 == v_u_58.IRON_ARROW then
            return "flower_crossbow_arrow_iron"
        end
        local _ = p1122 == v_u_58.ARROW
        return "flower_crossbow_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.ARROW, v_u_58.IRON_ARROW },
    ["fireDelaySec"] = v_u_54.CROSSBOW_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.CROSSBOW_FIRE
    },
    ["multiShotChargeTime"] = 1.3
}
v1121.projectileSource = v1123
v1121.image = v36.FLOWER_CROSSBOW
v1121.sharingDisabled = true
v1121.skins = {
    v21.FLOWER_CROSSBOW_FROST_QUEEN,
    v21.GOLD_VICTORIOUS_FLOWER_CROSSBOW,
    v21.PLATINUM_VICTORIOUS_FLOWER_CROSSBOW,
    v21.DIAMOND_VICTORIOUS_FLOWER_CROSSBOW,
    v21.EMERALD_VICTORIOUS_FLOWER_CROSSBOW,
    v21.NIGHTMARE_VICTORIOUS_FLOWER_CROSSBOW
}
v_u_96[v1120] = v1121
local v1124 = v_u_58.FLOWER_HEADHUNTER
local v1125 = {
    ["displayName"] = "Floral Headhunter",
    ["description"] = "Nature\'s adaptation of the legendary Headhunter. Attracts a swarm of bees!"
}
local v1127 = {
    ["projectileType"] = function(p1126)
        -- upvalues: (copy) v_u_58
        if p1126 == v_u_58.FIREWORK_ARROW then
            return "headhunter_firework_arrow"
        end
        if p1126 == v_u_58.IRON_ARROW then
            return "flower_headhunter_arrow_iron"
        end
        local _ = p1126 == v_u_58.ARROW
        return "flower_headhunter_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.FIREWORK_ARROW, v_u_58.ARROW, v_u_58.IRON_ARROW },
    ["fireDelaySec"] = v_u_54.HEADHUNTER_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = {
        v_u_48.HEADHUNTER_SHOOT_1,
        v_u_48.HEADHUNTER_SHOOT_2,
        v_u_48.HEADHUNTER_SHOOT_3,
        v_u_48.HEADHUNTER_SHOOT_4
    },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM_FP,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT_FP
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT
    }
}
v1125.projectileSource = v1127
v1125.sharingDisabled = true
v1125.image = "rbxassetid://13887697290"
v1125.skins = {
    v21.FLOWER_HEADHUNTER_FROST_QUEEN,
    v21.GOLD_VICTORIOUS_FLOWER_HEADHUNTER,
    v21.PLATINUM_VICTORIOUS_FLOWER_HEADHUNTER,
    v21.DIAMOND_VICTORIOUS_FLOWER_HEADHUNTER,
    v21.EMERALD_VICTORIOUS_FLOWER_HEADHUNTER,
    v21.NIGHTMARE_VICTORIOUS_FLOWER_HEADHUNTER
}
v_u_96[v1124] = v1125
local v1128 = v_u_58.DESERT_POT
local v1129 = {
    ["displayName"] = "Pot",
    ["footstepSound"] = v47.STONE
}
local v1130 = {
    ["breakType"] = v2.STONE,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8023
        }
    }
}
v1129.block = v1130
v_u_96[v1128] = v1129
local v1131 = v_u_58.PIRATE_GUNPOWDER_BARREL
local v1132 = {
    ["displayName"] = "Gunpowder Barrel",
    ["image"] = "rbxassetid://13465460559",
    ["footstepSound"] = v47.WOOD
}
local v1133 = {
    ["breakType"] = v2.STONE,
    ["collectionServiceTags"] = { "ExplosiveBarrel" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8024
        }
    }
}
v1132.block = v1133
v1132.maxStackSize = {
    ["amount"] = 10
}
v_u_96[v1131] = v1132
local v1134 = {
    ["displayName"] = "Health Orange",
    ["image"] = "rbxassetid://13465460651",
    ["description"] = "Consume to heal a small amount",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["requiresMissingHealth"] = true,
        ["consumeCooldown"] = 0.5
    },
    ["maxStackSize"] = {
        ["amount"] = 4
    }
}
v_u_96[v_u_58.ORANGE] = v1134
local v1135 = v_u_58.TREASURE_CHEST
local v1136 = {
    ["displayName"] = "Treasure Chest",
    ["image"] = "rbxassetid://13547810867",
    ["description"] = "Open for a chance at pirate\'s treasure",
    ["consumable"] = {
        ["consumeTime"] = 0.6,
        ["consumeCooldown"] = 0.5,
        ["soundOverride"] = "",
        ["animationOverride"] = v_u_7.USE_CROSS,
        ["walkSpeedMultiplier"] = 0
    }
}
v_u_96[v1135] = v1136
v_u_96[v_u_58.HEADHUNT_SKULL] = {
    ["displayName"] = "Skull",
    ["image"] = v36.CRYPT_SKULL_RENDER,
    ["sharingDisabled"] = true,
    ["hotbarFillRight"] = true,
    ["description"] = "The skull of an enemy. Turn in at drop points to earn points",
    ["disableDroppedItemMerge"] = true
}
local v1137 = v_u_58.MYSTERIOUS_BOX
local v1138 = {
    ["displayName"] = "Mysterious Box",
    ["image"] = "rbxassetid://8273441274",
    ["consumable"] = {
        ["consumeTime"] = 0.5,
        ["soundOverride"] = "None",
        ["animationOverride"] = v_u_7.OPEN_CRATE
    },
    ["sharingDisabled"] = true
}
v_u_96[v1137] = v1138
local v1139 = v_u_58.WIZARD_STICK
local v1140 = {
    ["displayName"] = "Magic Wand",
    ["description"] = "Actually just an ordinary twig that can be found anywhere",
    ["image"] = "rbxassetid://13420388305",
    ["sword"] = {
        ["damage"] = 13,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["keepOnDeath"] = true
}
v_u_96[v1139] = v1140
local v1141 = v_u_58.MERCHANT_REGION
local v1142 = {
    ["displayName"] = "Merchant Region Block",
    ["block"] = {
        ["breakType"] = v2.STONE
    }
}
v_u_96[v1141] = v1142
v_u_96[v_u_58.MERCHANT_DAMAGE_BUFF] = {
    ["displayName"] = "Damage Buff",
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.MERCHANT_HEAL_BUFF] = {
    ["displayName"] = "Healing Buff",
    ["removeFromCustoms"] = true
}
local v1143 = v_u_58.HEADHUNTER
local v1144 = {
    ["displayName"] = "Headhunter",
    ["description"] = "A legendary weapon of unmatched precision and deadly force, the Headhunter was crafted for the expert hunter. Hit headshots for massive damage!"
}
local v1146 = {
    ["projectileType"] = function(p1145)
        -- upvalues: (copy) v_u_58
        if p1145 == v_u_58.FIREWORK_ARROW then
            return "headhunter_firework_arrow"
        end
        if p1145 == v_u_58.IRON_ARROW then
            return "headhunter_arrow_iron"
        end
        local _ = p1145 == v_u_58.ARROW
        return "headhunter_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.FIREWORK_ARROW, v_u_58.ARROW, v_u_58.IRON_ARROW },
    ["fireDelaySec"] = v_u_54.HEADHUNTER_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = {
        v_u_48.HEADHUNTER_SHOOT_1,
        v_u_48.HEADHUNTER_SHOOT_2,
        v_u_48.HEADHUNTER_SHOOT_3,
        v_u_48.HEADHUNTER_SHOOT_4
    },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM_FP,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT_FP
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT
    },
    ["multiShotChargeTime"] = 2
}
v1144.projectileSource = v1146
v1144.replaces = { v_u_58.WOOD_CROSSBOW }
v1144.skins = { v21.TACTICAL_HEADHUNTER_LUNAR_DRAGON, v21.HEADHUNTER_VALENTINE_VANESSA, v21.HEADHUNTER_DEMON_EMPRESS }
v1144.sharingDisabled = true
v1144.image = "rbxassetid://13421692306"
v_u_96[v1143] = v1144
local v1147 = v_u_58.FORGE
local v1148 = {
    ["displayName"] = "Forge"
}
local v1149 = {
    ["blastProof"] = true,
    ["breakType"] = v2.STONE,
    ["health"] = 20,
    ["collectionServiceTags"] = { "forge-block" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8025
        }
    }
}
v1148.block = v1149
v_u_96[v1147] = v1148
local v1150 = v_u_58.FLYING_LUCKY_BLOCK
local v1151 = {
    ["displayName"] = "Flying Lucky Block",
    ["image"] = "rbxassetid://17182946276"
}
local v1152 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.LUCKY_BLOCK_BREAK)
    end,
    ["blastProof"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 15
}
local v1153 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        }
    },
    ["categories"] = { v41.FLYING }
}
v1152.luckyBlock = v1153
v1151.block = v1152
v_u_96[v1150] = v1151
local v1154 = {
    ["displayName"] = "Flying Cloud",
    ["image"] = "rbxassetid://13619831247",
    ["description"] = "Weaponized floating cloud of destruction",
    ["consumable"] = {
        ["consumeTime"] = 1,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    }
}
v_u_96[v_u_58.FLYING_CLOUD_DEPLOY] = v1154
local v1155 = v_u_58.SKY_SCYTHE
local v1156 = {
    ["displayName"] = "Sky Scythe",
    ["sword"] = {
        ["damage"] = 50,
        ["attackSpeed"] = 1,
        ["applyCooldownOnMiss"] = true,
        ["respectAttackSpeedForEffects"] = true,
        ["swingAnimations"] = { v_u_7.INFERNO_SWORD_SPIN },
        ["firstPersonSwingAnimations"] = { v_u_7.FP_INFERNO_SWORD_SPIN },
        ["swingSounds"] = { v_u_48.SKY_SCYTHE_1, v_u_48.SKY_SCYTHE_2, v_u_48.SKY_SCYTHE_3 }
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://13629036006"
}
v_u_96[v1155] = v1156
local v1157 = {
    ["displayName"] = "Flying Backpack",
    ["description"] = "It\'s got wings!",
    ["image"] = "rbxassetid://13630754419",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["backpack"] = {
        ["cooldown"] = 1,
        ["activeAbility"] = true
    }
}
v_u_96[v_u_58.FLYING_BACKPACK] = v1157
local v1158 = v_u_58.IMPULSE_GUN
local v1159 = {
    ["displayName"] = "Impulse Gun",
    ["description"] = "Use with caution.",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["thirdPerson"] = {
        ["holdAnimation"] = v_u_7.ROCKET_LAUNCHER_IDLE
    },
    ["image"] = v36.IMPULSE_GUN_RENDER
}
v_u_96[v1158] = v1159
v_u_96[v_u_58.WOOD_DAGGER] = v67({
    ["displayName"] = "Wood Dagger",
    ["description"] = "Dash behind your enemy and strike them in the back for bonus damage.",
    ["image"] = v36.WOOD_DAGGER,
    ["damage"] = 8
})
v_u_96[v_u_58.STONE_DAGGER] = v67({
    ["displayName"] = "Stone Dagger",
    ["description"] = "Dash behind your enemy and strike them in the back for bonus damage. Downgrades to Wood Dagger on death.",
    ["image"] = v36.STONE_DAGGER,
    ["replaces"] = { v_u_58.WOOD_DAGGER },
    ["damage"] = 11
})
v_u_96[v_u_58.IRON_DAGGER] = v67({
    ["displayName"] = "Iron Dagger",
    ["description"] = "Dash behind your enemy and strike them in the back for bonus damage. Downgrades to Stone Dagger on death.",
    ["image"] = v36.IRON_DAGGER,
    ["replaces"] = { v_u_58.WOOD_DAGGER, v_u_58.STONE_DAGGER },
    ["damage"] = 15
})
v_u_96[v_u_58.DIAMOND_DAGGER] = v67({
    ["displayName"] = "Diamond Dagger",
    ["description"] = "Dash behind your enemy and strike them in the back for bonus damage. Downgrades to Iron Dagger on death.",
    ["image"] = v36.DIAMOND_DAGGER,
    ["replaces"] = { v_u_58.WOOD_DAGGER, v_u_58.STONE_DAGGER, v_u_58.IRON_DAGGER },
    ["damage"] = 21
})
local v1160 = v_u_58.MYTHIC_DAGGER
local v1161 = {
    ["displayName"] = "Deathbloom",
    ["image"] = v36.MYTHIC_DAGGER,
    ["replaces"] = {
        v_u_58.WOOD_DAGGER,
        v_u_58.STONE_DAGGER,
        v_u_58.IRON_DAGGER,
        v_u_58.DIAMOND_DAGGER
    },
    ["damage"] = 28
}
local v1162 = {
    ["collection"] = v38.MYTHIC_WEAPON
}
local v1163 = v13[v_u_58.MYTHIC_DAGGER].poisonDurationSec
v1162.summary = "Dagger that applies " .. tostring(v1163) .. "s of poison on hit. Downgrades to Diamond Dagger on death."
v1161.itemCatalog = v1162
v_u_96[v1160] = v67(v1161)
v_u_96[v_u_58.WOOD_SCYTHE] = v87({
    ["displayName"] = "Wood Scythe",
    ["description"] = "Attack enemies from farther away and pull them toward you.",
    ["image"] = v36.WOOD_SCYTHE,
    ["damage"] = 20
})
v_u_96[v_u_58.STONE_SCYTHE] = v87({
    ["displayName"] = "Stone Scythe",
    ["description"] = "Attack enemies from farther away and pull them toward you. Downgrades to Wood Scythe on death.",
    ["image"] = v36.STONE_SCYTHE,
    ["replaces"] = { v_u_58.STONE_SCYTHE },
    ["damage"] = 25
})
v_u_96[v_u_58.IRON_SCYTHE] = v87({
    ["displayName"] = "Iron Scythe",
    ["description"] = "Attack enemies from farther away and pull them toward you. Downgrades to Stone Scythe on death.",
    ["image"] = v36.IRON_SCYTHE,
    ["replaces"] = { v_u_58.STONE_SCYTHE, v_u_58.STONE_SCYTHE },
    ["damage"] = 30
})
v_u_96[v_u_58.DIAMOND_SCYTHE] = v87({
    ["displayName"] = "Diamond Scythe",
    ["description"] = "Attack enemies from farther away and pull them toward you. Downgrades to Iron Scythe on death.",
    ["image"] = v36.DIAMOND_SCYTHE,
    ["replaces"] = { v_u_58.STONE_SCYTHE, v_u_58.STONE_SCYTHE, v_u_58.IRON_SCYTHE },
    ["damage"] = 42
})
local v1164 = v_u_58.MYTHIC_SCYTHE
local v1165 = {
    ["displayName"] = "Nocturne",
    ["image"] = v36.MYTHIC_SCYTHE,
    ["replaces"] = {
        v_u_58.STONE_SCYTHE,
        v_u_58.STONE_SCYTHE,
        v_u_58.IRON_SCYTHE,
        v_u_58.DIAMOND_SCYTHE
    },
    ["damage"] = 54,
    ["description"] = "The Nocturne\'s charged attack ignores a large amount of the enemy\'s armor. Downgrades to Diamond Scythe on death.",
    ["itemCatalog"] = {
        ["collection"] = v38.MYTHIC_WEAPON
    }
}
v_u_96[v1164] = v87(v1165)
local v1166 = {
    ["displayName"] = "Hot Air Balloon",
    ["image"] = "rbxassetid://13701861348",
    ["description"] = "Take your whole team to the skies!",
    ["consumable"] = {
        ["consumeTime"] = 2,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    }
}
v_u_96[v_u_58.HOT_AIR_BALLOON_DEPLOY] = v1166
local v1167 = v_u_58.SPIRIT_BRIDGE
local v1168 = {
    ["displayName"] = "Spirit Bridge",
    ["description"] = "",
    ["image"] = "rbxassetid://13835255693",
    ["sharingDisabled"] = true,
    ["maxStackSize"] = {
        ["amount"] = 2
    },
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "spirit_bridge"
        end,
        ["ammoItemTypes"] = { v_u_58.SPIRIT_BRIDGE },
        ["fireDelaySec"] = 1,
        ["maxStrengthChargeSec"] = 1,
        ["minStrengthScalar"] = 0.5,
        ["walkSpeedMultiplier"] = 0.6,
        ["launchSound"] = { v_u_48.NEW_BOW_FIRE }
    }
}
v_u_96[v1167] = v1168
local v1169 = v_u_58.TEAM_CRATE
local v1170 = {
    ["displayName"] = "Team Crate",
    ["image"] = "rbxassetid://14146743816",
    ["footstepSound"] = v47.WOOD,
    ["block"] = {
        ["blastProof"] = true,
        ["breakType"] = v2.WOOD,
        ["health"] = 30,
        ["collectionServiceTags"] = { "chest", "team-crate" },
        ["seeThrough"] = true
    }
}
v_u_96[v1169] = v1170
local v1171 = v_u_58.OG_WOOD_CROSSBOW
local v1172 = {
    ["displayName"] = "Crossbow"
}
local v1174 = {
    ["projectileType"] = function(p1173)
        -- upvalues: (copy) v_u_58
        if p1173 == v_u_58.FIREWORK_ARROW then
            return "crossbow_firework_arrow"
        end
        if p1173 == v_u_58.VOLLEY_ARROW then
            return "volley_arrow"
        end
        if p1173 == v_u_58.IRON_ARROW then
            return "crossbow_arrow_iron"
        end
        local _ = p1173 == v_u_58.ARROW
        return "crossbow_arrow"
    end,
    ["ammoItemTypes"] = { v_u_58.ARROW },
    ["fireDelaySec"] = v_u_54.CROSSBOW_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.CROSSBOW_FIRE
    },
    ["multiShotChargeTime"] = 1.6
}
v1172.projectileSource = v1174
v1172.image = "rbxassetid://6869295265"
v1172.skins = { v21.WOOD_CROSSBOW_DEMON_EMPRESS_VANESSA, v21.FLOWER_CROSSBOW_FROST_QUEEN }
v1172.sharingDisabled = true
v_u_96[v1171] = v1172
local v1175 = v_u_58.OG_DIAMOND_SWORD
local v1176 = {
    ["displayName"] = "Diamond Sword",
    ["image"] = "rbxassetid://6875481413",
    ["sword"] = {
        ["damage"] = 35,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true
}
v_u_96[v1175] = v1176
local v1177 = v_u_58.OG_EMERALD_SWORD
local v1178 = {
    ["displayName"] = "Emerald Sword",
    ["image"] = "rbxassetid://6931677551",
    ["sword"] = {
        ["damage"] = 47,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true
}
v_u_96[v1177] = v1178
local v1179 = v_u_58.CAN_OF_BEANS
local v1180 = {
    ["displayName"] = "Can of beans",
    ["description"] = "Explosive!",
    ["image"] = v36.CAN_OF_BEANS,
    ["consumable"] = {
        ["consumeTime"] = 0.5
    }
}
v_u_96[v1179] = v1180
local v1181 = v_u_58.CONDIMENT_GUN
local v1182 = {
    ["displayName"] = "Condiment Gun",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://14191270899",
    ["firstPerson"] = {
        ["holdAnimation"] = v_u_7.CONDIMENT_GUN_FP
    }
}
v_u_96[v1181] = v1182
local v1183 = v_u_58.HOTDOG_BAT
local v1184 = {
    ["displayName"] = "Hotdog Bat",
    ["description"] = "The time has come to play with your food",
    ["image"] = "rbxassetid://14191270696"
}
local v1185 = {
    ["damage"] = v12.ATTACK_DAMAGE,
    ["attackSpeed"] = v12.ATTACK_SPEED,
    ["attackRange"] = v12.ATTACK_RANGE,
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["swingSounds"] = {},
    ["swingAnimations"] = { v_u_7.INFERNO_SWORD_SPIN },
    ["firstPersonSwingAnimations"] = { v_u_7.FP_INFERNO_SWORD_SPIN },
    ["knockbackMultiplier"] = {
        ["horizontal"] = v12.HORIZONTAL_KNOCKBACK,
        ["vertical"] = v12.VERTICAL_KNOCKBACK
    }
}
local v1186 = {
    ["maxChargeTimeSec"] = v12.MAX_CHARGE_TIME,
    ["minChargeTimeSec"] = v12.MIN_CHARGE_TIME,
    ["attackCooldown"] = v12.CHARGED_ATTACK_COOLDOWN,
    ["bonusKnockback"] = {
        ["horizontal"] = v12.HORIZONTAL_KNOCKBACK,
        ["vertical"] = v12.VERTICAL_KNOCKBACK
    },
    ["walkSpeedModifier"] = {
        ["multiplier"] = v12.CHARGED_WALK_SPEED_MULTIPLIER
    },
    ["chargingEffects"] = {
        ["thirdPersonAnim"] = v_u_7.INFERNO_SWORD_CHARGE,
        ["firstPersonAnim"] = v_u_7.FP_INFERNO_SWORD_CHARGE,
        ["sound"] = v_u_48.FRYING_PAN_CHARGE
    },
    ["chargedSwingAnimations"] = { v_u_7.INFERNO_SWORD_SPIN },
    ["firstPersonChargedSwingAnimations"] = { v_u_7.FP_INFERNO_SWORD_SPIN },
    ["chargedSwingSounds"] = {}
}
v1185.chargedAttack = v1186
v1184.sword = v1185
v1184.firstPerson = {
    ["scale"] = 0.8,
    ["verticalOffset"] = -1.2
}
v_u_96[v1183] = v1184
local v1187 = v_u_58.BACON_BLADE
local v1188 = {
    ["displayName"] = "Bacon Blade",
    ["image"] = "rbxassetid://14839882835",
    ["sword"] = {
        ["damage"] = v9.ATTACK_DAMAGE,
        ["attackSpeed"] = v9.SWING_COOLDOWN,
        ["swingSounds"] = {
            v_u_48.BACON_BLADE_SWING_1,
            v_u_48.BACON_BLADE_SWING_2,
            v_u_48.BACON_BLADE_SWING_3,
            v_u_48.BACON_BLADE_SWING_4
        },
        ["hitSound"] = v_u_48.BACON_BLADE_HIT_2
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true
}
v_u_96[v1187] = v1188
local v1189 = v_u_58.FOOD_LUCKY_BLOCK
local v1190 = {
    ["displayName"] = "Food Lucky Block"
}
local v1191 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.LUCKY_BLOCK_BREAK)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastProof"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 15
}
local v1192 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        }
    },
    ["categories"] = { v41.FOOD }
}
v1191.luckyBlock = v1192
v1190.block = v1191
v_u_96[v1189] = v1190
local v1193 = v_u_58.FORK_TRIDENT
local v1194 = {
    ["displayName"] = "Fork Trident",
    ["description"] = "A trident worthy of a feast",
    ["image"] = "rbxassetid://14315230530",
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
local v1195 = {
    ["damage"] = v39.BASE_ATTACK_DAMAGE,
    ["knockbackMultiplier"] = {
        ["horizontal"] = v39.KNOCKBACK_HORIZONTAL_MULTIPLIER
    },
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN,
    ["attackRange"] = v39.ATTACK_RANGE,
    ["swingAnimations"] = { v_u_7.TWIRLBLADE_ATTACK_1, v_u_7.TWIRLBLADE_ATTACK_2 },
    ["firstPersonSwingAnimations"] = { v_u_7.FP_TWIRLBLADE_ATTACK_1, v_u_7.FP_TWIRLBLADE_ATTACK_2 },
    ["swingSounds"] = {}
}
local v1196 = {
    ["minChargeTimeSec"] = v39.MIN_CHARGE_TIME,
    ["maxChargeTimeSec"] = v39.MAX_CHARGE_TIME,
    ["attackCooldown"] = v39.CHARGED_ATTACK_COOLDOWN,
    ["walkSpeedModifier"] = {
        ["multiplier"] = v39.CHARGING_WALK_SPEED_MULTIPLIER
    },
    ["chargedSwingAnimations"] = { v_u_7.SPEAR_THROW },
    ["firstPersonChargedSwingAnimations"] = { v_u_7.FP_DAGGER_SLASH },
    ["chargedSwingSounds"] = { v_u_48.FORK_TRIDENT_THROW },
    ["chargingEffects"] = {
        ["firstPersonAnim"] = v_u_7.FP_DAGGER_CHARGE,
        ["thirdPersonAnim"] = v_u_7.SPEAR_STARTUP
    }
}
v1195.chargedAttack = v1196
v1194.sword = v1195
v1194.projectileSource = {
    ["projectileType"] = function()
        return "fork_trident_projectile"
    end,
    ["ammoItemTypes"] = { v_u_58.FORK_TRIDENT },
    ["fireDelaySec"] = 1
}
v1194.firstPerson = {
    ["scale"] = 0.8
}
v_u_96[v1193] = v1194
v_u_96[v_u_58.FORK_TRIDENT_PROJECTILE] = {
    ["displayName"] = "Fork Trident Projectile"
}
local v1197 = v_u_58.GUMBALL_LAUNCHER
local v1198 = {
    ["displayName"] = "Gumball Launcher",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "gumball"
        end,
        ["fireDelaySec"] = 1.5,
        ["walkSpeedMultiplier"] = 0.35,
        ["launchSound"] = { v_u_48.GUMBALL_LAUNCHER_SHOT_1, v_u_48.GUMBALL_LAUNCHER_SHOT_2, v_u_48.GUMBALL_LAUNCHER_SHOT_3 },
        ["multiShotChargeTime"] = 1
    },
    ["thirdPerson"] = {
        ["holdAnimation"] = v_u_7.ROCKET_LAUNCHER_IDLE
    },
    ["firstPerson"] = {
        ["verticalOffset"] = 0
    },
    ["image"] = "rbxassetid://14193833399"
}
v_u_96[v1197] = v1198
local v1199 = v_u_58.GUM_BLOCK
local v1200 = {
    ["displayName"] = "Gum Block",
    ["footstepSound"] = v47.GUM
}
local v1201 = {
    ["breakType"] = v2.WOOL,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GUMBALL_LAUNCHER_SPLATTER_1)
    end,
    ["disableInventoryPickup"] = true,
    ["disableEnemyInventoryPickup"] = true,
    ["health"] = 4,
    ["collectionServiceTags"] = { "GumBlock" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8026
        }
    }
}
v1200.block = v1201
v_u_96[v1199] = v1200
local v1202 = v_u_58.RADIOACTIVE_PLANT
local v1203 = {
    ["displayName"] = "Radioactive Plant",
    ["image"] = "rbxassetid://14399105222",
    ["description"] = "Consumes Iron and Diamonds to deal radiation damage to nearby enemy players and blocks."
}
local v1204 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["collectionServiceTags"] = { "radioactive-plant" },
    ["seeThrough"] = true,
    ["health"] = 18,
    ["disableInventoryPickup"] = true,
    ["maxPlaced"] = 2,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8027
        }
    }
}
v1203.block = v1204
v_u_96[v1202] = v1203
local v1205 = v_u_58.BARBARIAN_HELMET
local v1206 = {
    ["displayName"] = "Barbarian Helmet",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 1
    },
    ["image"] = "rbxassetid://14559460074",
    ["sharingDisabled"] = true,
    ["removeFromCustoms"] = true
}
v_u_96[v1205] = v1206
local v1207 = v_u_58.NEST
local v1208 = {
    ["displayName"] = "Nest",
    ["block"] = {
        ["breakType"] = v2.WOOL
    }
}
v_u_96[v1207] = v1208
local v1209 = v_u_58.BROKEN_ARROW_BOARD
local v1210 = {
    ["displayName"] = "Broken Arrow Board",
    ["block"] = {
        ["breakType"] = v2.WOOL,
        ["collectionServiceTags"] = { "ArrowBoard" }
    }
}
v_u_96[v1209] = v1210
local v1211 = v_u_58.ARROW_BOARD
local v1212 = {
    ["displayName"] = "Arrow Board",
    ["block"] = {
        ["breakType"] = v2.WOOL,
        ["collectionServiceTags"] = { "ArrowBoard" }
    }
}
v_u_96[v1211] = v1212
v_u_96[v_u_58.WOOD_GAUNTLETS] = v95({
    ["displayName"] = "Wood Gauntlets",
    ["description"] = "Punch rapidly to deal more damage with combos.",
    ["image"] = "rbxassetid://14839095983",
    ["damage"] = 16
})
v_u_96[v_u_58.STONE_GAUNTLETS] = v95({
    ["displayName"] = "Stone Gauntlets",
    ["description"] = "Punch rapidly to deal more damage with combos. Downgrades to Wood Gauntlets upon death.",
    ["image"] = "rbxassetid://14839096152",
    ["replaces"] = { v_u_58.WOOD_GAUNTLETS },
    ["damage"] = 20
})
v_u_96[v_u_58.IRON_GAUNTLETS] = v95({
    ["displayName"] = "Iron Gauntlets",
    ["description"] = "Punch rapidly to deal more damage with combos. Downgrades to Stone Gauntlets upon death.",
    ["image"] = "rbxassetid://14839144410",
    ["replaces"] = { v_u_58.WOOD_GAUNTLETS, v_u_58.STONE_GAUNTLETS },
    ["damage"] = 24
})
v_u_96[v_u_58.DIAMOND_GAUNTLETS] = v95({
    ["displayName"] = "Diamond Gauntlets",
    ["description"] = "Punch rapidly to deal more damage with combos. Downgrades to Iron Gauntlets upon death.",
    ["image"] = "rbxassetid://14839096364",
    ["replaces"] = { v_u_58.WOOD_GAUNTLETS, v_u_58.STONE_GAUNTLETS, v_u_58.IRON_GAUNTLETS },
    ["damage"] = 34
})
local v1213 = v_u_58.MYTHIC_GAUNTLETS
local v1214 = {
    ["displayName"] = "Warfists",
    ["image"] = "rbxassetid://14839096268",
    ["replaces"] = {
        v_u_58.WOOD_GAUNTLETS,
        v_u_58.STONE_GAUNTLETS,
        v_u_58.IRON_GAUNTLETS,
        v_u_58.DIAMOND_GAUNTLETS
    },
    ["damage"] = 45,
    ["description"] = "The Warfists have a charged attack that breaks blocks and damages enemies in front of you. Downgrades to Diamond Gauntlets upon death.",
    ["itemCatalog"] = {
        ["collection"] = v38.MYTHIC_WEAPON
    }
}
v_u_96[v1213] = v95(v1214)
local v1215 = v_u_58.SPIDER_WEB
local v1216 = {
    ["displayName"] = "Spider Web",
    ["description"] = "When an enemy steps on the Spider Web trap they will be stunned and attacked by a spider.",
    ["image"] = "rbxassetid://15056224013"
}
local v1217 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["seeThrough"] = true,
    ["health"] = 1,
    ["collectionServiceTags"] = { "spider_web" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8003
        }
    },
    ["maxPlaced"] = 7
}
v1216.block = v1217
v1216.maxStackSize = {
    ["amount"] = 7
}
v_u_96[v1215] = v1216
v_u_96[v_u_58.BLOCK_RADAR] = {
    ["displayName"] = "Block Radar",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://14985503526"
}
v_u_96[v_u_58.BLOCK_HUNT_COIN] = {
    ["displayName"] = "Coin",
    ["displayNameColor"] = Color3.fromRGB(255, 209, 0),
    ["image"] = "rbxassetid://14978481303",
    ["hotbarFillRight"] = true,
    ["keepOnDeath"] = true,
    ["sharingDisabled"] = true,
    ["disableDroppingInQueues"] = { v20.BLOCK_HUNT }
}
local v1218 = v_u_58.BARREL
local v1219 = {
    ["displayName"] = "Barrel",
    ["footstepSound"] = v47.WOOD
}
local v1220 = {
    ["breakType"] = v2.WOOD,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 84
        }
    }
}
v1219.block = v1220
v_u_96[v1218] = v1219
local v1221 = v_u_58.HAYBALE
local v1222 = {
    ["displayName"] = "Haybale",
    ["footstepSound"] = v47.GRASS
}
local v1223 = {
    ["breakType"] = v2.DIRT,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 170
        }
    }
}
v1222.block = v1223
v_u_96[v1221] = v1222
local v1224 = v_u_58.PUMPKIN_BLOCK
local v1225 = {
    ["displayName"] = "Pumpkin Block",
    ["footstepSound"] = v47.WOOD
}
local v1226 = {
    ["breakType"] = v2.WOOD,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 86
        }
    }
}
v1225.block = v1226
v_u_96[v1224] = v1225
local v1227 = {
    ["displayName"] = "Chameleon Fruit",
    ["image"] = "rbxassetid://14983595388",
    ["consumable"] = {
        ["consumeTime"] = 1
    },
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.BLOCK_HUNT_CHAMELEON_FRUIT] = v1227
local v1228 = v_u_58.HUNTERS_ECHO
local v1229 = {
    ["displayName"] = "Hunter\'s Echo",
    ["description"] = "Emit a global echo that will briefly reveal all hiders",
    ["image"] = "rbxassetid://14978481226",
    ["consumable"] = {
        ["consumeTime"] = 2,
        ["cancelOnDamage"] = true,
        ["animationOverride"] = v_u_7.ZEN_HOVER,
        ["soundOverride"] = v_u_48.SPIRIT_EFFECT,
        ["disableSoundRepeat"] = true,
        ["closeOnComplete"] = true
    }
}
v_u_96[v1228] = v1229
local v1230 = v_u_58.WARLOCK_STAFF
local v1231 = {
    ["displayName"] = "Warlock Staff",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://15186577197",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["keepOnDeath"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.7,
        ["verticalOffset"] = 0.6
    },
    ["skins"] = { v21.WARLOCK_STAFF_CHRISTMAS_SPIRIT }
}
v_u_96[v1230] = v1231
local v1232 = v_u_58.CURSED_COFFIN
local v1233 = {
    ["displayName"] = "Cursed Coffin",
    ["image"] = "rbxassetid://15105666015",
    ["description"] = "A chilling chest. Place it down to embrace the night...and become a vampire.",
    ["footstepSound"] = v47.WOOD,
    ["block"] = {
        ["breakType"] = v2.WOOD,
        ["placeSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.CURSED_COFFIN_PLACE)
        end,
        ["hitSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
        end,
        ["blastProof"] = true,
        ["blastResistance"] = 10000000,
        ["health"] = 25,
        ["seeThrough"] = true,
        ["disableInventoryPickup"] = true,
        ["unbreakableByTeammates"] = true,
        ["collectionServiceTags"] = { "cursed-coffin" },
        ["maxPlaced"] = 1
    },
    ["itemCatalog"] = {
        ["collection"] = v38.HALLOWEEN_LUCKY_BLOCK
    }
}
v_u_96[v1232] = v1233
local v1234 = v_u_58.GRIMOIRE
local v1235 = {
    ["displayName"] = "Grimoire",
    ["image"] = "rbxassetid://15107951466",
    ["description"] = "An ancient tome of dark magic. Gain a long-term power and a temporary curse.",
    ["consumable"] = {
        ["consumeTime"] = 1.5,
        ["animationOverride"] = v_u_7.BOOK_READ,
        ["soundOverride"] = v_u_48.GRIMOIRE_CASTING
    },
    ["itemCatalog"] = {
        ["collection"] = v38.HALLOWEEN_LUCKY_BLOCK
    }
}
v_u_96[v1234] = v1235
local v1236 = v_u_58.GROWING_HALLOWEEN_LUCKY_BLOCK
local v1237 = {
    ["displayName"] = "Growing Halloween Lucky Block",
    ["block"] = {
        ["collectionServiceTags"] = { "GrowingHalloweenLuckyBlock" },
        ["unbreakable"] = true,
        ["denyPlaceOn"] = true,
        ["breakType"] = v2.DIRT,
        ["seeThrough"] = true
    }
}
v_u_96[v1236] = v1237
local v1238 = v_u_58.HALLOWEEN_LUCKY_BLOCK
local v1239 = {
    ["displayName"] = "Halloween Lucky Block",
    ["image"] = "rbxassetid://15093670805"
}
local v1240 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_6, (copy) v_u_48
        return v_u_55(v_u_6.fromList(v_u_48.HALLOWEEN_LUCKY_BLOCK_HIT_1, v_u_48.HALLOWEEN_LUCKY_BLOCK_HIT_2, v_u_48.HALLOWEEN_LUCKY_BLOCK_HIT_3))
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastProof"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 15
}
local v1241 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        }
    },
    ["categories"] = { v41.HALLOWEEN }
}
v1240.luckyBlock = v1241
v1240.collectionServiceTags = { "HalloweenLuckyBlock" }
v1239.block = v1240
v_u_96[v1238] = v1239
local v1242 = v_u_58.FLYING_BROOM_DEPLOY
local v1243 = {
    ["displayName"] = "Flying Broom",
    ["image"] = "rbxassetid://15115405598",
    ["description"] = "Clean up the skies with a flying broom!",
    ["consumable"] = {
        ["consumeTime"] = 1,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    },
    ["itemCatalog"] = {
        ["collection"] = v38.HALLOWEEN_LUCKY_BLOCK
    }
}
v_u_96[v1242] = v1243
local v1244 = v_u_58.GHOST_ORB
local v1245 = {
    ["displayName"] = "Ghost Orb",
    ["image"] = "rbxassetid://15122215131",
    ["description"] = "A spectral orb that when hurled, turns players ghostly, making them float!",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "ghost_orb"
        end,
        ["ammoItemTypes"] = { v_u_58.GHOST_ORB },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 1,
        ["minStrengthScalar"] = 0.3333333333333333,
        ["walkSpeedMultiplier"] = 0.4,
        ["launchSound"] = { v_u_48.SWORD_SWING_1 }
    },
    ["itemCatalog"] = {
        ["collection"] = v38.HALLOWEEN_LUCKY_BLOCK
    }
}
v_u_96[v1244] = v1245
local v1246 = v_u_58.LIGHTNING_COIL
local v1247 = {
    ["displayName"] = "Frankenstein Lightning Coil",
    ["image"] = "rbxassetid://15122132404",
    ["description"] = "Shocking for all players!"
}
local v1248 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["blastProof"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = v11.LIGHTNING_COIL_HEALTH,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8028
        }
    }
}
v1247.block = v1248
v1247.itemCatalog = {
    ["collection"] = v38.HALLOWEEN_LUCKY_BLOCK
}
v_u_96[v1246] = v1247
local v1249 = v_u_58.BLOCK_KICKER_BOOT
local v1250 = {
    ["displayName"] = "Boot"
}
local v1251 = {
    ["projectileType"] = function(_)
        -- upvalues: (copy) v_u_58
        return v_u_58.BLOCK_KICKER_BLOCK
    end,
    ["fireDelaySec"] = 0.5,
    ["maxStrengthChargeSec"] = v28.KICK_BLOCK_CHARGE_TIME,
    ["minStrengthScalar"] = 0.5,
    ["walkSpeedMultiplier"] = 0.01,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["chargeBeginSound"] = { v_u_48.BOW_DRAW },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.BOW_AIM,
        ["fireAnimation"] = v_u_7.BOW_FIRE,
        ["drawAnimation"] = v_u_7.BOW_DRAW
    }
}
v1250.projectileSource = v1251
v1250.firstPerson = {
    ["verticalOffset"] = 0
}
v1250.image = "rbxassetid://6874272718"
v1250.sharingDisabled = true
v_u_96[v1249] = v1250
v_u_96[v_u_58.BLOCK_KICKER_BLOCK] = {
    ["displayName"] = "Block Kicker Block",
    ["image"] = "rbxassetid://6869295400",
    ["hotbarFillRight"] = true,
    ["sharingDisabled"] = true
}
local v1252 = v_u_58.GATHER_BOT_BASIC
local v1253 = {
    ["displayName"] = "Dimmy-X1",
    ["image"] = "rbxassetid://15359021293",
    ["description"] = "A robot that locates diamonds and returns them to the team crate",
    ["sharingDisabled"] = true,
    ["consumable"] = {
        ["consumeTime"] = 1.8,
        ["animationOverride"] = v_u_7.GATHER_BOT_CONSTRUCTION,
        ["soundOverride"] = v_u_48.GATHER_BOT_CONSTRUCTION,
        ["walkSpeedMultiplier"] = 0,
        ["disableSoundRepeat"] = true,
        ["disableJump"] = true
    }
}
v_u_96[v1252] = v1253
local v1254 = v_u_58.GATHER_BOT_PRO
local v1255 = {
    ["displayName"] = "Emmy-Z2",
    ["image"] = "rbxassetid://15359021160",
    ["description"] = "A robot that locates emeralds and returns them to the personal crate",
    ["sharingDisabled"] = true,
    ["consumable"] = {
        ["consumeTime"] = 1.8,
        ["animationOverride"] = v_u_7.GATHER_BOT_CONSTRUCTION,
        ["soundOverride"] = v_u_48.GATHER_BOT_CONSTRUCTION,
        ["walkSpeedMultiplier"] = 0,
        ["disableSoundRepeat"] = true,
        ["disableJump"] = true
    }
}
v_u_96[v1254] = v1255
v_u_96[v_u_58.HEALING_SLIME] = {
    ["displayName"] = "Blessed Slime",
    ["description"] = "Restores teammate\'s missing health.",
    ["image"] = "rbxassetid://15295059428",
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.VOID_SLIME] = {
    ["displayName"] = "Void Slime",
    ["description"] = "Boosts damage of teammate.",
    ["image"] = "rbxassetid://15295057154",
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.STICKY_SLIME] = {
    ["displayName"] = "Sticky Slime",
    ["description"] = "Attracts nearby resources with a chance to duplicate them.",
    ["image"] = "rbxassetid://15295064061",
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.FROSTY_SLIME] = {
    ["displayName"] = "Frosty Slime",
    ["description"] = "Slows the movement speed of enemies hit by this teammate.",
    ["image"] = "rbxassetid://15295050177",
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.SLIME_TAMER_FLUTE] = {
    ["displayName"] = "Slime Tamer\'s Flute",
    ["description"] = "Used to direct slimes around.",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://15295083414"
}
local v1256 = v_u_58.DIAMOND_CAPTURE_BLOCK
local v1257 = {
    ["displayName"] = "Diamond Capture Block",
    ["block"] = {
        ["breakType"] = v2.STONE
    },
    ["removeFromCustoms"] = true
}
v_u_96[v1256] = v1257
local v1258 = v_u_58.FROZEN_FORTRESS
local v1259 = {
    ["image"] = "rbxassetid://15625717321",
    ["displayName"] = "Frozen Fortress",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "frozen_fortress"
        end,
        ["ammoItemTypes"] = { v_u_58.FROZEN_FORTRESS },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.SWORD_SWING_1 }
    }
}
v_u_96[v1258] = v1259
local v1260 = v_u_58.HOT_CHOCOLATE
local v1261 = {
    ["displayName"] = "Hot Chocolate",
    ["description"] = "Drink to gain protection from the snow!",
    ["image"] = "rbxassetid://15625715830",
    ["consumable"] = {
        ["consumeTime"] = 1,
        ["potion"] = true,
        ["soundOverride"] = v_u_6.fromList(v_u_48.HOT_CHOCOLATE_SIP_1, v_u_48.HOT_CHOCOLATE_SIP_2, v_u_48.HOT_CHOCOLATE_SIP_3)
    }
}
v_u_96[v1260] = v1261
local v1262 = v_u_58.NINJA_CHAKRAM_1
local v1263 = {
    ["displayName"] = "Stone Chakram",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://15515026452"
}
local v1264 = {
    ["projectileType"] = function()
        return "ninja_chakram_1"
    end,
    ["fireDelaySec"] = 0.4,
    ["maxStrengthChargeSec"] = v30.CHAKRAM_TIME_TO_FULL_CHARGE,
    ["minStrengthScalar"] = v30.CHAKRAM_VELOCITY_MIN / v30.CHAKRAM_VELOCITY_MAX,
    ["walkSpeedMultiplier"] = 1,
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_LASSO_CHARGE,
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v1263.projectileSource = v1264
v_u_96[v1262] = v1263
local v1265 = v_u_58.NINJA_CHAKRAM_2
local v1266 = {
    ["displayName"] = "Iron Chakram",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://15515025342"
}
local v1267 = {
    ["projectileType"] = function()
        return "ninja_chakram_2"
    end,
    ["fireDelaySec"] = 0.4,
    ["maxStrengthChargeSec"] = v30.CHAKRAM_TIME_TO_FULL_CHARGE,
    ["minStrengthScalar"] = v30.CHAKRAM_VELOCITY_MIN / v30.CHAKRAM_VELOCITY_MAX,
    ["walkSpeedMultiplier"] = 1,
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_LASSO_CHARGE,
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v1266.projectileSource = v1267
v_u_96[v1265] = v1266
local v1268 = v_u_58.NINJA_CHAKRAM_3
local v1269 = {
    ["displayName"] = "Diamond Chakram",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://15515023612"
}
local v1270 = {
    ["projectileType"] = function()
        return "ninja_chakram_3"
    end,
    ["fireDelaySec"] = 0.4,
    ["maxStrengthChargeSec"] = v30.CHAKRAM_TIME_TO_FULL_CHARGE,
    ["minStrengthScalar"] = v30.CHAKRAM_VELOCITY_MIN / v30.CHAKRAM_VELOCITY_MAX,
    ["walkSpeedMultiplier"] = 1,
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_LASSO_CHARGE,
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v1269.projectileSource = v1270
v_u_96[v1268] = v1269
local v1271 = v_u_58.NINJA_CHAKRAM_4
local v1272 = {
    ["displayName"] = "Emerald Chakram",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://15515027427"
}
local v1273 = {
    ["projectileType"] = function()
        return "ninja_chakram_4"
    end,
    ["fireDelaySec"] = 0.4,
    ["maxStrengthChargeSec"] = v30.CHAKRAM_TIME_TO_FULL_CHARGE,
    ["minStrengthScalar"] = v30.CHAKRAM_VELOCITY_MIN / v30.CHAKRAM_VELOCITY_MAX,
    ["walkSpeedMultiplier"] = 1,
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_LASSO_CHARGE,
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v1272.projectileSource = v1273
v_u_96[v1271] = v1272
local v1274 = v_u_58.BANANARANG
local v1275 = {
    ["displayName"] = "Bananarang",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://115717861330143",
    ["description"] = "Go bananas with this bundle of boomerangs!"
}
local v1276 = {
    ["projectileType"] = function()
        return "bananarang"
    end,
    ["fireDelaySec"] = 0.3,
    ["maxStrengthChargeSec"] = 1,
    ["minStrengthScalar"] = 1,
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_LASSO_CHARGE,
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v1275.projectileSource = v1276
local v1277 = {
    {
        ["tierDescription"] = { "Increased damage" }
    },
    {
        ["tierDescription"] = { "Can now throw 2 bananarangs at a time" }
    },
    {
        ["tierDescription"] = { "Increased damage", "Increased knockback" }
    }
}
v1275.tierUpgradeElements = v1277
v_u_96[v1274] = v1275
local v1278 = v_u_58.BED_GADGET
local v1279 = {
    ["displayName"] = "Bed Gadget",
    ["description"] = "Used to create a bed at its position.",
    ["image"] = "rbxassetid://15579417392",
    ["gadget"] = true
}
local v1280 = {
    ["breakType"] = v2.STONE,
    ["breakableOnlyByHosts"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 9003
        }
    },
    ["collectionServiceTags"] = { "CreativeGadget" }
}
v1279.block = v1280
v_u_96[v1278] = v1279
local v1281 = v_u_58.SPAWN_GADGET
local v1282 = {
    ["displayName"] = "Team Spawn Gadget",
    ["description"] = "Used to set a team spawn location at its position.",
    ["image"] = "rbxassetid://15579417392",
    ["gadget"] = true
}
local v1283 = {
    ["breakType"] = v2.STONE,
    ["breakableOnlyByHosts"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 9004
        }
    },
    ["collectionServiceTags"] = { "CreativeGadget" }
}
v1282.block = v1283
v_u_96[v1281] = v1282
local v1284 = v_u_58.GLOBAL_GENERATOR_GADGET
local v1285 = {
    ["displayName"] = "Global Generator Gadget",
    ["description"] = "Used to create a global generator above its position.",
    ["image"] = "rbxassetid://15579417392",
    ["gadget"] = true
}
local v1286 = {
    ["breakType"] = v2.STONE,
    ["breakableOnlyByHosts"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 9005
        }
    },
    ["collectionServiceTags"] = { "CreativeGadget" }
}
v1285.block = v1286
v_u_96[v1284] = v1285
local v1287 = v_u_58.TEAM_GENERATOR_GADGET
local v1288 = {
    ["displayName"] = "Team Generator Gadget",
    ["description"] = "Used to create a team generator above its position.",
    ["image"] = "rbxassetid://15579417392",
    ["gadget"] = true
}
local v1289 = {
    ["breakType"] = v2.STONE,
    ["breakableOnlyByHosts"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 9006
        }
    },
    ["collectionServiceTags"] = { "CreativeGadget" }
}
v1288.block = v1289
v_u_96[v1287] = v1288
local v1290 = v_u_58.HEALING_FOUNTAIN
local v1291 = {
    ["displayName"] = "Healing Fountain",
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["collectionServiceTags"] = { "HealingFountain" },
        ["noSuffocation"] = true,
        ["unbreakable"] = true,
        ["health"] = 9999,
        ["blastProof"] = true
    }
}
v_u_96[v1290] = v1291
local v1292 = v_u_58.HEALING_TURRET
local v1293 = {
    ["displayName"] = "Healing Fountain",
    ["image"] = "rbxassetid://9557924389",
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["collectionServiceTags"] = { "HealingTurret" },
        ["noSuffocation"] = true,
        ["health"] = 100
    }
}
v_u_96[v1292] = v1293
local v1294 = v_u_58.TARGET_DUMMY_TIER_1
local v1295 = {
    ["displayName"] = "Iron Defender",
    ["image"] = "rbxassetid://15635687324",
    ["description"] = "",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["sharingDisabled"] = true
}
local v1296 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["collectionServiceTags"] = { "target-dummy-block" },
    ["seeThrough"] = true,
    ["disableInventoryPickup"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8029
        }
    },
    ["health"] = 100
}
v1295.block = v1296
v_u_96[v1294] = v1295
local v1297 = v_u_58.TARGET_DUMMY_TIER_2
local v1298 = {
    ["displayName"] = "Diamond Defender",
    ["image"] = "rbxassetid://15635689543",
    ["description"] = "",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["sharingDisabled"] = true
}
local v1299 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["collectionServiceTags"] = { "target-dummy-block" },
    ["seeThrough"] = true,
    ["disableInventoryPickup"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8030
        }
    },
    ["health"] = 250
}
v1298.block = v1299
v_u_96[v1297] = v1298
local v1300 = v_u_58.TARGET_DUMMY_TIER_3
local v1301 = {
    ["displayName"] = "Emerald Defender",
    ["image"] = "rbxassetid://15635691654",
    ["description"] = "",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["sharingDisabled"] = true
}
local v1302 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["collectionServiceTags"] = { "target-dummy-block" },
    ["seeThrough"] = true,
    ["disableInventoryPickup"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8031
        }
    },
    ["health"] = 300
}
v1301.block = v1302
v_u_96[v1300] = v1301
local v1303 = v_u_58.TARGET_DUMMY_TIER_4
local v1304 = {
    ["displayName"] = "Enlightened Defender",
    ["image"] = "rbxassetid://15635693582",
    ["description"] = "",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["sharingDisabled"] = true
}
local v1305 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_HIT)
    end,
    ["collectionServiceTags"] = { "target-dummy-block" },
    ["seeThrough"] = true,
    ["disableInventoryPickup"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8032
        }
    },
    ["health"] = 350
}
v1304.block = v1305
v_u_96[v1303] = v1304
local v1306 = v_u_58.SNOWBALL_LAUNCHER
local v1307 = {
    ["displayName"] = "Snowball Launcher",
    ["description"] = "Launch snowballs that can slow or freeze enemies!",
    ["image"] = "rbxassetid://15628201582",
    ["multiProjectileSource"] = {
        ["frozen_snowball"] = v26.SnowballLauncherProjectile[v25.BASE],
        ["mega_frozen_snowball"] = v26.SnowballLauncherProjectile[v25.POWER],
        ["spread_frozen_snowball"] = v26.SnowballLauncherProjectile[v25.SPREAD],
        ["rapid_frozen_snowball"] = v26.SnowballLauncherProjectile[v25.RAPID]
    },
    ["thirdPerson"] = {
        ["holdAnimation"] = v_u_7.ROCKET_LAUNCHER_IDLE
    },
    ["firstPerson"] = {
        ["verticalOffset"] = 0
    },
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
v_u_96[v1306] = v1307
local v1308 = v_u_58.FORGE_LUCKY_BLOCK
local v1309 = {
    ["displayName"] = "Forge Lucky Block"
}
local v1310 = {
    ["blastProof"] = true,
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_6, (copy) v_u_48
        return v_u_55(v_u_6.fromList(v_u_48.FORGE_HAMMER_1, v_u_48.FORGE_HAMMER_2))
    end,
    ["disableInventoryPickup"] = true,
    ["health"] = 15
}
local v1311 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        }
    },
    ["categories"] = { v41.FORGE }
}
v1310.luckyBlock = v1311
v1310.greedyMesh = {
    ["textures"] = {}
}
v1310.collectionServiceTags = { "ForgeLuckyBlock" }
v1309.block = v1310
v_u_96[v1308] = v1309
local v1312 = v_u_58.HERO_MAGICAL_GIRL_SCEPTER
local v1313 = {
    ["displayName"] = "Hero\'s Magical Scepter",
    ["description"] = "Harness the power of the sun to deal explosive damage to foes!",
    ["image"] = "rbxassetid://16101841584"
}
local v1314 = {
    ["hero_magical_girl_scepter_projectile"] = {
        ["projectileType"] = function()
            return "hero_magical_girl_scepter_projectile"
        end,
        ["fireDelaySec"] = 1,
        ["minStrengthScalar"] = 1,
        ["multiShot"] = true,
        ["multiShotCount"] = 3,
        ["multiShotDelay"] = 0.1,
        ["multiShotChargeTime"] = 0.5,
        ["launchSound"] = {
            v_u_48.HERO_SCEPTER_SHOT_1,
            v_u_48.HERO_SCEPTER_SHOT_2,
            v_u_48.HERO_SCEPTER_SHOT_3,
            v_u_48.HERO_SCEPTER_SHOT_4
        }
    },
    ["hero_magical_girl_scepter_multi_projectile"] = {
        ["projectileType"] = function()
            return "hero_magical_girl_scepter_multi_projectile"
        end,
        ["fireDelaySec"] = 1,
        ["minStrengthScalar"] = 1,
        ["multiShot"] = true,
        ["multiShotCount"] = 3,
        ["multiShotDelay"] = 0.1,
        ["multiShotChargeTime"] = 0.5,
        ["launchSound"] = {
            v_u_48.HERO_SCEPTER_SHOT_1,
            v_u_48.HERO_SCEPTER_SHOT_2,
            v_u_48.HERO_SCEPTER_SHOT_3,
            v_u_48.HERO_SCEPTER_SHOT_4
        }
    }
}
v1313.multiProjectileSource = v1314
v1313.firstPerson = {
    ["verticalOffset"] = 0
}
v1313.itemCatalog = {
    ["collection"] = v38.MAGICAL_HERO_LUCKY_BLOCK
}
local v1315 = {
    {
        ["tierDescription"] = { "+1 Projectile On Charged Attack (3 Total)" }
    },
    {
        ["tierDescription"] = { "Status Effects Can Now Stack", "3rd Stack Of Solar Flare Consumes Stacks", "Every 3rd Stack Causes An Explosion" }
    },
    {
        ["tierDescription"] = { "+2 Projectiles On Charged Attack (5 Total)" }
    }
}
v1313.tierUpgradeElements = v1315
v_u_96[v1312] = v1313
local v1316 = v_u_58.VILLAIN_MAGICAL_GIRL_SCEPTER
local v1317 = {
    ["displayName"] = "Villain\'s Magical Scepter",
    ["description"] = "Command the darkness of the moon and poison your enemies!",
    ["image"] = "rbxassetid://16101848037"
}
local v1318 = {
    ["villain_magical_girl_scepter_projectile"] = {
        ["projectileType"] = function()
            return "villain_magical_girl_scepter_projectile"
        end,
        ["fireDelaySec"] = 1,
        ["minStrengthScalar"] = 1,
        ["multiShot"] = true,
        ["multiShotCount"] = 3,
        ["multiShotDelay"] = 0.1,
        ["multiShotChargeTime"] = 0.5,
        ["launchSound"] = {
            v_u_48.VILLAIN_SCEPTER_SHOT_1,
            v_u_48.VILLAIN_SCEPTER_SHOT_2,
            v_u_48.VILLAIN_SCEPTER_SHOT_3,
            v_u_48.VILLAIN_SCEPTER_SHOT_4
        }
    },
    ["villain_magical_girl_scepter_multi_projectile"] = {
        ["projectileType"] = function()
            return "villain_magical_girl_scepter_multi_projectile"
        end,
        ["fireDelaySec"] = 1,
        ["minStrengthScalar"] = 1,
        ["multiShot"] = true,
        ["multiShotCount"] = 3,
        ["multiShotDelay"] = 0.1,
        ["multiShotChargeTime"] = 0.5,
        ["launchSound"] = {
            v_u_48.VILLAIN_SCEPTER_SHOT_1,
            v_u_48.VILLAIN_SCEPTER_SHOT_2,
            v_u_48.VILLAIN_SCEPTER_SHOT_3,
            v_u_48.VILLAIN_SCEPTER_SHOT_4
        }
    }
}
v1317.multiProjectileSource = v1318
v1317.firstPerson = {
    ["verticalOffset"] = 0
}
v1317.itemCatalog = {
    ["collection"] = v38.MAGICAL_HERO_LUCKY_BLOCK
}
local v1319 = {
    {
        ["tierDescription"] = { "+1 Projectile On Charged Attack (3 Total)" }
    },
    {
        ["tierDescription"] = { "Status Effects Can Now Stack", "3rd Stack Of Lunar Venom Consumes Stacks", "Consumed Stacks Deal Damage & Infect All Nearby Players" }
    },
    {
        ["tierDescription"] = { "+2 Projectiles On Charged Attack (5 Total)" }
    }
}
v1317.tierUpgradeElements = v1319
v_u_96[v1316] = v1317
local v1320 = v_u_58.DISCO_GRENADE
local v1321 = {
    ["displayName"] = "Disco Grenade",
    ["description"] = "Dance Dance Dance",
    ["image"] = "rbxassetid://15798166322",
    ["maxStackSize"] = {
        ["amount"] = 5
    }
}
local v1322 = {
    ["projectileType"] = function()
        return "disco_grenade"
    end,
    ["ammoItemTypes"] = { v_u_58.DISCO_GRENADE },
    ["fireDelaySec"] = 0.3,
    ["launchSound"] = { v_u_48.NEW_BOW_FIRE },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.GRENADE_THROW
    }
}
v1321.projectileSource = v1322
v_u_96[v1320] = v1321
local v1323 = v_u_58.FIREWORK_CRATE
local v1324 = {
    ["displayName"] = "Firework Crate",
    ["image"] = "rbxassetid://15798166084",
    ["description"] = "Rain down fire on your enemies!",
    ["footstepSound"] = v47.SAND
}
local v1325 = {
    ["breakType"] = v2.WOOL,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.WOOL_BREAK)
    end,
    ["health"] = 1,
    ["disableInventoryPickup"] = true,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8005
        }
    }
}
v1324.block = v1325
v_u_96[v1323] = v1324
local v1326 = v_u_58.FIREWORK_ROCKET_LAUNCHER
local v1327 = {
    ["displayName"] = "Firework Rocket Launcher",
    ["image"] = "rbxassetid://15798141956",
    ["description"] = "",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "firework_rocket_missile"
        end,
        ["ammoItemTypes"] = { v_u_58.FIREWORK_ROCKET_MISSILE },
        ["fireDelaySec"] = 2.2,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.FIREWORK_LAUNCH },
        ["activeReload"] = true
    }
}
v_u_96[v1326] = v1327
v_u_96[v_u_58.FIREWORK_ROCKET_MISSILE] = {
    ["displayName"] = "Firework Rocket",
    ["image"] = "rbxassetid://15798141772",
    ["hotbarFillRight"] = true
}
local v1328 = v_u_58.NEW_YEARS_LUCKY_BLOCK_2024
local v1329 = {
    ["displayName"] = "New Years Lucky Block"
}
local v1330 = {
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.LUCKY_BLOCK_BREAK)
    end,
    ["collectionServiceTags"] = { "NewYearsLuckyBlock" },
    ["greedyMesh"] = {
        ["textures"] = {}
    }
}
local v1331 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        }
    },
    ["categories"] = { v41.NEW_YEARS }
}
v1330.luckyBlock = v1331
v1330.minecraftConversions = {
    {
        ["blockId"] = 12116
    }
}
v1330.blastProof = true
v1330.disableInventoryPickup = true
v1330.health = 15
v1329.block = v1330
v_u_96[v1328] = v1329
local v1332 = {
    ["displayName"] = "World Guard Wand",
    ["image"] = "rbxassetid://16009857460",
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.WORLD_GUARD_WAND] = v1332
local v1333 = {
    ["displayName"] = "World Edit Wand",
    ["image"] = "rbxassetid://16009857584",
    ["firstPerson"] = {
        ["verticalOffset"] = -0.8
    },
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.WORLD_EDIT_WAND] = v1333
local v1334 = v_u_58.MAGICAL_HERO_LUCKY_BLOCK
local v1335 = {
    ["displayName"] = "Magical Hero Lucky Block"
}
local v1336 = {
    ["blastProof"] = true,
    ["breakType"] = v2.STONE,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_6, (copy) v_u_48
        return v_u_55(v_u_6.fromList(v_u_48.MAGICAL_HERO_LB_HIT_1, v_u_48.MAGICAL_HERO_LB_HIT_2, v_u_48.MAGICAL_HERO_LB_HIT_3))
    end,
    ["disableInventoryPickup"] = true,
    ["health"] = 15
}
local v1337 = {
    ["drops"] = {
        {
            ["luckMultiplier"] = 2
        }
    },
    ["categories"] = { v41.MAGICAL_HERO, v41.MAGICAL_VILLAIN }
}
v1336.luckyBlock = v1337
v1336.collectionServiceTags = { "MagicalHeroLuckyBlock" }
v1336.minecraftConversions = {
    {
        ["blockId"] = 12117
    }
}
v1335.block = v1336
v_u_96[v1334] = v1335
local v1338 = v_u_58.HERO_PROTECTOR_WAND
local v1339 = {
    ["displayName"] = "Hero\'s Protector Wand",
    ["image"] = "rbxassetid://16031906827",
    ["description"] = "Grants you the power to cast heals and bubble barriers on your teammates!",
    ["itemCatalog"] = {
        ["collection"] = v38.MAGICAL_HERO_LUCKY_BLOCK
    }
}
local v1340 = {
    {
        ["tierDescription"] = { "Added Bubble Cast Ability", "Bubble Applies Knockback/Damage When Popped", "No Fall Damage Inside Bubble" }
    },
    {
        ["tierDescription"] = { "Heal Duration Increased", "Bubble Destroys Projectiles", "Pop Knockback/Damage Increased" }
    },
    {
        ["tierDescription"] = { "Heal Affects Nearby Teammates", "Bubble Deflects Projectiles", "Pop Knockback/Damage Increased" }
    }
}
v1339.tierUpgradeElements = v1340
v_u_96[v1338] = v1339
local v1341 = v_u_58.VILLAIN_PROTECTOR_WAND
local v1342 = {
    ["displayName"] = "Villain\'s Protector Wand",
    ["image"] = "rbxassetid://16031908526",
    ["description"] = "Grants you the power to cast heals and bubble barriers on yourself!",
    ["itemCatalog"] = {
        ["collection"] = v38.MAGICAL_HERO_LUCKY_BLOCK
    }
}
local v1343 = {
    {
        ["tierDescription"] = { "Added Bubble Cast Ability", "Bubble Applies Knockback/Damage When Popped", "No Fall Damage Inside Bubble" }
    },
    {
        ["tierDescription"] = { "Heal Duration Increased", "Bubble Destroys Projectiles", "Pop Knockback/Damage Increased" }
    },
    {
        ["tierDescription"] = { "Heal Affects Nearby Teammates", "Bubble Deflects Projectiles", "Pop Knockback/Damage Increased" }
    }
}
v1342.tierUpgradeElements = v1343
v_u_96[v1341] = v1342
local v1344 = v_u_58.HERO_MAGICAL_GIRL_RAPIER
local v1345 = {
    ["displayName"] = "Hero\'s Magical Rapier",
    ["description"] = "Forged with a courageous heart. Deal critical damage to high health enemies. \'Give me the strength to face my fears!\'",
    ["image"] = "rbxassetid://16101841796",
    ["sword"] = {
        ["damage"] = 44,
        ["respectAttackSpeedForEffects"] = true,
        ["applyCooldownOnMiss"] = true,
        ["attackSpeed"] = v15.RAPIER_ATTACK_COOLDOWN,
        ["attackRange"] = 12,
        ["swingSounds"] = {}
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["itemCatalog"] = {
        ["collection"] = v38.MAGICAL_HERO_LUCKY_BLOCK
    }
}
local v1346 = {
    {
        ["tierDescription"] = { "+2 Projectiles On Enhanced Attack" }
    },
    {
        ["tierDescription"] = { "Projectiles Can Now Critically Strike" }
    },
    {
        ["tierDescription"] = { "+2 Projectiles On Enhanced Attack" }
    }
}
v1345.tierUpgradeElements = v1346
v_u_96[v1344] = v1345
local v1347 = v_u_58.VILLAIN_MAGICAL_GIRL_RAPIER
local v1348 = {
    ["displayName"] = "Villain\'s Magical Rapier",
    ["description"] = "A twisted blade borne of wrath and misery. Deal critical damage to low health enemies. \'They will see as much mercy as I once received...\'",
    ["image"] = "rbxassetid://16101848170",
    ["sword"] = {
        ["damage"] = 44,
        ["respectAttackSpeedForEffects"] = true,
        ["applyCooldownOnMiss"] = true,
        ["attackSpeed"] = v15.RAPIER_ATTACK_COOLDOWN,
        ["attackRange"] = 12,
        ["swingSounds"] = {}
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["itemCatalog"] = {
        ["collection"] = v38.MAGICAL_HERO_LUCKY_BLOCK
    }
}
local v1349 = {
    {
        ["tierDescription"] = { "+2 Projectiles On Enhanced Attack" }
    },
    {
        ["tierDescription"] = { "Projectiles Can Now Critically Strike" }
    },
    {
        ["tierDescription"] = { "+2 Projectiles On Enhanced Attack" }
    }
}
v1348.tierUpgradeElements = v1349
v_u_96[v1347] = v1348
local v1350 = v_u_58.HERO_COMET_VOLLEY
local v1351 = {
    ["displayName"] = "Hero\'s Comet Volley",
    ["image"] = "rbxassetid://16040496465",
    ["description"] = "Ascend to celestial heights before unleashing a volley of comets on the world below! Slain foes are converted into Diamond ore deposits.",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["walkSpeedMultiplier"] = 0.5,
        ["soundOverride"] = "None"
    },
    ["itemCatalog"] = {
        ["collection"] = v38.MAGICAL_HERO_LUCKY_BLOCK
    }
}
local v1352 = {}
local v1353 = {}
local v1354 = {}
local v1355 = v23.COMET_VOLLEY_TIER_1_COMET_COUNT
local v1356 = tostring(v1355) .. " Total Comets"
local v1357 = v23.COMET_VOLLEY_TIER_1_DAMAGE
__set_list(v1354, 1, {v1356, tostring(v1357) .. " Damage Per Comet", "Low Yield Diamond Ore"})
v1353.tierDescription = v1354
v1352[1] = v1353
local v1358 = {}
local v1359 = {}
local v1360 = v23.COMET_VOLLEY_TIER_2_COMET_COUNT
local v1361 = tostring(v1360) .. " Total Comets"
local v1362 = v23.COMET_VOLLEY_TIER_2_DAMAGE
__set_list(v1359, 1, {v1361, tostring(v1362) .. " Damage Per Comet", "Medium Yield Diamond Ore"})
v1358.tierDescription = v1359
v1352[2] = v1358
local v1363 = {}
local v1364 = {}
local v1365 = v23.COMET_VOLLEY_TIER_3_COMET_COUNT
local v1366 = tostring(v1365) .. " Total Comets"
local v1367 = v23.COMET_VOLLEY_TIER_3_DAMAGE
__set_list(v1364, 1, {v1366, tostring(v1367) .. " Damage Per Comet", "High Yield Diamond Ore"})
v1363.tierDescription = v1364
v1352[3] = v1363
v1351.tierUpgradeElements = v1352
v_u_96[v1350] = v1351
local v1368 = v_u_58.VILLAIN_COMET_VOLLEY
local v1369 = {
    ["displayName"] = "Villain\'s Comet Volley",
    ["image"] = "rbxassetid://16040490553",
    ["description"] = "Ascend to celestial heights before unleashing a volley of comets on the world below! Slain foes are converted into Emerald ore deposits.",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["walkSpeedMultiplier"] = 0.5,
        ["soundOverride"] = "None"
    },
    ["itemCatalog"] = {
        ["collection"] = v38.MAGICAL_HERO_LUCKY_BLOCK
    }
}
local v1370 = {}
local v1371 = {}
local v1372 = {}
local v1373 = v23.COMET_VOLLEY_TIER_1_COMET_COUNT
local v1374 = tostring(v1373) .. " Total Comets"
local v1375 = v23.COMET_VOLLEY_TIER_1_DAMAGE
__set_list(v1372, 1, {v1374, tostring(v1375) .. " Damage Per Comet", "Low Yield Emerald Ore"})
v1371.tierDescription = v1372
v1370[1] = v1371
local v1376 = {}
local v1377 = {}
local v1378 = v23.COMET_VOLLEY_TIER_2_COMET_COUNT
local v1379 = tostring(v1378) .. " Total Comets"
local v1380 = v23.COMET_VOLLEY_TIER_2_DAMAGE
__set_list(v1377, 1, {v1379, tostring(v1380) .. " Damage Per Comet", "Medium Yield Emerald Ore"})
v1376.tierDescription = v1377
v1370[2] = v1376
local v1381 = {}
local v1382 = {}
local v1383 = v23.COMET_VOLLEY_TIER_3_COMET_COUNT
local v1384 = tostring(v1383) .. " Total Comets"
local v1385 = v23.COMET_VOLLEY_TIER_3_DAMAGE
__set_list(v1382, 1, {v1384, tostring(v1385) .. " Damage Per Comet", "High Yield Emerald Ore"})
v1381.tierDescription = v1382
v1370[3] = v1381
v1369.tierUpgradeElements = v1370
v_u_96[v1368] = v1369
local v1386 = v_u_58.HERO_SCISSOR_SWORD
local v1387 = {
    ["displayName"] = "Hero\'s Scissor Sword",
    ["image"] = "rbxassetid://16122815522",
    ["description"] = "Swords, like heroes, can be forged from anything! Land combo hits to increase your attack speed."
}
local v1388 = {
    ["damage"] = v16.ATTACK_DAMAGE,
    ["attackSpeed"] = v16.BASE_ATTACK_SPEED_SEC,
    ["skipSwingEffects"] = true
}
local v1391 = {
    ["showHoldProgressAfterSec"] = 0.25,
    ["maxChargeTimeSec"] = v16.COMBO_STRIKE_CHARGE_TIME,
    ["minChargeTimeSec"] = v16.COMBO_STRIKE_CHARGE_TIME,
    ["attackCooldown"] = v16.COMBO_STRIKE_COOLDOWN_SEC,
    ["walkSpeedModifier"] = {
        ["delay"] = 0.25,
        ["multiplier"] = v16.COMBO_STRIKE_WALKSPEED_MULTIPLIER
    },
    ["chargingEffects"] = {
        ["sound"] = v_u_48.SCISSOR_SWORD_CHARGE_UP
    },
    ["chargedSwingAnimations"] = { v_u_7.SCISSOR_SWORD_COMBO_STRIKE },
    ["chargedSwingSounds"] = { v_u_48.SCISSOR_SWORD_SLASH_FAST_HERO, v_u_48.SCISSOR_SWORD_SLASH_FAST_HERO, v_u_48.SCISSOR_SWORD_SLASH_SLOW_HERO },
    ["fireAtFullCharge"] = true,
    ["ignoreEffectsOnFullyCharged"] = true,
    ["enableCondition"] = function(p1389)
        -- upvalues: (copy) v_u_52, (copy) v_u_8
        local v1390 = v_u_52(p1389.tool, v_u_8)
        return (v1390 == nil and 0 or v1390) > 1
    end
}
v1388.chargedAttack = v1391
v1387.sword = v1388
v1387.firstPerson = {
    ["scale"] = 0.8,
    ["verticalOffset"] = -1.2
}
v1387.itemCatalog = {
    ["collection"] = v38.MAGICAL_HERO_LUCKY_BLOCK
}
local v1392 = {
    {
        ["tierDescription"] = { "Gain a sharpened status on successful hits." }
    },
    {
        ["tierDescription"] = { "Unlock charged attack, performing a 3-strike combo." }
    },
    {
        ["tierDescription"] = { "A well-time sword swing can now cut projectiles." }
    }
}
v1387.tierUpgradeElements = v1392
v_u_96[v1386] = v1387
local v1393 = v_u_58.VILLAIN_SCISSOR_SWORD
local v1394 = {
    ["displayName"] = "Villain\'s Scissor Sword",
    ["image"] = "rbxassetid://16122815086",
    ["description"] = "Swords, like villains, can come from anywhere! Land combo hits to increase your attack speed."
}
local v1395 = {
    ["damage"] = v16.ATTACK_DAMAGE,
    ["attackSpeed"] = v16.BASE_ATTACK_SPEED_SEC,
    ["skipSwingEffects"] = true
}
local v1398 = {
    ["showHoldProgressAfterSec"] = 0.25,
    ["maxChargeTimeSec"] = v16.COMBO_STRIKE_CHARGE_TIME,
    ["minChargeTimeSec"] = v16.COMBO_STRIKE_CHARGE_TIME,
    ["attackCooldown"] = v16.COMBO_STRIKE_COOLDOWN_SEC,
    ["walkSpeedModifier"] = {
        ["delay"] = 0.25,
        ["multiplier"] = v16.COMBO_STRIKE_WALKSPEED_MULTIPLIER
    },
    ["chargingEffects"] = {
        ["sound"] = v_u_48.SCISSOR_SWORD_CHARGE_UP
    },
    ["chargedSwingAnimations"] = { v_u_7.SCISSOR_SWORD_COMBO_STRIKE },
    ["chargedSwingSounds"] = { v_u_48.SCISSOR_SWORD_SLASH_FAST_VILLAIN, v_u_48.SCISSOR_SWORD_SLASH_FAST_VILLAIN, v_u_48.SCISSOR_SWORD_SLASH_SLOW_VILLAIN },
    ["fireAtFullCharge"] = true,
    ["enableCondition"] = function(p1396)
        -- upvalues: (copy) v_u_52, (copy) v_u_8
        local v1397 = v_u_52(p1396.tool, v_u_8)
        return (v1397 == nil and 0 or v1397) > 1
    end
}
v1395.chargedAttack = v1398
v1394.sword = v1395
v1394.firstPerson = {
    ["scale"] = 0.8,
    ["verticalOffset"] = -1.2
}
local v1399 = {
    {
        ["tierDescription"] = { "Apply the decay status on successful hits." }
    },
    {
        ["tierDescription"] = { "Unlock charged attack, performing a 3-strike combo." }
    },
    {
        ["tierDescription"] = { "The decay status now stacks, decreasing max health further." }
    }
}
v1394.tierUpgradeElements = v1399
v_u_96[v1393] = v1394
local v1400 = v_u_58.FIRECRACKERS
local v1401 = {
    ["displayName"] = "Firecrackers",
    ["description"] = "Celebrate the lunar new year with some firecrackers!",
    ["image"] = "rbxassetid://16211743648",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "firecrackers"
        end,
        ["ammoItemTypes"] = { v_u_58.FIRECRACKERS },
        ["fireDelaySec"] = 1,
        ["launchSound"] = { v_u_48.FIREWORK_LAUNCH },
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692
    },
    ["maxStackSize"] = {
        ["amount"] = 3
    }
}
v_u_96[v1400] = v1401
v_u_96[v_u_58.DRAGON_MORTAR] = {
    ["displayName"] = "Dragon Mortar",
    ["image"] = "rbxassetid://16212332887",
    ["description"] = "Launch a festive dragon rocket to deal damage in an area!"
}
local v1402 = v_u_58.BLUE_TILE
local v1403 = {
    ["displayName"] = "Blue Tile",
    ["footstepSound"] = v47.STONE
}
local v1404 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 22,
            ["blockData"] = 0
        }
    }
}
v1403.block = v1404
v_u_96[v1402] = v1403
v_u_96[v_u_58.HEALTH_DROP] = {
    ["displayName"] = "Health Drop"
}
local v1405 = {
    ["displayName"] = "Mending Canopy I",
    ["image"] = "rbxassetid://17007883118",
    ["description"] = "When the sun shine, we shine together!",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.5
    }
}
v_u_96[v_u_58.MENDING_CANOPY_STAFF_TIER_1] = v1405
local v1406 = v_u_58.MENDING_CANOPY_STAFF_TIER_2
local v1407 = {
    ["displayName"] = "Mending Canopy II",
    ["image"] = "rbxassetid://17007888794",
    ["description"] = "When the sun shine, we shine together! Now with knockback!",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.5
    },
    ["replaces"] = { v_u_58.MENDING_CANOPY_STAFF_TIER_1 }
}
v_u_96[v1406] = v1407
local v1408 = v_u_58.MENDING_CANOPY_STAFF_TIER_3
local v1409 = {
    ["displayName"] = "Mending Canopy III",
    ["image"] = "rbxassetid://17007892915",
    ["description"] = "When the sun shine, we shine together! Now with Overcharge!",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.5
    },
    ["replaces"] = { v_u_58.MENDING_CANOPY_STAFF_TIER_2 }
}
v_u_96[v1408] = v1409
local v1410 = v_u_58.TINKER_WOOD_CHAINSAW
local v1411 = {
    ["displayName"] = "Wood Chainsaw",
    ["image"] = v36.WOOD_CHAINSAW,
    ["sword"] = {
        ["damage"] = 10,
        ["attackSpeed"] = 0.35,
        ["respectAttackSpeedForEffects"] = true,
        ["attackRange"] = 5 * v_u_17 + 2
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["skins"] = { v21.FISH_TANK_WOOD_CHAINSAW }
}
v_u_96[v1410] = v1411
local v1412 = v_u_58.TINKER_IRON_CHAINSAW
local v1413 = {
    ["displayName"] = "Iron Chainsaw",
    ["image"] = v36.IRON_CHAINSAW,
    ["sword"] = {
        ["damage"] = 20,
        ["attackSpeed"] = 0.35,
        ["attackRange"] = 5 * v_u_17 + 2
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["replaces"] = { v_u_58.TINKER_WOOD_CHAINSAW },
    ["skins"] = { v21.FISH_TANK_IRON_CHAINSAW }
}
v_u_96[v1412] = v1413
local v1414 = v_u_58.TINKER_DIAMOND_CHAINSAW
local v1415 = {
    ["displayName"] = "Diamond Chainsaw",
    ["image"] = v36.DIAMOND_CHAINSAW,
    ["sword"] = {
        ["damage"] = 20,
        ["attackSpeed"] = 0.35,
        ["attackRange"] = 5 * v_u_17 + 2
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["replaces"] = { v_u_58.TINKER_IRON_CHAINSAW },
    ["skins"] = { v21.FISH_TANK_DIAMOND_CHAINSAW }
}
v_u_96[v1414] = v1415
local v1416 = v_u_58.TINKER_EMERALD_CHAINSAW
local v1417 = {
    ["displayName"] = "Emerald Chainsaw",
    ["image"] = v36.EMERALD_CHAINSAW,
    ["sword"] = {
        ["damage"] = 20,
        ["attackSpeed"] = 0.35,
        ["attackRange"] = 5 * v_u_17 + 2
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["replaces"] = { v_u_58.TINKER_DIAMOND_CHAINSAW },
    ["skins"] = { v21.FISH_TANK_EMERALD_CHAINSAW }
}
v_u_96[v1416] = v1417
local v1418 = v_u_58.TINKER_VOID_CHAINSAW
local v1419 = {
    ["displayName"] = "Void Chainsaw",
    ["image"] = v36.VOID_CHAINSAW,
    ["sword"] = {
        ["damage"] = 20,
        ["attackSpeed"] = 0.35,
        ["attackRange"] = 5 * v_u_17 + 2
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["replaces"] = { v_u_58.TINKER_EMERALD_CHAINSAW },
    ["skins"] = { v21.FISH_TANK_VOID_CHAINSAW }
}
v_u_96[v1418] = v1419
v_u_96[v_u_58.TINKER_IRON_MECH_UPGRADE] = {
    ["displayName"] = "Iron Mech Upgrade",
    ["image"] = v36.IRON_TINKER_MECH,
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.TINKER_DIAMOND_MECH_UPGRADE] = {
    ["displayName"] = "Diamond Mech Upgrade",
    ["description"] = "Unlocks Self-Destruct ability",
    ["image"] = v36.DIAMOND_TINKER_MECH,
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.TINKER_EMERALD_MECH_UPGRADE] = {
    ["displayName"] = "Emerald Mech Upgrade",
    ["image"] = v36.EMERALD_TINKER_MECH,
    ["description"] = "Increases strength of Self-Destruct",
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.TINKER_VOID_MECH_UPGRADE] = {
    ["displayName"] = "Void Mech Upgrade",
    ["image"] = v36.VOID_TINKER_MECH,
    ["description"] = "Reduces incoming projectile damage and knockback",
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.SPEED_BOOST] = {
    ["displayName"] = "Speed Boost"
}
local v1420 = v_u_58.EGG_BLOCK
local v1421 = {
    ["displayName"] = "Collectable Egg",
    ["image"] = "rbxassetid://3677675280"
}
local v1422 = {
    ["breakType"] = v2.WOOD,
    ["disableInventoryPickup"] = true,
    ["unbreakable"] = true,
    ["denyPlaceOn"] = true,
    ["seeThrough"] = true,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.CHICKEN_EGG_CRACK)
    end,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8424
        }
    },
    ["flammable"] = false,
    ["collectionServiceTags"] = { "egg-block" },
    ["disableFlamableByTeammates"] = true
}
v1421.block = v1422
v_u_96[v1420] = v1421
v_u_96[v_u_58.COLLECTED_EGG] = {
    ["displayName"] = "Egg",
    ["image"] = "rbxassetid://13988247733",
    ["description"] = "Bring back to your base!",
    ["sharingDisabled"] = true
}
local v1423 = v_u_58.NEST_DEPOSIT_BLOCK
local v1424 = {
    ["displayName"] = "Nest Deposit Zone",
    ["block"] = {
        ["breakType"] = v2.WOOL,
        ["collectionServiceTags"] = { "NestDepositBlock" }
    }
}
v_u_96[v1423] = v1424
local v1425 = v_u_58.CLUSTER_BOMB
local v1426 = {
    ["displayName"] = "Cluster Bomb",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://17009910977",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "cluster_bomb"
        end,
        ["ammoItemTypes"] = { v_u_58.CLUSTER_BOMB },
        ["fireDelaySec"] = 0.4,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.SWORD_SWING_1 }
    },
    ["maxStackSize"] = {
        ["amount"] = v27.MAX_CLUSTER_NADE_SIZE
    },
    ["skins"] = { v21.SPIRIT_GRENADE }
}
v_u_96[v1425] = v1426
v_u_96[v_u_58.IRON_CHICKEN_NEST] = {
    ["displayName"] = "Iron Nest",
    ["image"] = "rbxassetid://17018554326"
}
v_u_96[v_u_58.DIAMOND_CHICKEN_NEST] = {
    ["displayName"] = "Diamond Nest",
    ["image"] = "rbxassetid://17018554494"
}
v_u_96[v_u_58.EMERALD_CHICKEN_NEST] = {
    ["displayName"] = "Emerald Nest",
    ["image"] = "rbxassetid://17018554648"
}
v_u_96[v_u_58.VOID_CHICKEN_INCUBATOR] = {
    ["displayName"] = "Void Nest",
    ["image"] = "rbxassetid://17018554829"
}
local v1427 = v_u_58.STYX_ENTRANCE_PORTAL
local v1428 = {
    ["displayName"] = "Confluence Portal",
    ["image"] = "rbxassetid://17009847852",
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["unbreakableByTeammates"] = true,
        ["collectionServiceTags"] = { "styx-entrance-portal" },
        ["seeThrough"] = true,
        ["health"] = 30,
        ["maxPlaced"] = 1,
        ["disableEnemyInventoryPickup"] = true,
        ["instantBreakByOwner"] = true
    },
    ["keepOnDeath"] = true,
    ["sharingDisabled"] = true
}
v_u_96[v1427] = v1428
local v1429 = v_u_58.STYX_EXIT_PORTAL
local v1430 = {
    ["displayName"] = "Confluence Portal",
    ["image"] = "rbxassetid://17009847852",
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["unbreakableByTeammates"] = true,
        ["collectionServiceTags"] = { "styx-exit-portal" },
        ["seeThrough"] = true,
        ["health"] = 30,
        ["disableEnemyInventoryPickup"] = true,
        ["disableInventoryPickup"] = true
    },
    ["sharingDisabled"] = true
}
v_u_96[v1429] = v1430
local v1431 = v_u_58.NOCTIUM_BLADE
local v1432 = {
    ["displayName"] = "Noctium Blade I",
    ["description"] = "A blade forged from the powerful void metal, Noctium.",
    ["image"] = "rbxassetid://87316819930592",
    ["sword"] = {
        ["damage"] = 22,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN + 0.05
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["skins"] = { v21.NOCTIUM_BLADE_ICE, v21.NOCTIUM_BLADE_PUMPKIN }
}
v_u_96[v1431] = v1432
local v1433 = v_u_58.NOCTIUM_BLADE_2
local v1434 = {
    ["displayName"] = "Noctium Blade II",
    ["description"] = "A blade forged from the powerful void metal, Noctium.",
    ["image"] = "rbxassetid://85834734397116",
    ["sword"] = {
        ["damage"] = 27,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN + 0.05
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["skins"] = { v21.NOCTIUM_BLADE_2_ICE, v21.NOCTIUM_BLADE_2_PUMPKIN }
}
v_u_96[v1433] = v1434
local v1435 = v_u_58.NOCTIUM_BLADE_3
local v1436 = {
    ["displayName"] = "Noctium Blade III",
    ["description"] = "A blade forged from the powerful void metal, Noctium.",
    ["image"] = "rbxassetid://101450000021943",
    ["sword"] = {
        ["damage"] = 33,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN + 0.05
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["skins"] = { v21.NOCTIUM_BLADE_3_ICE, v21.NOCTIUM_BLADE_3_PUMPKIN }
}
v_u_96[v1435] = v1436
local v1437 = v_u_58.NOCTIUM_BLADE_4
local v1438 = {
    ["displayName"] = "Noctium Blade IV",
    ["description"] = "A blade forged from the powerful void metal, Noctium.",
    ["image"] = "rbxassetid://100238229901987",
    ["sword"] = {
        ["damage"] = 47,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN + 0.05
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true,
    ["skins"] = { v21.NOCTIUM_BLADE_4_ICE, v21.NOCTIUM_BLADE_4_PUMPKIN }
}
v_u_96[v1437] = v1438
v_u_96[v_u_58.WOOD_CHAINSAW] = {
    ["displayName"] = "FP Wood Chainsaw"
}
v_u_96[v_u_58.IRON_CHAINSAW] = {
    ["displayName"] = "FP Iron Chainsaw"
}
v_u_96[v_u_58.DIAMOND_CHAINSAW] = {
    ["displayName"] = "FP Diamond Chainsaw"
}
v_u_96[v_u_58.EMERALD_CHAINSAW] = {
    ["displayName"] = "FP Emerald Chainsaw"
}
v_u_96[v_u_58.VOID_CHAINSAW] = {
    ["displayName"] = "FP Void Chainsaw"
}
local v1439 = {
    ["displayName"] = "Tinker\'s Wrench",
    ["description"] = "Deals a small amount of damage",
    ["image"] = "rbxassetid://11533277908",
    ["sword"] = {
        ["damage"] = 20,
        ["attackSpeed"] = 0.35
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.TINKERS_WRENCH] = v1439
local v1440 = v_u_58.BROKEN_ALTAR_BLOCK
local v1441 = {
    ["displayName"] = "Broken Altar",
    ["block"] = {
        ["blastProof"] = true,
        ["breakType"] = v2.WOOD,
        ["health"] = 20,
        ["collectionServiceTags"] = { "broken-altar-block" }
    }
}
v_u_96[v1440] = v1441
local v1442 = v_u_58.ALTAR_BLOCK_ONE
local v1443 = {
    ["displayName"] = "Altar",
    ["image"] = v36.ENCHANTING_TABLE,
    ["block"] = {
        ["blastProof"] = true,
        ["breakType"] = v2.WOOD,
        ["health"] = 20,
        ["collectionServiceTags"] = { "altar-block" }
    }
}
v_u_96[v1442] = v1443
local v1444 = v_u_58.ALTAR_BLOCK_TWO
local v1445 = {
    ["displayName"] = "Altar",
    ["image"] = v36.ENCHANTING_TABLE,
    ["block"] = {
        ["blastProof"] = true,
        ["breakType"] = v2.WOOD,
        ["health"] = 20,
        ["collectionServiceTags"] = { "altar-block" }
    }
}
v_u_96[v1444] = v1445
local v1446 = v_u_58.ALTAR_BLOCK_THREE
local v1447 = {
    ["displayName"] = "Altar",
    ["image"] = v36.ENCHANTING_TABLE,
    ["block"] = {
        ["blastProof"] = true,
        ["breakType"] = v2.WOOD,
        ["health"] = 20,
        ["collectionServiceTags"] = { "altar-block" }
    }
}
v_u_96[v1446] = v1447
v_u_96[v_u_58.ANGEL_WINGS] = {
    ["displayName"] = "Angel Wings",
    ["description"] = "Magical pair of wings.",
    ["image"] = "rbxassetid://17193022208",
    ["backpack"] = {},
    ["sharingDisabled"] = true,
    ["removeFromCustoms"] = true
}
local v1448 = v_u_58.VOID_TELEPORT_PORTAL
local v1449 = {
    ["displayName"] = "Teleport Block",
    ["image"] = v36.VOID_TELEPORT_PORTAL
}
local v1450 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["seeThrough"] = true,
    ["health"] = 8,
    ["collectionServiceTags"] = { "void_teleport_portal" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8002
        }
    },
    ["denyPlaceOn"] = true,
    ["maxPlaced"] = 2,
    ["disableInventoryPickup"] = true
}
v1449.block = v1450
v_u_96[v1448] = v1449
local v1451 = v_u_58.LASSO_HOOK
local v1452 = {
    ["displayName"] = "Lasso Hook",
    ["image"] = "rbxassetid://17009847852",
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["collectionServiceTags"] = { "lasso-hook-block" },
        ["seeThrough"] = true,
        ["health"] = 50,
        ["disableEnemyInventoryPickup"] = true,
        ["unbreakable"] = true
    }
}
v_u_96[v1451] = v1452
v_u_96[v_u_58.LASSO_COIN] = {
    ["displayName"] = "Coin",
    ["displayNameColor"] = Color3.fromRGB(255, 209, 0),
    ["image"] = "rbxassetid://14978481303",
    ["hotbarFillRight"] = true,
    ["keepOnDeath"] = true,
    ["sharingDisabled"] = true,
    ["disableDroppingInQueues"] = { v20.LASSO_WARS }
}
local v1453 = v_u_58.PARTY_HAT_LAUNCHER
local v1454 = {
    ["displayName"] = "Party Hat Launcher",
    ["image"] = v36.PARTY_HAT_LAUNCHER,
    ["description"] = "",
    ["projectileSource"] = {
        ["projectileType"] = function()
            return "party_hat_missile"
        end,
        ["ammoItemTypes"] = { v_u_58.PARTY_HAT_MISSILE },
        ["fireDelaySec"] = 2.2,
        ["maxStrengthChargeSec"] = 0.25,
        ["minStrengthScalar"] = 0.7692307692307692,
        ["launchSound"] = { v_u_48.FIREWORK_LAUNCH },
        ["activeReload"] = true
    }
}
v_u_96[v1453] = v1454
v_u_96[v_u_58.PARTY_HAT_MISSILE] = {
    ["displayName"] = "Hat Missile",
    ["image"] = v36.PARTY_HAT_MISSILE,
    ["hotbarFillRight"] = true
}
local v1455 = v_u_58.SURVIVAL_CRATE
local v1456 = {
    ["displayName"] = "Crate",
    ["footstepSound"] = v47.WOOD,
    ["block"] = {
        ["breakType"] = v2.WOOD
    }
}
v_u_96[v1455] = v1456
local v1457 = v_u_58.TITAN_HEAL_TOTEM
local v1458 = {
    ["displayName"] = "Heal Totem",
    ["footstepSound"] = v47.WOOD,
    ["block"] = {
        ["breakType"] = v2.WOOD
    }
}
v_u_96[v1457] = v1458
local v1459 = v_u_58.MULTI_BREAK_TOOL
local v1460 = {
    ["displayName"] = "Handheld Drill",
    ["image"] = "rbxassetid://17580233223",
    ["breakBlock"] = {
        [v2.STONE] = 20,
        [v2.WOOL] = 5,
        [v2.WOOD] = 2
    },
    ["breakBlockSwingAnimationOverride"] = v_u_7.FLAMETHROWER_USE,
    ["breakBlockSoundOverride"] = {
        [v2.STONE] = {
            v_u_48.MULTI_BREAK_TOOL_STONE_BREAK_1,
            v_u_48.MULTI_BREAK_TOOL_STONE_BREAK_2,
            v_u_48.MULTI_BREAK_TOOL_STONE_BREAK_3,
            v_u_48.MULTI_BREAK_TOOL_STONE_BREAK_4
        },
        [v2.WOOL] = {
            v_u_48.MULTI_BREAK_TOOL_WOOL_BREAK_1,
            v_u_48.MULTI_BREAK_TOOL_WOOL_BREAK_2,
            v_u_48.MULTI_BREAK_TOOL_WOOL_BREAK_3,
            v_u_48.MULTI_BREAK_TOOL_WOOL_BREAK_4
        },
        [v2.WOOD] = {
            v_u_48.MULTI_BREAK_TOOL_WOOD_BREAK_1,
            v_u_48.MULTI_BREAK_TOOL_WOOD_BREAK_2,
            v_u_48.MULTI_BREAK_TOOL_WOOD_BREAK_3,
            v_u_48.MULTI_BREAK_TOOL_WOOD_BREAK_4
        }
    },
    ["firstPerson"] = {
        ["verticalOffset"] = 1,
        ["holdAnimation"] = v_u_7.FLAMETHROWER_IDLE
    },
    ["disableFirstPersonWalkAnimation"] = true,
    ["sharingDisabled"] = true
}
v_u_96[v1459] = v1460
local v1461 = v_u_58.FIRE_3_ENCHANT
local v1462 = {
    ["displayName"] = "Element of Fire",
    ["image"] = v36.FIRE_ENCHANT,
    ["description"] = "Give you the fire enchant, lasts 180 seconds",
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
v_u_96[v1461] = v1462
local v1463 = v_u_58.BERSERKER_3_ENCHANT
local v1464 = {
    ["displayName"] = "Heart of Berserker",
    ["image"] = v36.BERSERKER_ENCHANT,
    ["description"] = "Give you the berserker enchant, lasts 180 seconds",
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
v_u_96[v1463] = v1464
local v1465 = v_u_58.STATIC_3_ENCHANT
local v1466 = {
    ["displayName"] = "Element of Static",
    ["image"] = v36.STATIC_ENCHANT,
    ["description"] = "Give you the static enchant, lasts 180 seconds",
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
v_u_96[v1465] = v1466
local v1467 = v_u_58.CRITICAL_STRIKE_3_ENCHANT
local v1468 = {
    ["displayName"] = "Criticle Strike",
    ["image"] = v36.CRITICAL_STRIKE_ENCHANT,
    ["description"] = "Give you the Critical Strike enchant, lasts 180 seconds",
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
v_u_96[v1467] = v1468
local v1469 = v_u_58.HARPOON
local v1470 = {
    ["displayName"] = "Trident",
    ["description"] = "Throw at your target and quickly leap to them.",
    ["image"] = "rbxassetid://18249733341",
    ["sharingDisabled"] = true
}
local v1471 = {
    ["projectileType"] = function(_)
        return "harpoon_projectile"
    end,
    ["fireDelaySec"] = 8,
    ["blockingStatusEffects"] = { v49.GROUNDED },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v1470.projectileSource = v1471
v1470.skins = {
    v21.GOLD_VICTORIOUS_TRITON,
    v21.PLATINUM_VICTORIOUS_TRITON,
    v21.DIAMOND_VICTORIOUS_TRITON,
    v21.EMERALD_VICTORIOUS_TRITON,
    v21.NIGHTMARE_VICTORIOUS_TRITON,
    v21.DEMON_TRITON
}
v_u_96[v1469] = v1470
local v1472 = v_u_58.JELLYFISH
local v1473 = {
    ["displayName"] = "Jellyfish",
    ["image"] = "rbxassetid://18129975091",
    ["sharingDisabled"] = true,
    ["placesBlock"] = {
        ["blockType"] = v_u_58.JELLYFISH_BLOCK_SNAPPING
    }
}
v_u_96[v1472] = v1473
local v1474 = v_u_58.JELLYFISH_BLOCK_SNAPPING
local v1475 = {
    ["displayName"] = "Jellyfish Block Snapper",
    ["sharingDisabled"] = true,
    ["removeFromCustoms"] = true,
    ["block"] = {
        ["breakType"] = v2.STONE
    }
}
v_u_96[v1474] = v1475
local v1476 = {
    ["displayName"] = "Jellyfish Mount",
    ["image"] = "rbxassetid://18129974979",
    ["description"] = "Fly around on this wild jellyfish!",
    ["sharingDisabled"] = true,
    ["consumable"] = {
        ["consumeTime"] = 0.5,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    }
}
v_u_96[v_u_58.JELLYFISH_MOUNT_DEPLOY] = v1476
local v1477 = {
    ["displayName"] = "Oasis Vessel I",
    ["image"] = "rbxassetid://77023773100688",
    ["description"] = "Used to channel water",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["verticalOffset"] = 0.5
    }
}
v_u_96[v_u_58.OASIS_VESSEL] = v1477
local v1478 = v_u_58.OASIS_VESSEL_2
local v1479 = {
    ["displayName"] = "Oasis Vessel II",
    ["image"] = "rbxassetid://117617127234910",
    ["description"] = "Used to channel water",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["verticalOffset"] = 0.5
    },
    ["replaces"] = { v_u_58.OASIS_VESSEL }
}
v_u_96[v1478] = v1479
local v1480 = v_u_58.OASIS_VESSEL_3
local v1481 = {
    ["displayName"] = "Oasis Vessel III",
    ["image"] = "rbxassetid://107817301914072",
    ["description"] = "Used to channel water",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["verticalOffset"] = 0.5
    },
    ["replaces"] = { v_u_58.OASIS_VESSEL_2 }
}
v_u_96[v1480] = v1481
local v1482 = {
    ["displayName"] = "Beach Ball",
    ["image"] = "rbxassetid://18149456734",
    ["consumable"] = {
        ["consumeTime"] = 1,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    }
}
v_u_96[v_u_58.BEACHBALL] = v1482
local v1483 = v_u_58.REAPER_SCYTHE
local v1484 = {
    ["displayName"] = "Grim Reaper\'s Scythe",
    ["image"] = v36.REAPER_SCYTHE,
    ["sword"] = {
        ["damage"] = 0,
        ["swingAnimations"] = { v_u_7.SCYTHE_SLASH_1, v_u_7.SCYTHE_SLASH_2 },
        ["firstPersonSwingAnimations"] = { v_u_7.SCYTHE_SLASH_1_FP, v_u_7.SCYTHE_SLASH_2_FP },
        ["idleAnimation"] = v_u_7.SCYTHE_HOLD,
        ["attackSpeed"] = 1.5,
        ["respectAttackSpeedForEffects"] = true,
        ["applyCooldownOnMiss"] = true
    },
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    }
}
v_u_96[v1483] = v1484
local v1485 = v_u_58.LOBBY_SPRING_PUNCH
local v1486 = {
    ["displayName"] = "Punch Gun",
    ["description"] = "Yeet your enemies with a spring loaded punch!",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["thirdPerson"] = {
        ["holdAnimation"] = v_u_7.ROCKET_LAUNCHER_IDLE
    },
    ["image"] = "rbxassetid://89187423732739",
    ["firstPerson"] = {
        ["scale"] = 0.8
    },
    ["sharingDisabled"] = true,
    ["removeFromCustoms"] = true
}
v_u_96[v1485] = v1486
v_u_96[v_u_58.CLOAK] = {
    ["displayName"] = "Cloak",
    ["description"] = "Move in shadow!",
    ["image"] = "",
    ["backpack"] = {},
    ["sharingDisabled"] = true,
    ["removeFromCustoms"] = true
}
v_u_96[v_u_58.SHADOW_COIN] = {
    ["displayName"] = "Shadow Coin",
    ["image"] = "rbxassetid://18938976671",
    ["sharingDisabled"] = true,
    ["keepOnDeath"] = true
}
local v1487 = v_u_58.BLACK_MARKET_SHOP
local v1488 = {
    ["displayName"] = "BLACK_MARKET_SHOP",
    ["sharingDisabled"] = true,
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["disableInventoryPickup"] = true,
        ["maxPlaced"] = 1,
        ["noSuffocation"] = true,
        ["unbreakableByTeammates"] = true,
        ["collectionServiceTags"] = { "single-space-block" }
    },
    ["skins"] = { v21.HALLOWEEN_BLACK_MARKET_SHOP, v21.HOLIDAY_BLACK_MARKET_SHOP, v21.TIDAL_BLACK_MARKET_SHOP }
}
v_u_96[v1487] = v1488
local v1489 = v_u_58.BLACK_MARKET_REROLL_ITEMS
local v1490 = {
    ["displayName"] = "Reroll Discounted Items",
    ["description"] = "Rerolls all of the below discounted items",
    ["image"] = v36.WORLD_EDIT_ROTATE,
    ["consumable"] = {
        ["consumeTime"] = 0.5,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    },
    ["sharingDisabled"] = true
}
v_u_96[v1489] = v1490
local v1491 = {
    ["displayName"] = "Black Market Upgrade 1",
    ["description"] = "Unlocks: (Serpent\'s Touch Potion), (Fury Potion)\nRandom Pool: +1 Items\nItem Discounts: 15%->20%",
    ["image"] = "rbxassetid://95888205553099",
    ["consumable"] = {
        ["consumeTime"] = 0.5,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    },
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.BLACK_MARKET_UPGRADE_1] = v1491
local v1492 = {
    ["displayName"] = "Black Market Upgrade 2",
    ["description"] = "Unlocks: (Mini Shield Potion)\nRandom Pool: +1 Items",
    ["image"] = "rbxassetid://95888205553099",
    ["consumable"] = {
        ["consumeTime"] = 0.5,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    },
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.BLACK_MARKET_UPGRADE_2] = v1492
local v1493 = {
    ["displayName"] = "Black Market Upgrade 3",
    ["description"] = "Unlocks: (Invis Potion)\nRandom Pool: +1 Items\nItem Discounts: 15%->20%",
    ["image"] = "rbxassetid://95888205553099",
    ["consumable"] = {
        ["consumeTime"] = 0.5,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    },
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.BLACK_MARKET_UPGRADE_3] = v1493
local v1494 = v_u_58.LIMESTONE
local v1495 = {
    ["displayName"] = "Limestone",
    ["footstepSound"] = v47.STONE
}
local v1496 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 121
        }
    }
}
v1495.block = v1496
v_u_96[v1494] = v1495
local v1497 = v_u_58.LIFE_BOW
local v1498 = {
    ["displayName"] = "Life Bow",
    ["description"] = "Does not use arrows, instead consuming health when fired. Gain life force on successful hits."
}
local v1499 = {
    ["projectileType"] = function()
        return "life_arrow"
    end,
    ["ammoItemTypes"] = nil,
    ["fireDelaySec"] = 0.6,
    ["maxStrengthChargeSec"] = 0.65,
    ["minStrengthScalar"] = 0.3333333333333333,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.LIFE_BOW_SHOT },
    ["chargeBeginSound"] = { v_u_48.BOW_DRAW },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.BOW_AIM,
        ["fireAnimation"] = v_u_7.BOW_FIRE,
        ["drawAnimation"] = v_u_7.BOW_DRAW
    }
}
v1498.projectileSource = v1499
v1498.firstPerson = {
    ["verticalOffset"] = 0
}
v1498.image = "rbxassetid://115560591356432"
v1498.sharingDisabled = true
v1498.skins = { v21.LIFE_BOW_MUMMY }
v_u_96[v1497] = v1498
local v1500 = v_u_58.LIFE_CROSSBOW
local v1501 = {
    ["displayName"] = "Life Crossbow",
    ["description"] = "Does not use arrows, instead consuming health when fired. Gain life force on successful hits."
}
local v1502 = {
    ["projectileType"] = function()
        return "life_crossbow_arrow"
    end,
    ["ammoItemTypes"] = nil,
    ["fireDelaySec"] = v_u_54.CROSSBOW_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.LIFE_BOW_SHOT },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.CROSSBOW_FIRE
    }
}
v1501.projectileSource = v1502
v1501.replaces = { v_u_58.LIFE_BOW }
v1501.image = "rbxassetid://70683200838838"
v1501.sharingDisabled = true
v1501.skins = { v21.LIFE_CROSSBOW_MUMMY }
v_u_96[v1500] = v1501
local v1503 = v_u_58.LIFE_HEADHUNTER
local v1504 = {
    ["displayName"] = "Life Headhunter",
    ["description"] = "Does not use arrows, instead consuming health when fired. Gain life force on successful hits."
}
local v1505 = {
    ["projectileType"] = function()
        return "life_headhunter_arrow"
    end,
    ["ammoItemTypes"] = nil,
    ["fireDelaySec"] = v_u_54.HEADHUNTER_FIRE_DELAY,
    ["walkSpeedMultiplier"] = 0.35,
    ["launchSound"] = { v_u_48.LIFE_HEADHUNTER_SHOT },
    ["reload"] = {
        ["reloadSound"] = { v_u_48.CROSSBOW_RELOAD }
    },
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM_FP,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT_FP
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT
    }
}
v1504.projectileSource = v1505
v1504.replaces = { v_u_58.LIFE_CROSSBOW }
v1504.image = "rbxassetid://96063940465952"
v1504.sharingDisabled = true
v1504.skins = { v21.LIFE_HEADHUNTER_MUMMY }
v_u_96[v1503] = v1504
local v1506 = v_u_58.SUMMONER_CLAW_1
local v1507 = {
    ["displayName"] = "Summoner Claw I",
    ["image"] = "rbxassetid://18974199292",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["keepOnDeath"] = true,
    ["cooldownId"] = v19.SUMMONER_CLAW_ATTACK,
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["actsAsSwordGroup"] = true
}
v_u_96[v1506] = v1507
local v1508 = v_u_58.SUMMONER_CLAW_2
local v1509 = {
    ["displayName"] = "Summoner Claw II",
    ["image"] = "rbxassetid://18974200883",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["keepOnDeath"] = true,
    ["cooldownId"] = v19.SUMMONER_CLAW_ATTACK,
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["actsAsSwordGroup"] = true,
    ["replaces"] = { v_u_58.SUMMONER_CLAW_1 }
}
v_u_96[v1508] = v1509
local v1510 = v_u_58.SUMMONER_CLAW_3
local v1511 = {
    ["displayName"] = "Summoner Claw III",
    ["image"] = "rbxassetid://18974198162",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["keepOnDeath"] = true,
    ["cooldownId"] = v19.SUMMONER_CLAW_ATTACK,
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["actsAsSwordGroup"] = true,
    ["replaces"] = { v_u_58.SUMMONER_CLAW_2 }
}
v_u_96[v1510] = v1511
local v1512 = v_u_58.SUMMONER_CLAW_4
local v1513 = {
    ["displayName"] = "Summoner Claw IV",
    ["image"] = "rbxassetid://18974202582",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["keepOnDeath"] = true,
    ["cooldownId"] = v19.SUMMONER_CLAW_ATTACK,
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["actsAsSwordGroup"] = true,
    ["replaces"] = { v_u_58.SUMMONER_CLAW_3 }
}
v_u_96[v1512] = v1513
local v1514 = v_u_58.PIT
local v1515 = {
    ["displayName"] = "Construction Pit",
    ["image"] = "rbxassetid://101095778694841",
    ["description"] = "Throw this item to create a pit at its location. Try make enemies fall into the void!"
}
local v1516 = {
    ["projectileType"] = function()
        return "pit"
    end,
    ["ammoItemTypes"] = { v_u_58.PIT },
    ["fireDelaySec"] = 1,
    ["maxStrengthChargeSec"] = 0.25,
    ["minStrengthScalar"] = 0.7692307692307692,
    ["launchSound"] = { v_u_48.TELEPEARL_THROW },
    ["firstPerson"] = {
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.PUNCH
    }
}
v1515.projectileSource = v1516
v_u_96[v1514] = v1515
local v1517 = v_u_58.GUARDS_SPEAR
local v1518 = {
    ["displayName"] = "Spear",
    ["image"] = "rbxassetid://127232846136294"
}
local v1519 = {
    ["damage"] = 30,
    ["swingAnimations"] = {},
    ["attackSpeed"] = 0.5,
    ["attackRange"] = 17.5,
    ["respectAttackSpeedForEffects"] = true,
    ["idleAnimation"] = v_u_7.SCYTHE_HOLD
}
local v1520 = {
    ["minChargeTimeSec"] = 0.2,
    ["maxChargeTimeSec"] = 1,
    ["walkSpeedModifier"] = {
        ["multiplier"] = 1,
        ["delay"] = 0.2
    },
    ["chargedSwingAnimations"] = {},
    ["firstPersonChargedSwingAnimations"] = { v_u_7.FP_TWIRLBLADE_ATTACK_2 }
}
v1519.chargedAttack = v1520
v1518.sword = v1519
v1518.firstPerson = {
    ["scale"] = 0.8,
    ["verticalOffset"] = -1.2
}
v1518.sharingDisabled = true
local v1521 = {
    {
        ["tierDescription"] = { "Applies poison on hit" }
    },
    {
        ["tierDescription"] = { "Increased damage" }
    }
}
v1518.tierUpgradeElements = v1521
v_u_96[v1517] = v1518
local v1522 = v_u_58.INVISIBLE_CLOAK
local v1523 = {
    ["displayName"] = "Cloak",
    ["description"] = "become invisible after staying still",
    ["image"] = "rbxassetid://18952530979",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["backpack"] = {
        ["cooldown"] = 10
    },
    ["sharingDisabled"] = true
}
local v1524 = {
    {
        ["tierDescription"] = { "Gain critical strike for a short period after leaving invisibility" }
    },
    {
        ["tierDescription"] = { "Landing a critical strike grants a temporary speed boost" }
    },
    {
        ["tierDescription"] = { "Gain critical strike for longer after leaving invisibility" }
    }
}
v1523.tierUpgradeElements = v1524
v_u_96[v1522] = v1523
local v1525 = v_u_58.UNSTABLE_PORTAL
local v1526 = {
    ["displayName"] = "Unstable Portal",
    ["image"] = "rbxassetid://100881763858968",
    ["description"] = "Teleport you to a random location",
    ["consumable"] = {
        ["consumeTime"] = 0.5,
        ["blockingStatusEffects"] = { v49.GROUNDED }
    },
    ["maxStackSize"] = {
        ["amount"] = 2
    },
    ["sharingDisabled"] = true
}
v_u_96[v1525] = v1526
v_u_96[v_u_58.POGO_STICK] = {
    ["displayName"] = "Pogo Stick",
    ["image"] = "rbxassetid://105174521741104",
    ["description"] = ""
}
local v1527 = v_u_58.SPRING_PUNCH
local v1528 = {
    ["displayName"] = "Punch Gun",
    ["description"] = "Yeet your enemies with a spring loaded punch!",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["thirdPerson"] = {
        ["holdAnimation"] = v_u_7.ROCKET_LAUNCHER_IDLE
    },
    ["image"] = "rbxassetid://89187423732739",
    ["firstPerson"] = {
        ["scale"] = 0.8
    }
}
v_u_96[v1527] = v1528
local v1529 = v_u_58.ROYALE_BED
local v1530 = {
    ["displayName"] = "Bed",
    ["footstepSound"] = v47.WOOD
}
local v1531 = {
    ["healthType"] = v3.GLOBAL,
    ["breakType"] = v2.WOOD,
    ["blastProof"] = true,
    ["blastResistance"] = 10000000,
    ["seeThrough"] = true,
    ["disableInventoryPickup"] = true,
    ["health"] = 18,
    ["collectionServiceTags"] = { "royale-bed" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 12005
        }
    }
}
v1530.block = v1531
v_u_96[v1529] = v1530
local v1532 = v_u_58.GRAVE_TRAP
local v1533 = {
    ["displayName"] = "Grave Trap",
    ["image"] = "rbxassetid://7498163110"
}
local v1534 = {
    ["breakType"] = v2.STONE,
    ["breakSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["collectionServiceTags"] = { "GraveTrap" },
    ["seeThrough"] = true,
    ["health"] = 18,
    ["disableInventoryPickup"] = true,
    ["maxPlaced"] = 1,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8022
        }
    }
}
v1533.block = v1534
v_u_96[v1532] = v1533
local v1535 = v_u_58.IRON_PICKAXE_SWORD
local v1536 = {
    ["displayName"] = "Iron PickAxe",
    ["image"] = "rbxassetid://6875481325",
    ["description"] = "Handy tool for mining crystals"
}
local v1537 = {
    ["damage"] = 1,
    ["knockbackMultiplier"] = {
        ["disabled"] = true
    },
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["attackSpeed"] = 1,
    ["swingSounds"] = { v_u_48.JUGGERNAUT_ATTACK_SWING_1 },
    ["swingAnimations"] = {}
}
v1536.sword = v1537
v_u_96[v1535] = v1536
local v1538 = v_u_58.DIAMOND_PICKAXE_SWORD
local v1539 = {
    ["displayName"] = "Iron PickAxe",
    ["image"] = "rbxassetid://6875481325",
    ["description"] = "Handy tool for mining crystals"
}
local v1540 = {
    ["damage"] = 1,
    ["knockbackMultiplier"] = {
        ["disabled"] = true
    },
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["attackSpeed"] = 1,
    ["swingSounds"] = { v_u_48.JUGGERNAUT_ATTACK_SWING_1 },
    ["swingAnimations"] = {}
}
v1539.sword = v1540
v_u_96[v1538] = v1539
local v1541 = v_u_58.SPIDER_QUEEN_WEB
local v1542 = {
    ["displayName"] = "Spider Queen\'s Web",
    ["description"] = "",
    ["image"] = "rbxassetid://15056224013"
}
local v1543 = {
    ["breakType"] = v2.WOOL,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.SPIDER_WEB_BLOCK_BROKEN)
    end,
    ["cannotPathfindOn"] = true,
    ["seeThrough"] = true,
    ["noSuffocation"] = true,
    ["health"] = 1,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8033
        }
    },
    ["disableInventoryPickup"] = true,
    ["disableInCreative"] = true,
    ["flammable"] = true,
    ["flameSpreadStopChance"] = 0.1,
    ["blastResistance"] = 0.3
}
v1542.block = v1543
v_u_96[v1541] = v1542
v_u_96[v_u_58.CRYSTAL_ORE] = {
    ["displayName"] = "Mysterious Crystal",
    ["displayNameColor"] = v50.mcPink,
    ["image"] = "rbxassetid://9866758117",
    ["hotbarFillRight"] = true
}
local v1544 = v_u_58.KNIGHT_SHIELD
local v1545 = {
    ["displayName"] = "Guard\'s Shield",
    ["description"] = "Reduces incoming damage and knockback when held and can be used to bash enemies when in a defensive stance.",
    ["image"] = v36.KNIGHT_SHIELD_RENDER,
    ["sharingDisabled"] = true,
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["durability"] = {
        ["itemHealth"] = 100
    },
    ["firstPerson"] = {
        ["verticalOffset"] = -0.9
    }
}
local v1546 = {
    ["damage"] = 30,
    ["knockbackMultiplier"] = {
        ["horizontal"] = 1.5
    },
    ["attackRange"] = 3.5 * v_u_17,
    ["respectAttackSpeedForEffects"] = true,
    ["applyCooldownOnMiss"] = true,
    ["attackSpeed"] = 0.8,
    ["swingSounds"] = { v_u_48.JUGGERNAUT_ATTACK_SWING_1, v_u_48.JUGGERNAUT_ATTACK_SWING_2 },
    ["swingAnimations"] = { v_u_7.KNIGHT_SHIELD_THIRD_PERSON_BASH }
}
v1545.sword = v1546
v_u_96[v1544] = v1545
v_u_96[v_u_58.BLOCK_REPAIR_TOOL] = {
    ["displayName"] = "Repair Tool",
    ["description"] = "Use to repair blocks",
    ["image"] = "rbxassetid://130181835534959",
    ["sharingDisabled"] = true,
    ["blockRepair"] = {}
}
local v1547 = {
    ["displayName"] = "Christmas Tree",
    ["image"] = "rbxassetid://73183813669277",
    ["consumable"] = {
        ["consumeTime"] = 1,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    }
}
v_u_96[v_u_58.CHRISTMAS_TREE_DEPLOY] = v1547
local v1548 = v_u_58.SUMMON_STONE
local v1549 = {
    ["displayName"] = "Summon Stone",
    ["image"] = v36.SUMMON_STONE,
    ["sharingDisabled"] = true,
    ["maxStackSize"] = {
        ["amount"] = v33.MAX_SPIRITS
    }
}
v_u_96[v1548] = v1549
local v1550 = v_u_58.SPIRIT_STAFF
local v1551 = {
    ["displayName"] = "Spirit Staff",
    ["image"] = v36.SPIRIT_STAFF,
    ["multiProjectileSource"] = {
        ["attack_spirit"] = v34[v35.ATTACK],
        ["heal_spirit"] = v34[v35.HEAL]
    },
    ["sharingDisabled"] = true,
    ["skins"] = { v21.SPIRIT_STAFF_EASTER }
}
v_u_96[v1550] = v1551
v_u_96[v_u_58.SPIRIT_TIER_1] = {
    ["displayName"] = "Spirit Tier I",
    ["image"] = v36.SPIRIT_SUMMONER_TIER_1_LARGE,
    ["description"] = "Upgrades your current spirit tier, making your spirits stronger."
}
v_u_96[v_u_58.SPIRIT_TIER_2] = {
    ["displayName"] = "Spirit Tier II",
    ["image"] = v36.SPIRIT_SUMMONER_TIER_2_LARGE,
    ["description"] = "Upgrades your current spirit tier, making your spirits stronger."
}
v_u_96[v_u_58.SPIRIT_TIER_3] = {
    ["displayName"] = "Spirit Tier III",
    ["image"] = v36.SPIRIT_SUMMONER_TIER_3_LARGE,
    ["description"] = "Upgrades your current spirit tier, making your spirits stronger."
}
local v1552 = v_u_58.LOBBY_BOOMERANG
local v1553 = {
    ["displayName"] = "Bananarang",
    ["sharingDisabled"] = true,
    ["image"] = "rbxassetid://115717861330143",
    ["description"] = "Go bananas with this bundle of boomerangs!"
}
local v1554 = {
    ["projectileType"] = function()
        return "bananarang"
    end,
    ["fireDelaySec"] = 0.3,
    ["maxStrengthChargeSec"] = 1,
    ["minStrengthScalar"] = 1,
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_LASSO_CHARGE,
        ["fireAnimation"] = v_u_7.FP_USE_ITEM
    }
}
v1553.projectileSource = v1554
v_u_96[v1552] = v1553
local v1555 = v_u_58.LOBBY_KAIDA_CLAW
local v1556 = {
    ["displayName"] = "Kaida Claw",
    ["image"] = "rbxassetid://18974202582",
    ["sharingDisabled"] = true,
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["keepOnDeath"] = true,
    ["cooldownId"] = v19.SUMMONER_CLAW_ATTACK,
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["actsAsSwordGroup"] = true
}
v_u_96[v1555] = v1556
v_u_96[v_u_58.LOBBY_POGO_STICK] = {
    ["displayName"] = "Pogo Stick",
    ["image"] = "rbxassetid://105174521741104",
    ["description"] = ""
}
v_u_96[v_u_58.LOBBY_VIP_HOVERBOARD] = {
    ["displayName"] = "Hover T-300",
    ["image"] = v36.VIP_HOVER_BOARD,
    ["description"] = "Newest generation of hoverboard developed by Heppy Tech Inc."
}
local v1557 = {
    ["displayName"] = "Shrink Potion",
    ["description"] = "Consume potion to grow yourself a bigger head.",
    ["image"] = "rbxassetid://7911163448",
    ["consumable"] = {
        ["consumeTime"] = 0.8,
        ["potion"] = true
    }
}
v_u_96[v_u_58.LOBBY_SHRINK_POTION] = v1557
v_u_96[v_u_58.LOBBY_DRAGON_MORTAR] = {
    ["displayName"] = "Dragon Mortar",
    ["image"] = "rbxassetid://16212332887",
    ["description"] = "Launch a festive dragon rocket to deal damage in an area!"
}
local v1558 = v_u_58.TEARBLOOM_SEED
local v1559 = {
    ["displayName"] = "Tearbloom Seed",
    ["image"] = v36.TEARBLOOM_SEED
}
local v1560 = v32.TEARBLOOM_BUFF_HEAL_PER_STACK
v1559.description = "Heals nearby allies for " .. tostring(v1560) .. " health per second when fully grown"
v1559.placesBlock = {
    ["blockType"] = v_u_58.TEARBLOOM_FLOWER
}
v1559.sharingDisabled = true
v1559.skins = { v21.TEARBLOOM_SEED_EASTER }
v_u_96[v1558] = v1559
local v1561 = v_u_58.TEARBLOOM_FLOWER
local v1562 = {
    ["displayName"] = "Tearbloom Flower"
}
local v1563 = {
    ["healthType"] = v3.GLOBAL,
    ["breakType"] = v2.WOOD,
    ["health"] = v32.FLOWER_HEALTH,
    ["denyPlaceOn"] = true,
    ["placedBy"] = {
        ["itemType"] = v_u_58.TEARBLOOM_SEED
    },
    ["seeThrough"] = true,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.CROP_PLANT_1, v_u_48.CROP_PLANT_2, v_u_48.CROP_PLANT_3)
    end,
    ["disableFlamableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["collectionServiceTags"] = { "SpiritGardenerFlower" },
    ["unbreakableByTeammates"] = true,
    ["noRegen"] = true,
    ["hideDamageTextures"] = true,
    ["noSuffocation"] = true
}
v1562.block = v1563
v1562.image = v36.TEARBLOOM_FLOWER
v1562.skins = { v21.TEARBLOOM_FLOWER_EASTER }
v_u_96[v1561] = v1562
local v1564 = v_u_58.SOULVINE_SEED
local v1565 = {
    ["displayName"] = "Soulvine Seed"
}
local v1566 = v32.SOULVINE_BUFF_DAMAGE_PERCENT_PER_STACK
v1565.description = "Grants nearby allies a " .. tostring(v1566) .. "% damage buff when fully grown"
v1565.image = v36.SOULVINE_SEED
v1565.placesBlock = {
    ["blockType"] = v_u_58.SOULVINE_FLOWER
}
v1565.sharingDisabled = true
v1565.skins = { v21.SOULVINE_SEED_EASTER }
v_u_96[v1564] = v1565
local v1567 = v_u_58.SOULVINE_FLOWER
local v1568 = {
    ["displayName"] = "Soulvine Flower"
}
local v1569 = {
    ["healthType"] = v3.GLOBAL,
    ["breakType"] = v2.DIRT,
    ["health"] = v32.FLOWER_HEALTH,
    ["denyPlaceOn"] = true,
    ["placedBy"] = {
        ["itemType"] = v_u_58.SOULVINE_SEED
    },
    ["seeThrough"] = true,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.CROP_PLANT_1, v_u_48.CROP_PLANT_2, v_u_48.CROP_PLANT_3)
    end,
    ["disableFlamableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["collectionServiceTags"] = { "SpiritGardenerFlower" },
    ["unbreakableByTeammates"] = true,
    ["noRegen"] = true,
    ["hideDamageTextures"] = true,
    ["noSuffocation"] = true
}
v1568.block = v1569
v1568.image = v36.SOULVINE_FLOWER
v1568.skins = { v21.SOULVINE_FLOWER_EASTER }
v_u_96[v1567] = v1568
local v1570 = v_u_58.CRYSTALHEART_SEED
local v1571 = {
    ["displayName"] = "Crystalheart Seed"
}
local v1572 = (v32.FLOWER_TEAM_GENERATOR_SPEED_MULTIPLIER - 1) * 100
local v1573 = math.round(v1572)
local v1574 = tostring(v1573)
local v1575 = (v32.FLOWER_GLOBAL_GENERATOR_SPEED_MULTIPLIER - 1) * 100
local v1576 = math.round(v1575)
v1571.description = "Plant near a team generator for a " .. v1574 .. "% speed increase or a global generator for a " .. tostring(v1576) .. "% speed increase when fully grown"
v1571.image = v36.CRYSTALHEART_SEED
v1571.placesBlock = {
    ["blockType"] = v_u_58.CRYSTALHEART_FLOWER
}
v1571.sharingDisabled = true
v1571.skins = { v21.CRYSTALHEART_SEED_EASTER }
v_u_96[v1570] = v1571
local v1577 = v_u_58.CRYSTALHEART_FLOWER
local v1578 = {
    ["displayName"] = "Crystalheart Flower"
}
local v1579 = {
    ["healthType"] = v3.GLOBAL,
    ["breakType"] = v2.DIRT,
    ["health"] = v32.FLOWER_HEALTH,
    ["denyPlaceOn"] = true,
    ["placedBy"] = {
        ["itemType"] = v_u_58.CRYSTALHEART_SEED
    },
    ["seeThrough"] = true,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.CROP_PLANT_1, v_u_48.CROP_PLANT_2, v_u_48.CROP_PLANT_3)
    end,
    ["disableFlamableByTeammates"] = true,
    ["disableInventoryPickup"] = true,
    ["collectionServiceTags"] = { "SpiritGardenerFlower" },
    ["unbreakableByTeammates"] = true,
    ["noRegen"] = true,
    ["hideDamageTextures"] = true,
    ["noSuffocation"] = true
}
v1578.block = v1579
v1578.skins = { v21.CRYSTALHEART_FLOWER_EASTER }
v_u_96[v1577] = v1578
local v1580 = v_u_58.VOID_BAIT
local v1581 = {
    ["displayName"] = "Void Rock",
    ["footstepSound"] = v47.VOID,
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["hitSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.STONE_BREAK)
        end,
        ["collectionServiceTags"] = { "void_bait" }
    }
}
v_u_96[v1580] = v1581
local v1582 = v_u_58.SCARAB_PORTAL
local v1583 = {
    ["displayName"] = "Scarab Portal",
    ["footstepSound"] = v47.VOID,
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["hitSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.STONE_BREAK)
        end,
        ["collectionServiceTags"] = { "scarab_portal" }
    }
}
v_u_96[v1582] = v1583
local v1584 = v_u_58.CHRISTMAS_SCAFFOLD
local v1585 = {
    ["displayName"] = "Scaffold",
    ["footstepSound"] = v47.WOOD
}
local v1586 = {
    ["breakType"] = v2.WOOD,
    ["greedyMesh"] = {
        ["textures"] = {},
        ["rotation"] = {}
    },
    ["blastResistance"] = 1.4,
    ["health"] = 1,
    ["disableInventoryPickup"] = true,
    ["collectionServiceTags"] = { "scaffold" },
    ["flammable"] = true
}
v1585.block = v1586
v1585.sharingDisabled = true
v_u_96[v1584] = v1585
local v1587 = v_u_58.CHRISTMAS_DRAWBRIDGE
local v1588 = {
    ["displayName"] = "Bridge Printer",
    ["description"] = "Hit with your hammer to toggle a scaffold bridge!",
    ["footstepSound"] = v47.STONE
}
local v1589 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {},
        ["rotation"] = {}
    },
    ["blastResistance"] = 1.4,
    ["health"] = 10,
    ["disableInventoryPickup"] = true,
    ["maxPlaced"] = 24
}
v1588.block = v1589
v1588.sharingDisabled = true
v1588.drawBridgeSource = {}
v_u_96[v1587] = v1588
local v1590 = v_u_58.SNAKE_SHRINE
local v1591 = {
    ["displayName"] = "Snake Shrine",
    ["block"] = {
        ["isImportantBlock"] = true,
        ["blastProof"] = true,
        ["breakType"] = v2.WOOD,
        ["health"] = 20,
        ["collectionServiceTags"] = { "SnakeShrine" }
    }
}
v_u_96[v1590] = v1591
local v1592 = v_u_58.LADDER
local v1593 = {
    ["displayName"] = "Ladder",
    ["image"] = "rbxassetid://85312425413460"
}
local v1594 = {
    ["breakType"] = v2.WOOD,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GENERIC_BLOCK_PLACE)
    end,
    ["health"] = 10,
    ["hideDamageTextures"] = true,
    ["noSuffocation"] = true,
    ["denyPlaceOnBlockTypes"] = { v_u_58.LADDER },
    ["placementFaces"] = {
        Enum.NormalId.Front,
        Enum.NormalId.Back,
        Enum.NormalId.Left,
        Enum.NormalId.Right
    },
    ["attachmentFace"] = Enum.NormalId.Back,
    ["minecraftConversions"] = {
        {
            ["blockId"] = 65
        }
    }
}
v1593.block = v1594
v_u_96[v1592] = v1593
v_u_96[v_u_58.FLASK] = {
    ["displayName"] = "Flask",
    ["removeFromCustoms"] = true
}
local v1595 = {
    ["displayName"] = "Flying Carpet",
    ["image"] = "rbxassetid://140415462671020",
    ["description"] = "Your very own flying carpet!",
    ["sharingDisabled"] = true,
    ["consumable"] = {
        ["consumeTime"] = 0,
        ["soundOverride"] = "None",
        ["disableAnimation"] = true
    }
}
v_u_96[v_u_58.FLYING_CARPET_DEPLOY] = v1595
local v1596 = v_u_58.SACROPHAGUS
local v1597 = {
    ["displayName"] = "Sacrophagus",
    ["image"] = "rbxassetid://9369048721"
}
local v1598 = {
    ["breakType"] = v2.STONE,
    ["placeSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.STONE_BREAK)
    end,
    ["seeThrough"] = true,
    ["health"] = 100,
    ["collectionServiceTags"] = { "sacrophagus" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8010
        }
    }
}
v1597.block = v1598
v_u_96[v1596] = v1597
local v1599 = v_u_58.SUMMER_2025_TREASURE_MAP
local v1600 = {
    ["displayName"] = "Enchanted Map",
    ["description"] = "Follow this map to find a treasure!",
    ["image"] = v36.SUMMER_2025_TREASURE_MAP,
    ["keepOnDeath"] = true,
    ["maxStackSize"] = {
        ["amount"] = 1
    }
}
v_u_96[v1599] = v1600
local v1601 = {
    ["displayName"] = "Watermelon",
    ["description"] = "A refreshing summer treat! Just make sure you spit out those seeds!",
    ["image"] = "rbxassetid://129609229617486",
    ["consumable"] = {
        ["consumeTime"] = 1
    }
}
v_u_96[v_u_58.WATERMELON] = v1601
local v1602 = v_u_58.WATER_GUN
local v1603 = {
    ["displayName"] = "Water Gun",
    ["description"] = "Soak enemies and put out fires!",
    ["image"] = "rbxassetid://102523795493590"
}
local v1604 = {
    ["projectileType"] = function()
        return "water"
    end,
    ["fireDelaySec"] = 0.3,
    ["launchSound"] = {
        v_u_48.WATER_SHOT_1,
        v_u_48.WATER_SHOT_2,
        v_u_48.WATER_SHOT_3,
        v_u_48.WATER_SHOT_4
    },
    ["thirdPerson"] = {
        ["aimAnimation"] = v_u_7.HEADHUNTER_AIM,
        ["fireAnimation"] = v_u_7.HEADHUNTER_SHOOT
    }
}
v1603.projectileSource = v1604
v1603.sharingDisabled = true
v1603.firstPerson = {
    ["verticalOffset"] = -1,
    ["horizontalOffset"] = 1
}
v_u_96[v1602] = v1603
v_u_96[v_u_58.HIVE_UPGRADE_1] = {
    ["displayName"] = "Hive Upgrade 1",
    ["description"] = "Increase Duration of hive",
    ["image"] = v36.SCARAB_SPAWNER_1
}
v_u_96[v_u_58.HIVE_UPGRADE_2] = {
    ["displayName"] = "Hive Upgrade 2",
    ["description"] = "Spawn a exploding scarab once a while",
    ["image"] = v36.SCARAB_SPAWNER_2
}
v_u_96[v_u_58.HIVE_UPGRADE_3] = {
    ["displayName"] = "Hive Upgrade 3",
    ["description"] = "Have a chance to spawn an extra scarab",
    ["image"] = v36.SCARAB_SPAWNER_3
}
v_u_96[v_u_58.SCARAB_UPGRADE_1] = {
    ["displayName"] = "Scarab Upgrade 1",
    ["description"] = "Increase Scarab\'s health and damage and let them fly",
    ["image"] = v36.SCARAB_1
}
v_u_96[v_u_58.SCARAB_UPGRADE_2] = {
    ["displayName"] = "Scarab Upgrade 2",
    ["description"] = "Increase Scarab\'s health,damage and movement speed",
    ["image"] = v36.SCARAB_2
}
v_u_96[v_u_58.SCARAB_UPGRADE_3] = {
    ["displayName"] = "Scarab Upgrade 3",
    ["description"] = "Increase Scarab\'s health and damage. Heal owner for 1 hp whenever they damage a player",
    ["image"] = v36.SCARAB_2
}
local v1605 = v_u_58.SCARAB_SPAWNER
local v1606 = {
    ["displayName"] = "Hive",
    ["footstepSound"] = v47.VOID,
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["hitSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.STONE_BREAK)
        end,
        ["collectionServiceTags"] = { "scarab_spawner" },
        ["disableInventoryPickup"] = true,
        ["health"] = 25
    },
    ["sharingDisabled"] = true,
    ["keepOnDeath"] = true,
    ["image"] = v36.SCARAB_SPAWNER_1
}
v_u_96[v1605] = v1606
local v1607 = v_u_58.WOOD_GUN_BLADE
local v1608 = {
    ["displayName"] = "Wood Cutlass and Blunderbuss",
    ["image"] = "rbxassetid://79195284970214",
    ["sword"] = {
        ["damage"] = 20,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = { v21.WOOD_GUN_BLADE_SUMMMER }
}
v_u_96[v1607] = v1608
local v1609 = v_u_58.STONE_GUN_BLADE
local v1610 = {
    ["displayName"] = "Stone Cutlass and Blunderbuss",
    ["image"] = "rbxassetid://125306754061543",
    ["sword"] = {
        ["damage"] = 25,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = { v21.STONE_GUN_BLADE_SUMMMER }
}
v_u_96[v1609] = v1610
local v1611 = v_u_58.IRON_GUN_BLADE
local v1612 = {
    ["displayName"] = "Iron Cutlass and Blunderbuss",
    ["image"] = "rbxassetid://111154025975229",
    ["sword"] = {
        ["damage"] = 30,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = { v21.IRON_GUN_BLADE_SUMMMER }
}
v_u_96[v1611] = v1612
local v1613 = v_u_58.DIAMOND_GUN_BLADE
local v1614 = {
    ["displayName"] = "Diamond Cutlass and Blunderbuss",
    ["image"] = "rbxassetid://95595318707967",
    ["sword"] = {
        ["damage"] = 42,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = { v21.DIAMOND_GUN_BLADE_SUMMMER }
}
v_u_96[v1613] = v1614
local v1615 = v_u_58.EMERALD_GUN_BLADE
local v1616 = {
    ["displayName"] = "Emerald Cutlass and Blunderbuss",
    ["image"] = "rbxassetid://135393616103486",
    ["sword"] = {
        ["damage"] = 55,
        ["attackSpeed"] = v_u_54.SWORD_SWING_COOLDOWN
    },
    ["firstPerson"] = {
        ["scale"] = 0.8,
        ["verticalOffset"] = -1.2
    },
    ["skins"] = { v21.EMERALD_GUN_BLADE_SUMMMER }
}
v_u_96[v1615] = v1616
local v1617 = v_u_58.PILLOW
local v1618 = {
    ["displayName"] = "Pillow",
    ["description"] = "Usage: Place under your head when sleeping to achieve maximum comfort.",
    ["image"] = "rbxassetid://77581289137921"
}
local v1619 = {
    ["damage"] = 1,
    ["attackSpeed"] = v_u_54.HAMMER_SWING_COOLDOWN,
    ["respectAttackSpeedForEffects"] = true,
    ["attackRange"] = 5 * v_u_17,
    ["applyCooldownOnMiss"] = true,
    ["swingSounds"] = { v_u_48.GAUNTLETS_JAB_SWING_1, v_u_48.GAUNTLETS_JAB_SWING_2 },
    ["swingAnimations"] = { v_u_7.GREAT_HAMMER_SWING_1, v_u_7.GREAT_HAMMER_SWING_2 },
    ["firstPersonSwingAnimations"] = { v_u_7.GREAT_HAMMER_SWING_1_FP, v_u_7.GREAT_HAMMER_SWING_2_FP },
    ["knockbackMultiplier"] = {
        ["horizontal"] = 1.2,
        ["vertical"] = 1.1
    },
    ["multiHitCheckDurationSec"] = 0.25
}
local v1620 = {
    ["showHoldProgressAfterSec"] = 0.25,
    ["maxChargeTimeSec"] = v_u_54.HAMMER_CHARGE_TIME,
    ["minChargeTimeSec"] = v_u_54.HAMMER_CHARGE_TIME,
    ["attackCooldown"] = 0.65,
    ["bonusDamage"] = 1,
    ["bonusKnockback"] = {
        ["horizontal"] = 0.2,
        ["vertical"] = 0.1
    },
    ["walkSpeedModifier"] = {
        ["multiplier"] = 0.9
    },
    ["chargingEffects"] = {
        ["thirdPersonAnim"] = v_u_7.GREAT_HAMMER_CHARGE,
        ["firstPersonAnim"] = v_u_7.GREAT_HAMMER_CHARGE_FP
    },
    ["chargedSwingAnimations"] = { v_u_7.JUGGERNAUT_ATTACK_3 },
    ["firstPersonChargedSwingAnimations"] = { v_u_7.JUGGERNAUT_ATTACK_3_FP },
    ["chargedSwingSounds"] = { v_u_48.GAUNTLETS_JAB_SWING_2 }
}
v1619.chargedAttack = v1620
v1618.sword = v1619
v1618.firstPerson = {
    ["scale"] = 0.8
}
v_u_96[v1617] = v1618
local v1621 = v_u_58.EXPLODING_TANK_BLOCK
local v1622 = {
    ["displayName"] = "Explosive Tank",
    ["image"] = v36.EXPLODING_TANK_BLOCK_RENDER,
    ["maxStackSize"] = {
        ["amount"] = 8
    },
    ["description"] = "Placeable explosive. Hitting it triggers a 1-second countdown before detonation",
    ["block"] = {
        ["breakType"] = v2.STONE,
        ["hitSound"] = function()
            -- upvalues: (copy) v_u_55, (copy) v_u_48
            return v_u_55(v_u_48.STONE_BREAK)
        end,
        ["health"] = 50,
        ["blastProof"] = true
    }
}
v_u_96[v1621] = v1622
local v1623 = {
    ["displayName"] = "Firework Backpack",
    ["image"] = "rbxassetid://109643817350168",
    ["description"] = "Launch yourself into the sky with a firework burst! Spawns 2 balloons to float safely back down.",
    ["maxStackSize"] = {
        ["amount"] = 1
    },
    ["backpack"] = {
        ["activeAbility"] = true
    },
    ["sharingDisabled"] = true
}
v_u_96[v_u_58.FIREWORK_BACKPACK] = v1623
local v1624 = v_u_58.AERY_CROWN
local v1625 = {
    ["displayName"] = "Aery Crown",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 1
    },
    ["image"] = "rbxassetid://79496296282171",
    ["sharingDisabled"] = true,
    ["removeFromCustoms"] = true
}
v_u_96[v1624] = v1625
local v1626 = v_u_58.ADETUNDE_CROWN
local v1627 = {
    ["displayName"] = "Adetunde Crown",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 1
    },
    ["image"] = "rbxassetid://112048114059558",
    ["sharingDisabled"] = true,
    ["removeFromCustoms"] = true
}
v_u_96[v1626] = v1627
local v1628 = v_u_58.ELEKTRA_CROWN
local v1629 = {
    ["displayName"] = "Elektra Crown",
    ["armor"] = {
        ["slot"] = v37.HELMET,
        ["damageReductionMultiplier"] = 1
    },
    ["image"] = "rbxassetid://93794091382469",
    ["sharingDisabled"] = true,
    ["removeFromCustoms"] = true
}
v_u_96[v1628] = v1629
v_u_96[v_u_58.BRB_SIGN] = {
    ["displayName"] = "Brb sign",
    ["image"] = "rbxassetid://75760243397525"
}
local v1630 = v_u_58.GRAVE_TRAP_BLOCK
local v1631 = {
    ["displayName"] = "Grave Trap Block",
    ["footstepSound"] = v47.GUM
}
local v1632 = {
    ["breakType"] = v2.STONE,
    ["breakSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.GUMBALL_LAUNCHER_SPLATTER_1)
    end,
    ["disableInventoryPickup"] = true,
    ["disableEnemyInventoryPickup"] = true,
    ["collectionServiceTags"] = { "GraveTrapFloor" },
    ["minecraftConversions"] = {
        {
            ["blockId"] = 8026
        }
    },
    ["unbreakable"] = true
}
v1631.block = v1632
v_u_96[v1630] = v1631
v_u_96[v_u_58.METEOR_CALLER] = {
    ["displayName"] = "Meteor Caller",
    ["description"] = "Summon a Meteor",
    ["image"] = v36.METEOR_STAFF
}
local v1633 = v_u_58.FROST_STAFF_3
local v1634 = {
    ["displayName"] = "Frost Staff 3",
    ["image"] = "rbxassetid://84295967516516",
    ["description"] = "Switch between frost mist and icicle shots. Both deal damage and apply Cold.Build enough stacks to Freeze enemies.",
    ["sharingDisabled"] = true
}
local v1635 = {
    ["projectileType"] = function()
        return "frosty_snowball_3"
    end,
    ["maxStrengthChargeSec"] = 0.75,
    ["chargeBeginSound"] = { v_u_48.FROST_STAFF_CHARGE },
    ["launchSound"] = { v_u_48.FROST_STAFF_SHOOT },
    ["fireDelaySec"] = 0.8,
    ["walkSpeedMultiplier"] = 0.35,
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.SPEAR_STAB_1,
        ["aimAnimation"] = v_u_7.ICE_MAGE_CHARGE
    },
    ["cooldownId"] = v19.FROSTY_GUN_PROJECTILE,
    ["cooldownBar"] = {
        ["colorGradient"] = ColorSequence.new(Color3.fromRGB(4, 255, 255))
    }
}
v1634.projectileSource = v1635
v_u_96[v1633] = v1634
local v1636 = v_u_58.FROST_STAFF_2
local v1637 = {
    ["displayName"] = "Frost Staff 2",
    ["image"] = "rbxassetid://100810918301998",
    ["description"] = "Switch between frost mist and icicle shots. Both deal damage and apply Cold.Build enough stacks to Freeze enemies.",
    ["sharingDisabled"] = true
}
local v1638 = {
    ["projectileType"] = function()
        return "frosty_snowball_2"
    end,
    ["maxStrengthChargeSec"] = 0.8,
    ["chargeBeginSound"] = { v_u_48.FROST_STAFF_CHARGE },
    ["launchSound"] = { v_u_48.FROST_STAFF_SHOOT },
    ["fireDelaySec"] = 0.9,
    ["walkSpeedMultiplier"] = 0.35,
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.SPEAR_STAB_1,
        ["aimAnimation"] = v_u_7.ICE_MAGE_CHARGE
    },
    ["cooldownId"] = v19.FROSTY_GUN_PROJECTILE,
    ["cooldownBar"] = {
        ["colorGradient"] = ColorSequence.new(Color3.fromRGB(4, 255, 255))
    }
}
v1637.projectileSource = v1638
v_u_96[v1636] = v1637
local v1639 = v_u_58.FROST_STAFF_1
local v1640 = {
    ["displayName"] = "Frost Staff 1",
    ["description"] = "Switch between frost mist and icicle shots. Both deal damage and apply Cold.Build enough stacks to Freeze enemies.",
    ["image"] = "rbxassetid://85786529113896",
    ["sharingDisabled"] = true
}
local v1641 = {
    ["projectileType"] = function()
        return "frosty_snowball_1"
    end,
    ["maxStrengthChargeSec"] = 0.85,
    ["chargeBeginSound"] = { v_u_48.FROST_STAFF_CHARGE },
    ["launchSound"] = { v_u_48.FROST_STAFF_SHOOT },
    ["fireDelaySec"] = 1,
    ["walkSpeedMultiplier"] = 0.35,
    ["firstPerson"] = {
        ["aimAnimation"] = v_u_7.FP_CROSSBOW_AIM,
        ["fireAnimation"] = v_u_7.FP_CROSSBOW_FIRE
    },
    ["thirdPerson"] = {
        ["fireAnimation"] = v_u_7.SPEAR_STAB_1,
        ["aimAnimation"] = v_u_7.ICE_MAGE_CHARGE
    },
    ["cooldownId"] = v19.FROSTY_GUN_PROJECTILE,
    ["cooldownBar"] = {
        ["colorGradient"] = ColorSequence.new(Color3.fromRGB(4, 255, 255))
    }
}
v1640.projectileSource = v1641
v_u_96[v1639] = v1640
local v1642 = v_u_58.IRON_ORE
local v1643 = {
    ["displayName"] = "Iron Ore",
    ["footstepSound"] = v47.STONE
}
local v1644 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastResistance"] = 0.5,
    ["health"] = 100,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.ORE_HIT_1, v_u_48.ORE_HIT_2, v_u_48.ORE_HIT_3)
    end
}
v1643.block = v1644
v_u_96[v1642] = v1643
local v1645 = v_u_58.DIAMOND_ORE
local v1646 = {
    ["displayName"] = "Diamond Ore",
    ["footstepSound"] = v47.STONE
}
local v1647 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastResistance"] = 0.5,
    ["health"] = 100,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.ORE_HIT_1, v_u_48.ORE_HIT_2, v_u_48.ORE_HIT_3)
    end
}
v1646.block = v1647
v_u_96[v1645] = v1646
local v1648 = v_u_58.EMERALD_ORE
local v1649 = {
    ["displayName"] = "Emerald Ore",
    ["footstepSound"] = v47.STONE
}
local v1650 = {
    ["breakType"] = v2.STONE,
    ["greedyMesh"] = {
        ["textures"] = {}
    },
    ["blastResistance"] = 0.5,
    ["health"] = 100,
    ["hitSound"] = function()
        -- upvalues: (copy) v_u_55, (copy) v_u_48
        return v_u_55(v_u_48.ORE_HIT_1, v_u_48.ORE_HIT_2, v_u_48.ORE_HIT_3)
    end
}
v1649.block = v1650
v_u_96[v1648] = v1649
v_u_96[v_u_58.LOBBY_SNOWBOARD] = {
    ["displayName"] = "Snowboard",
    ["image"] = v36.SNOWBOARD,
    ["description"] = "Spawn one of three different snowboards. No snow or slopes required!"
}
v_u_96[v_u_58.LOBBY_SNOWBOARD_SPECIAL] = {
    ["displayName"] = "Gift-Wrapped Snowboard",
    ["image"] = v36.SNOWBOARD_SPECIAL,
    ["description"] = "Spawn a special, gift-wrapped snowboard. No snow or slopes required!"
}
v56(v_u_96)
v57(v_u_96)
return {
    ["getItemMeta"] = function(p1651)
        -- upvalues: (copy) v_u_96
        return v_u_96[p1651]
    end,
    ["ARMOR_SCALE"] = 0.04,
    ["items"] = v_u_96
}
