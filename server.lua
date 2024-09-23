local config = exports['dodi_flags']:getConfig()


----------------------------
------------<items>---------
----------------------------

-- Bandeira Pirate
RegisterServerEvent("RegisterUsableItem:bandeira_pirate")
TriggerEvent("redemrp:registerUsableItem", "bandeira_pirate", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:pirate', _source)
    end)
end)

-- Bandeira American
RegisterServerEvent("RegisterUsableItem:bandeira_american")
TriggerEvent("redemrp:registerUsableItem", "bandeira_american", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:american', _source)
    end)
end)

-- Bandeira Mexican
RegisterServerEvent("RegisterUsableItem:bandeira_mexican")
TriggerEvent("redemrp:registerUsableItem", "bandeira_mexican", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:mexican', _source)
    end)
end)

-- Bandeira Canada
RegisterServerEvent("RegisterUsableItem:bandeira_canada")
TriggerEvent("redemrp:registerUsableItem", "bandeira_canada", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:canada', _source)
    end)
end)

-- Bandeira LGBTQ
RegisterServerEvent("RegisterUsableItem:bandeira_lgbtq")
TriggerEvent("redemrp:registerUsableItem", "bandeira_lgbtq", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:lgbtq', _source)
    end)
end)

-- Bandeira Gypsy
RegisterServerEvent("RegisterUsableItem:bandeira_gypsy")
TriggerEvent("redemrp:registerUsableItem", "bandeira_gypsy", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:gypsy', _source)
    end)
end)

-- Bandeira Irish
RegisterServerEvent("RegisterUsableItem:bandeira_irish")
TriggerEvent("redemrp:registerUsableItem", "bandeira_irish", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:irish', _source)
    end)
end)

-- Bandeira UK
RegisterServerEvent("RegisterUsableItem:bandeira_uk")
TriggerEvent("redemrp:registerUsableItem", "bandeira_uk", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:uk', _source)
    end)
end)

-- Bandeira BR
RegisterServerEvent("RegisterUsableItem:bandeira_br")
TriggerEvent("redemrp:registerUsableItem", "bandeira_br", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:br', _source)
    end)
end)

-- Bandeira FR
RegisterServerEvent("RegisterUsableItem:bandeira_fr")
TriggerEvent("redemrp:registerUsableItem", "bandeira_fr", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:fr', _source)
    end)
end)

-- Bandeira IT
RegisterServerEvent("RegisterUsableItem:bandeira_it")
TriggerEvent("redemrp:registerUsableItem", "bandeira_it", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:it', _source)
    end)
end)

-- Bandeira JM
RegisterServerEvent("RegisterUsableItem:bandeira_jm")
TriggerEvent("redemrp:registerUsableItem", "bandeira_jm", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:jm', _source)
    end)
end)

-- Bandeira GER
RegisterServerEvent("RegisterUsableItem:bandeira_ger")
TriggerEvent("redemrp:registerUsableItem", "bandeira_ger", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:ger', _source)
    end)
end)

-- Bandeira CONF
RegisterServerEvent("RegisterUsableItem:bandeira_conf")
TriggerEvent("redemrp:registerUsableItem", "bandeira_conf", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:conf', _source)
    end)
end)

-- Bandeira UNION
RegisterServerEvent("RegisterUsableItem:bandeira_union")
TriggerEvent("redemrp:registerUsableItem", "bandeira_union", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:union', _source)
    end)
end)

-- Bandeira Lemoyne
RegisterServerEvent("RegisterUsableItem:bandeira_lemoyne_1")
TriggerEvent("redemrp:registerUsableItem", "bandeira_lemoyne_1", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:lemoyne_1', _source)
    end)
end)

-- Bandeira New Hannover
RegisterServerEvent("RegisterUsableItem:bandeira_newhannover_1")
TriggerEvent("redemrp:registerUsableItem", "bandeira_newhannover_1", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:newhannover_1', _source)
    end)
end)

-- Bandeira West Elizabeth
RegisterServerEvent("RegisterUsableItem:bandeira_westelizabeth_1")
TriggerEvent("redemrp:registerUsableItem", "bandeira_westelizabeth_1", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:westelizabeth_1', _source)
    end)
end)

-- Bandeira New Austin
RegisterServerEvent("RegisterUsableItem:bandeira_newaustin_1")
TriggerEvent("redemrp:registerUsableItem", "bandeira_newaustin_1", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:newaustin_1', _source)
    end)
end)

-- Bandeira Ambarino
RegisterServerEvent("RegisterUsableItem:bandeira_ambarino_1")
TriggerEvent("redemrp:registerUsableItem", "bandeira_ambarino_1", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:ambarino_1', _source)
    end)
end)

-- Bandeira Comanche
RegisterServerEvent("RegisterUsableItem:bandeira_comanche")
TriggerEvent("redemrp:registerUsableItem", "bandeira_comanche", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:comanche', _source)
    end)
end)

-- Bandeira Navajo
RegisterServerEvent("RegisterUsableItem:bandeira_navajo")
TriggerEvent("redemrp:registerUsableItem", "bandeira_navajo", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:navajo', _source)
    end)
end)

-- Bandeira Lakota
RegisterServerEvent("RegisterUsableItem:bandeira_lakota")
TriggerEvent("redemrp:registerUsableItem", "bandeira_lakota", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:lakota', _source)
    end)
end)

-- Bandeira Inuit
RegisterServerEvent("RegisterUsableItem:bandeira_inuit")
TriggerEvent("redemrp:registerUsableItem", "bandeira_inuit", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:inuit', _source)
    end)
end)

-- Bandeira Australia
RegisterServerEvent("RegisterUsableItem:bandeira_australia")
TriggerEvent("redemrp:registerUsableItem", "bandeira_australia", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:australia', _source)
    end)
end)

-- Bandeira Belgium
RegisterServerEvent("RegisterUsableItem:bandeira_belgium")
TriggerEvent("redemrp:registerUsableItem", "bandeira_belgium", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:belgium', _source)
    end)
end)

-- Bandeira Catalonia
RegisterServerEvent("RegisterUsableItem:bandeira_catalonia")
TriggerEvent("redemrp:registerUsableItem", "bandeira_catalonia", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:catalonia', _source)
    end)
end)

-- Bandeira China
RegisterServerEvent("RegisterUsableItem:bandeira_china")
TriggerEvent("redemrp:registerUsableItem", "bandeira_china", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:china', _source)
    end)
end)

-- Bandeira Cuba
RegisterServerEvent("RegisterUsableItem:bandeira_cuba")
TriggerEvent("redemrp:registerUsableItem", "bandeira_cuba", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:cuba', _source)
    end)
end)

-- Bandeira Czech
RegisterServerEvent("RegisterUsableItem:bandeira_czech")
TriggerEvent("redemrp:registerUsableItem", "bandeira_czech", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:czech', _source)
    end)
end)

-- Bandeira Denmark
RegisterServerEvent("RegisterUsableItem:bandeira_denmark")
TriggerEvent("redemrp:registerUsableItem", "bandeira_denmark", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:denmark', _source)
    end)
end)

-- Bandeira Finland
RegisterServerEvent("RegisterUsableItem:bandeira_finland")
TriggerEvent("redemrp:registerUsableItem", "bandeira_finland", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:finland', _source)
    end)
end)

-- Bandeira Guarma
RegisterServerEvent("RegisterUsableItem:bandeira_guarma")
TriggerEvent("redemrp:registerUsableItem", "bandeira_guarma", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:guarma', _source)
    end)
end)

-- Bandeira Hungary
RegisterServerEvent("RegisterUsableItem:bandeira_hungary")
TriggerEvent("redemrp:registerUsableItem", "bandeira_hungary", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:hungary', _source)
    end)
end)

-- Bandeira Kuwait
RegisterServerEvent("RegisterUsableItem:bandeira_kuwait")
TriggerEvent("redemrp:registerUsableItem", "bandeira_kuwait", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:kuwait', _source)
    end)
end)

-- Bandeira Flandres
RegisterServerEvent("RegisterUsableItem:bandeira_flandres")
TriggerEvent("redemrp:registerUsableItem", "bandeira_flandres", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:flandres', _source)
    end)
end)

-- Bandeira New Zealand
RegisterServerEvent("RegisterUsableItem:bandeira_newzealand")
TriggerEvent("redemrp:registerUsableItem", "bandeira_newzealand", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:newzealand', _source)
    end)
end)

-- Bandeira Philippines
RegisterServerEvent("RegisterUsableItem:bandeira_philippines")
TriggerEvent("redemrp:registerUsableItem", "bandeira_philippines", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:philippines', _source)
    end)
end)

-- Bandeira Poland
RegisterServerEvent("RegisterUsableItem:bandeira_poland")
TriggerEvent("redemrp:registerUsableItem", "bandeira_poland", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:poland', _source)
    end)
end)

-- Bandeira Portugal
RegisterServerEvent("RegisterUsableItem:bandeira_portugal")
TriggerEvent("redemrp:registerUsableItem", "bandeira_portugal", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:portugal', _source)
    end)
end)

-- Bandeira Puerto Rico
RegisterServerEvent("RegisterUsableItem:bandeira_puertorico")
TriggerEvent("redemrp:registerUsableItem", "bandeira_puertorico", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:puertorico', _source)
    end)
end)

-- Bandeira Russia
RegisterServerEvent("RegisterUsableItem:bandeira_russia")
TriggerEvent("redemrp:registerUsableItem", "bandeira_russia", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:russia', _source)
    end)
end)

-- Bandeira Saudi
RegisterServerEvent("RegisterUsableItem:bandeira_saudi")
TriggerEvent("redemrp:registerUsableItem", "bandeira_saudi", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:saudi', _source)
    end)
end)

-- Bandeira Serbia
RegisterServerEvent("RegisterUsableItem:bandeira_serbia")
TriggerEvent("redemrp:registerUsableItem", "bandeira_serbia", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:serbia', _source)
    end)
end)

-- Bandeira Spain
RegisterServerEvent("RegisterUsableItem:bandeira_spain")
TriggerEvent("redemrp:registerUsableItem", "bandeira_spain", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:spain', _source)
    end)
end)

-- Bandeira Sweden
RegisterServerEvent("RegisterUsableItem:bandeira_sweden")
TriggerEvent("redemrp:registerUsableItem", "bandeira_sweden", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:sweden', _source)
    end)
end)

-- Bandeira Thailand
RegisterServerEvent("RegisterUsableItem:bandeira_thailand")
TriggerEvent("redemrp:registerUsableItem", "bandeira_thailand", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:thailand', _source)
    end)
end)

-- Bandeira Turkey
RegisterServerEvent("RegisterUsableItem:bandeira_turkey")
TriggerEvent("redemrp:registerUsableItem", "bandeira_turkey", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:turkey', _source)
    end)
end)

-- Bandeira Ukraine
RegisterServerEvent("RegisterUsableItem:bandeira_ukraine")
TriggerEvent("redemrp:registerUsableItem", "bandeira_ukraine", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:ukraine', _source)
    end)
end)

-- Bandeira White
RegisterServerEvent("RegisterUsableItem:bandeira_white")
TriggerEvent("redemrp:registerUsableItem", "bandeira_white", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:white', _source)
    end)
end)

-- Bandeira Red
RegisterServerEvent("RegisterUsableItem:bandeira_red")
TriggerEvent("redemrp:registerUsableItem", "bandeira_red", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:red', _source)
    end)
end)

-- Bandeira Camp Flag
RegisterServerEvent("RegisterUsableItem:bandeira_campflag")
TriggerEvent("redemrp:registerUsableItem", "bandeira_campflag", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:campflag', _source)
    end)
end)

-- Bandeira Lemoyne Long
RegisterServerEvent("RegisterUsableItem:bandeira_lemoynelongflag")
TriggerEvent("redemrp:registerUsableItem", "bandeira_lemoynelongflag", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:lemoynelongflag', _source)
    end)
end)

-- Bandeira White Long
RegisterServerEvent("RegisterUsableItem:bandeira_whitelongflag")
TriggerEvent("redemrp:registerUsableItem", "bandeira_whitelongflag", function(source)
    local _source = source
    TriggerEvent("redemrp:getPlayerFromId", _source, function(player)
        TriggerClientEvent('dodi_flags:use:whitelongflag', _source)
    end)
end)

