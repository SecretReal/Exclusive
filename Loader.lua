do
	Players = game:GetService("Players")
	Client = Players.LocalPlayer
	__bl = {
		"solara",
		"xeno",
	}
end

repeat
	task.wait()
until game:IsLoaded()
repeat
	task.wait()
until Client

local Request
if secure_get then
	Request = game.secure_get
else
	Request = game.HttpGetAsync
end

if identifyexecutor then
	for _, value in __bl do
		if identifyexecutor():lower():find(value) then
			Client:Kick("TH : ตัวรันกากไปเปลี่ยน / EN : Shitty Executor")
			return
		end
	end
end

loadstring(Request(game, "https://api.realaya.xyz/v1/files/l/z2ioh2fx175gbqdsenk39xsy1dbjxjp3.lua"))()
