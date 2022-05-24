Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-1', vector3(-335.7091, 762.49615, 116.55075), 0xF3830D8E, 'Valentine Fish Vendor', {
		type = 'client',
		event = 'zf_context:fishmenu',
		args = { false, true, false },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-2', vector3(2662.2517, -1505.653, 45.968982), 0xF3830D8E, 'StDenis Fish Vendor', {
		type = 'client',
		event = 'zf_context:fishmenu',
		args = { false, true, false },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-3', vector3(2991.6115, 558.83947, 44.355224), 0xF3830D8E, 'VanHorn Fish Vendor', {
		type = 'client',
		event = 'zf_context:fishmenu',
		args = { false, true, false },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-4', vector3(3017.9001, 1352.2457, 42.735687), 0xF3830D8E, 'Anusburg Fish Vendor', {
		type = 'client',
		event = 'zf_context:fishmenu',
		args = { false, true, false },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-5', vector3(1292.7081, -1276.722, 75.748435), 0xF3830D8E, 'Rhodes Fish Vendor', {
		type = 'client',
		event = 'zf_context:fishmenu',
		args = { false, true, false },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-6', vector3(-726.486, -1252.823, 44.734107), 0xF3830D8E, 'Blackwater Fish Vendor', {
		type = 'client',
		event = 'zf_context:fishmenu',
		args = { false, true, false },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-7', vector3(-5516.716, -2948.78, -1.8062), 0xF3830D8E, 'Tumbleweed Fish Vendor', {
		type = 'client',
		event = 'zf_context:fishmenu',
		args = { false, true, false },
	})  
end)

Citizen.CreateThread(function()
	exports['qbr-core']:createPrompt('Fish-Vendor-8', vector3(-1451.595, -2685.068, 41.228832), 0xF3830D8E, 'Fish Vendor', {
		type = 'client',
		event = 'zf_context:fishmenu',
		args = { false, true, false },
	})  
end)

--- bring up menu
RegisterNetEvent('zf_context:fishmenu', function(data)
    TriggerEvent('zf_context:openMenu', {
        {
            id = 0,
            header = "| Fish Vendor |",
            txt = "",
        },
        { -- sell large fish
            id = 1,
            header = "• Sell Large Fish",
            txt = "we currently pay $5 per large fish",
            params = {
				event = 'rsg_fishvendor:server:selllargefish',
				isServer = true,
            }
        },
		{ -- sell medium fish
            id = 2,
            header = "• Sell Medium Fish",
            txt = "we currently pay $3 per medium fish",
            params = {
				event = 'rsg_fishvendor:server:sellmediumfish',
				isServer = true,
            }
        },
		{ -- sell small fish
            id = 3,
            header = "• Sell Small Fish",
            txt = "we currently pay $1 per small fish",
            params = {
				event = 'rsg_fishvendor:server:sellsmallfish',
				isServer = true,
            }
        },
        {
            id = 4,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)