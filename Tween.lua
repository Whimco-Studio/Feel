
--// Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")

--// module
local Tween = {}

function Tween.new(Object: Instance, Changes: table, Time: number, Settings: table)
	Settings = Settings or {}

	if Settings.Reversing then
		local test = if Settings.Reversing ~= nil then Settings.Reversing else false
	end

	local Info = TweenInfo.new(
		Time,
		Settings.EasingStyle or Enum.EasingStyle.Linear, -- EasingStyle
		Settings.EasingDirection or Enum.EasingDirection.Out, -- EasingDirection
		Settings.TimesRepeated or 0, -- Times repeteated
		if Settings.Reversing ~= nil then Settings.Reversing else false, -- Reversing
		Settings.Delay or 0 -- Time Delay
	)
	local Action = TweenService:Create(Object, Info, Changes)
	return Action
end

return Tween
