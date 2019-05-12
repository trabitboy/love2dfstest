		appdata = love.filesystem.getAppdataDirectory( )		
		print("app data dir: "..appdata)
		userdata = love.filesystem.getUserDirectory( )		
		print("user data dir: "..userdata)
		identity = love.filesystem.getIdentity( )		
		print("identity: "..identity)
		sd = love.filesystem.getSaveDirectory()		
		print("save dir: "..sd)

		
		function createtestdir()
			love.filesystem.createDirectory("mytst")
		
		end
		
		function savetstfile()
			txt=" line \n line \n line \n"
			love.filesystem.write("test.lua",txt)
			love.filesystem.write("test.txt",txt)
		end
		
		function printsditms()
		sditms=love.filesystem.getDirectoryItems(sd)
		print("get directory items on save dir :")
			print(sditms)
			for i,itm in ipairs(sditms)
			do
				print(itm)
			end
		end
		
		createtestdir()
		
		savetstfile()
		printsditms()
		info=love.filesystem.getInfo('test.lua')
		print("getinfo on test.lua ")
		print(info)
		for i,itm in ipairs(info)
		do
			print(itm)
		end

		print(" printing lines of directly loaded test.lua")
		for line in love.filesystem.lines('test.lua')
		do
			print(line)
		end		
		love.event.quit()