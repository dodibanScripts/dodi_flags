local config = exports['dodi_flags']:getConfig()

------------------------------------------
--------------- main logic ---------------
------------------------------------------

local isHoldingFlag = false -- Global variable to check if the player is holding the flag
local flagProp = nil -- Variable to store the attached flag
local eagleProp = nil -- Variável para armazenar o prop da águia
local propFlag = nil -- Variable to store the flag itself

RegisterNetEvent('dodi_flags:use:toggle')
AddEventHandler('dodi_flags:use:toggle', function(flag)

    local playerPed = PlayerPedId()

    if isHoldingFlag then
        -- If you are already holding the flag, removes the animation and the objects
        ClearPedTasks(playerPed) -- Removes animation
        SetPedCanRagdoll(playerPed, true) -- Ragdoll reactive
        
        -- Removes objects
        if DoesEntityExist(flagProp) then
            DeleteObject(flagProp)
            flagProp = nil
        end
        if DoesEntityExist(eagleProp) then
            DeleteObject(eagleProp)
            eagleProp = nil
        end
        if DoesEntityExist(propFlag) then
            DeleteObject(propFlag)
            propFlag = nil
        end

        isHoldingFlag = false -- Updates the variable to indicate that it is no longer holding the flag
        TriggerEvent('chat:addMessage', { args = { '^2Success', 'You left the animation to hold the flag and the objects were removed.' } })
        return
    end

    local flagType = flag -- Receives the type of flag passed in the evento

    if not flagType then
        TriggerEvent('chat:addMessage', { args = { '^1Error', 'You need to specify the type of flag.Example: /spawnbandeira' } })
        return
    end

    local flagConfig = Config.Flags[flagType]

    if not flagConfig then
        TriggerEvent('chat:addMessage', { args = { '^1Erro', 'Invalid flag type.Check the configuration.' } })
        return
    end

    -- Creates objects (pole, flag and eagle) whenever the player holds the flag
    local coords = GetEntityCoords(playerPed)
    local x, y, z = table.unpack(coords)

    flagProp = CreateObject(GetHashKey(flagConfig.prop_pole), x, y, z + 0.2, true, false, false)
   -- eagleProp = CreateObject(GetHashKey(flagConfig.prop_eagle), x, y, z + 0.2, true, false, false)
    propFlag = CreateObject(GetHashKey(flagConfig.prop_flag), x, y, z + 0.2, true, false, false)

    -- Attach the flag to the post
    AttachEntityToEntity(propFlag, flagProp, 0, flagConfig.attach_coords_flag[1], flagConfig.attach_coords_flag[2], flagConfig.attach_coords_flag[3], flagConfig.attach_rot_flag[1], flagConfig.attach_rot_flag[2], flagConfig.attach_rot_flag[3], true, true, false, true, 1, true)

    -- Attach the eagle pendulum to the post
   -- AttachEntityToEntity(eagleProp, flagProp, 0, flagConfig.attach_coords_eagle[1], flagConfig.attach_coords_eagle[2], flagConfig.attach_coords_eagle[3], flagConfig.attach_rot_eagle[1], flagConfig.attach_rot_eagle[2], true, true, false, true, 1, true)

    -- Attach the post to the right hand of the player
    local boneIndexRightHand = GetPedBoneIndex(playerPed, 11316) -- Right -hand bone id
    AttachEntityToEntity(flagProp, playerPed, boneIndexRightHand, 0.0, -0.03, 0.5, 0.5, 180.0, 0.0, true, true, false, true, 1, true)

    -- Disable Ragdoll while the animation is active
    SetPedCanRagdoll(playerPed, false)

    -- Performs the animation of carrying the flag
    RequestAnimDict("script_re@rally@hostage")
    while not HasAnimDictLoaded("script_re@rally@hostage") do
        Citizen.Wait(100)
    end

    TaskPlayAnim(playerPed, "script_re@rally@hostage", "base_rallymale03", 2.0, -2.0, -1, 67109393, 0.0, false, 1245184, false, "UpperbodyFixup_filter", false)

    -- Defines the variable to indicate that the player is holding the flag
    isHoldingFlag = true

    -- Monitors the state of animation to restart if necessary
    Citizen.CreateThread(function()
        while isHoldingFlag do
            if not IsEntityPlayingAnim(playerPed, "script_re@rally@hostage", "base_rallymale03", 3) then
                -- Restart the animation if the player stops executing it
                TaskPlayAnim(playerPed, "script_re@rally@hostage", "base_rallymale03", 2.0, -2.0, -1, 67109393, 0.0, false, 1245184, false, "UpperbodyFixup_filter", false)
            end

            -- Keeps the player without gun and without ragdoll
            SetCurrentPedWeapon(playerPed, GetHashKey("WEAPON_UNARMED"), true)
            SetPedCanRagdoll(playerPed, false)

            Citizen.Wait(3000)
        end

        -- Ragdoll reactive when the animation is over
        SetPedCanRagdoll(playerPed, true)
    end)

    TriggerEvent('chat:addMessage', { args = { '^2Sucesso', 'Bandeira "' .. flagType .. '" spawnada.' } })
end)

-------- EVENTS --------
---------------- Flags >
------------------------

-- Event for the Flag "pirate"
RegisterNetEvent('dodi_flags:use:pirate')
AddEventHandler('dodi_flags:use:pirate', function(flag)
    local flag = "pirate" -- Pass the name of the flag as string
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "american"
RegisterNetEvent('dodi_flags:use:american')
AddEventHandler('dodi_flags:use:american', function(flag)
    local flag = "american" -- Pass the name of the flag as string
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "mexican"
RegisterNetEvent('dodi_flags:use:mexican')
AddEventHandler('dodi_flags:use:mexican', function(flag)
    local flag = "mexican"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "canada"
RegisterNetEvent('dodi_flags:use:canada')
AddEventHandler('dodi_flags:use:canada', function(flag)
    local flag = "canada"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "lgbtq"
RegisterNetEvent('dodi_flags:use:lgbtq')
AddEventHandler('dodi_flags:use:lgbtq', function(flag)
    local flag = "lgbtq"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "gypsy"
RegisterNetEvent('dodi_flags:use:gypsy')
AddEventHandler('dodi_flags:use:gypsy', function(flag)
    local flag = "gypsy"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "irish"
RegisterNetEvent('dodi_flags:use:irish')
AddEventHandler('dodi_flags:use:irish', function(flag)
    local flag = "irish"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "uk"
RegisterNetEvent('dodi_flags:use:uk')
AddEventHandler('dodi_flags:use:uk', function(flag)
    local flag = "uk"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "br"
RegisterNetEvent('dodi_flags:use:br')
AddEventHandler('dodi_flags:use:br', function(flag)
    local flag = "br"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "fr"
RegisterNetEvent('dodi_flags:use:fr')
AddEventHandler('dodi_flags:use:fr', function(flag)
    local flag = "fr"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "it"
RegisterNetEvent('dodi_flags:use:it')
AddEventHandler('dodi_flags:use:it', function(flag)
    local flag = "it"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "jm"
RegisterNetEvent('dodi_flags:use:jm')
AddEventHandler('dodi_flags:use:jm', function(flag)
    local flag = "jm"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "ger"
RegisterNetEvent('dodi_flags:use:ger')
AddEventHandler('dodi_flags:use:ger', function(flag)
    local flag = "ger"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "conf"
RegisterNetEvent('dodi_flags:use:conf')
AddEventHandler('dodi_flags:use:conf', function(flag)
    local flag = "conf"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "union"
RegisterNetEvent('dodi_flags:use:union')
AddEventHandler('dodi_flags:use:union', function(flag)
    local flag = "union"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "lemoyne_1"
RegisterNetEvent('dodi_flags:use:lemoyne_1')
AddEventHandler('dodi_flags:use:lemoyne_1', function(flag)
    local flag = "lemoyne_1"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "newhannover_1"
RegisterNetEvent('dodi_flags:use:newhannover_1')
AddEventHandler('dodi_flags:use:newhannover_1', function(flag)
    local flag = "newhannover_1"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "westelizabeth_1"
RegisterNetEvent('dodi_flags:use:westelizabeth_1')
AddEventHandler('dodi_flags:use:westelizabeth_1', function(flag)
    local flag = "westelizabeth_1"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "newaustin_1"
RegisterNetEvent('dodi_flags:use:newaustin_1')
AddEventHandler('dodi_flags:use:newaustin_1', function(flag)
    local flag = "newaustin_1"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "ambarino_1"
RegisterNetEvent('dodi_flags:use:ambarino_1')
AddEventHandler('dodi_flags:use:ambarino_1', function(flag)
    local flag = "ambarino_1"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "comanche"
RegisterNetEvent('dodi_flags:use:comanche')
AddEventHandler('dodi_flags:use:comanche', function(flag)
    local flag = "comanche"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "navajo"
RegisterNetEvent('dodi_flags:use:navajo')
AddEventHandler('dodi_flags:use:navajo', function(flag)
    local flag = "navajo"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "lakota"
RegisterNetEvent('dodi_flags:use:lakota')
AddEventHandler('dodi_flags:use:lakota', function(flag)
    local flag = "lakota"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "inuit"
RegisterNetEvent('dodi_flags:use:inuit')
AddEventHandler('dodi_flags:use:inuit', function(flag)
    local flag = "inuit"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "australia"
RegisterNetEvent('dodi_flags:use:australia')
AddEventHandler('dodi_flags:use:australia', function(flag)
    local flag = "australia"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "belgium"
RegisterNetEvent('dodi_flags:use:belgium')
AddEventHandler('dodi_flags:use:belgium', function(flag)
    local flag = "belgium"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "catalonia"
RegisterNetEvent('dodi_flags:use:catalonia')
AddEventHandler('dodi_flags:use:catalonia', function(flag)
    local flag = "catalonia"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "china"
RegisterNetEvent('dodi_flags:use:china')
AddEventHandler('dodi_flags:use:china', function(flag)
    local flag = "china"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "cuba"
RegisterNetEvent('dodi_flags:use:cuba')
AddEventHandler('dodi_flags:use:cuba', function(flag)
    local flag = "cuba"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "czech"
RegisterNetEvent('dodi_flags:use:czech')
AddEventHandler('dodi_flags:use:czech', function(flag)
    local flag = "czech"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "denmark"
RegisterNetEvent('dodi_flags:use:denmark')
AddEventHandler('dodi_flags:use:denmark', function(flag)
    local flag = "denmark"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "finland"
RegisterNetEvent('dodi_flags:use:finland')
AddEventHandler('dodi_flags:use:finland', function(flag)
    local flag = "finland"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "guarma"
RegisterNetEvent('dodi_flags:use:guarma')
AddEventHandler('dodi_flags:use:guarma', function(flag)
    local flag = "guarma"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "hungary"
RegisterNetEvent('dodi_flags:use:hungary')
AddEventHandler('dodi_flags:use:hungary', function(flag)
    local flag = "hungary"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "kuwait"
RegisterNetEvent('dodi_flags:use:kuwait')
AddEventHandler('dodi_flags:use:kuwait', function(flag)
    local flag = "kuwait"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "flandres"
RegisterNetEvent('dodi_flags:use:flandres')
AddEventHandler('dodi_flags:use:flandres', function(flag)
    local flag = "flandres"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "newzealand"
RegisterNetEvent('dodi_flags:use:newzealand')
AddEventHandler('dodi_flags:use:newzealand', function(flag)
    local flag = "newzealand"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "philippines"
RegisterNetEvent('dodi_flags:use:philippines')
AddEventHandler('dodi_flags:use:philippines', function(flag)
    local flag = "philippines"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "poland"
RegisterNetEvent('dodi_flags:use:poland')
AddEventHandler('dodi_flags:use:poland', function(flag)
    local flag = "poland"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "portugal"
RegisterNetEvent('dodi_flags:use:portugal')
AddEventHandler('dodi_flags:use:portugal', function(flag)
    local flag = "portugal"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "puertorico"
RegisterNetEvent('dodi_flags:use:puertorico')
AddEventHandler('dodi_flags:use:puertorico', function(flag)
    local flag = "puertorico"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "russia"
RegisterNetEvent('dodi_flags:use:russia')
AddEventHandler('dodi_flags:use:russia', function(flag)
    local flag = "russia"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "saudi"
RegisterNetEvent('dodi_flags:use:saudi')
AddEventHandler('dodi_flags:use:saudi', function(flag)
    local flag = "saudi"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "serbia"
RegisterNetEvent('dodi_flags:use:serbia')
AddEventHandler('dodi_flags:use:serbia', function(flag)
    local flag = "serbia"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "spain"
RegisterNetEvent('dodi_flags:use:spain')
AddEventHandler('dodi_flags:use:spain', function(flag)
    local flag = "spain"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "sweden"
RegisterNetEvent('dodi_flags:use:sweden')
AddEventHandler('dodi_flags:use:sweden', function(flag)
    local flag = "sweden"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "thailand"
RegisterNetEvent('dodi_flags:use:thailand')
AddEventHandler('dodi_flags:use:thailand', function(flag)
    local flag = "thailand"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "turkey"
RegisterNetEvent('dodi_flags:use:turkey')
AddEventHandler('dodi_flags:use:turkey', function(flag)
    local flag = "turkey"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "ukraine"
RegisterNetEvent('dodi_flags:use:ukraine')
AddEventHandler('dodi_flags:use:ukraine', function(flag)
    local flag = "ukraine"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "white"
RegisterNetEvent('dodi_flags:use:white')
AddEventHandler('dodi_flags:use:white', function(flag)
    local flag = "white"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "red"
RegisterNetEvent('dodi_flags:use:red')
AddEventHandler('dodi_flags:use:red', function(flag)
    local flag = "red"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "campflag"
RegisterNetEvent('dodi_flags:use:campflag')
AddEventHandler('dodi_flags:use:campflag', function(flag)
    local flag = "campflag"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

-- Event for the Flag "lemoynelongflag"
RegisterNetEvent('dodi_flags:use:lemoynelongflag')
AddEventHandler('dodi_flags:use:lemoynelongflag', function(flag)
    local flag = "lemoynelongflag"
    TriggerEvent('dodi_flags:use:toggle', flag)
end, false)

