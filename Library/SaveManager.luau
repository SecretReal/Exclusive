local SaveManager = {}
SaveManager.__index = SaveManager

local HttpService = game:GetService("HttpService")
local LocalPlayer = game:GetService("Players").LocalPlayer

function SaveManager.new(folderName, configTable)
	local self = setmetatable({}, SaveManager)
	self.folderName = folderName or "Exclusive/Test/"
	self.fileName = LocalPlayer.Name .. ".json"
	self.fullPath = self.folderName .. self.fileName
	self.config = configTable or {}
	self:_initFolders()
	return self
end

function SaveManager:_initFolders()
	if not (readfile and writefile and isfile and isfolder) then
		return warn("Executor Not Support Save System")
	end
	if not isfolder("Exclusive") then
		makefolder("Exclusive")
	end
	if not isfolder(self.folderName) then
		makefolder(self.folderName)
	end
end

function SaveManager:Load()
	if not isfile(self.fullPath) then
		writefile(self.fullPath, HttpService:JSONEncode(self.config))
		return
	end

	local success, data = pcall(function()
		return HttpService:JSONDecode(readfile(self.fullPath))
	end)

	if success and type(data) == "table" then
		for k, v in next, data do
			self.config[k] = v
		end
	end
end

function SaveManager:Save()
	local encoded = HttpService:JSONEncode(self.config)
	if not isfile(self.fullPath) or encoded ~= readfile(self.fullPath) then
		writefile(self.fullPath, encoded)
	end
end

return SaveManager
