local AdvancedTween = {};
AdvancedTween.__index = AdvancedTween;

local Services = {

	["TweenService"] =
		game:GetService("TweenService")

};

local Utility = require(script.TweenEasingUtility);
local Settings = require(script.Settings);

export type TweenProperties = {
	Easing      : string,
	StartDelay  : number,
	Reverse     : boolean,
	RepeatCount : number
};

--[[
	Create a new 'AdvancedTween'.
]]
function AdvancedTween.New(instance : Instance, values : {[string] : any}, duration : number, tweenProperties : TweenProperties)

	local self = setmetatable({
		_tween = Services.TweenService:Create(
			instance,
			TweenInfo.new(
				duration or 0.0,
				Utility:GetEasingStyle(tweenProperties['Easing']) or Enum.EasingStyle.Linear,
				Utility:GetEasingDirection(tweenProperties['Easing']) or Enum.EasingDirection.InOut,
				tweenProperties['RepeatCount'] or 0.0,
				tweenProperties['Reverse'] or false,
				tweenProperties['StartDelay'] or 0.0
			),
			values
		) :: TweenBase;
	}, AdvancedTween);

	return self;

end

--[[
	Play the tween.
]]
function AdvancedTween:PlayTween() : () -> ()

	if (self._tween ~= nil) then
		self._tween:Play();
	end

end

--[[
	Pause the tween.
]]
function AdvancedTween:PauseTween() : () -> ()

	if (self._tween ~= nil) then
		self._tween:Pause();
	end

end

--[[
	Cancel the tween.
]]
function AdvancedTween:CancelTween() : () -> ()
	
	if (self._tween ~= nil) then
		self._tween:Cancel();
	end
	
end

--[[
	Yield/Stop the code until the tween finishes playing.
]]
function AdvancedTween:WaitCompletion() : () -> ()

	if (self._tween == nil) then
		return;
	end

	self._tween.Completed:Wait();

end

--[[
	If provided with a callback, the tween will call it as soon as the tween is finished/completed.
]]
function AdvancedTween:CompletionCallback(callback) : () -> ()
	
	if (self._tween == nil) then
		return;
	end
	
	self._tween.Completed:Connect(callback or function() : () -> ()
		if (Settings.EnableWarnings) then
			warn('Callback Missing!');
		end
	end);
	
end

return AdvancedTween;
