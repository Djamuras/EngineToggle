local CurrentVersion = '2.0.0'

AddEventHandler('chatMessage', function(source, n, msg)
	local Message = string.lower(msg)
	if (Message == "/engine") then
		TriggerClientEvent('Engine', source)
		CancelEvent()
	end
end)

PerformHttpRequest("https://raw.githubusercontent.com/Flatracer/EngineToggle_Resources/master/VERSION", function(Error, NewestVersion, Header)
	print("\n")
	print("####################################################################")
	print("########################## Engine Toggle ###########################")
	print('####################################################################')
	print('#####                  Current Version: ' .. CurrentVersion .. '                  #####')
	print('#####                   Newest Version: ' .. NewestVersion .. '                  #####')
	print('####################################################################')
	if CurrentVersion ~= NewestVersion then
		print('##### Outdated, please check the Topic for the newest Version! #####')
	else
		print('#####                        Up to date!                       #####')
	end
	print('####################################################################')
	print('\n')
end)
