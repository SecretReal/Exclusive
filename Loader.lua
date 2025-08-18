repeat
	task.wait()
until game:IsLoaded() and game:GetService("Players").LocalPlayer

do
	Players = game:GetService("Players")
	Client = Players.LocalPlayer
	VirtualUser = game:GetService("VirtualUser")
	__bl = {
		"solara",
		"xeno",
	}

	Client.Idled:Connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)
end

if identifyexecutor then
	for _, value in __bl do
		if identifyexecutor():lower():find(value) then
			Client:Kick("TH : ตัวรันกากไปเปลี่ยน / EN : Shitty Executor")
			return
		end
	end
end

loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/z2ioh2fx175gbqdsenk39xsy1dbjxjp3.lua"))()
