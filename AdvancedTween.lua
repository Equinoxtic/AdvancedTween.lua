local AdvancedTween = {};
AdvancedTween.__index = AdvancedTween;

local Services = {

	["TweenService"] =
		game:GetService("TweenService")

};

local Utility = require(script.TweenEasingUtility);
local Settings = require(script.Settings);

export type TweenProperties = {
	Easing      : string;
	StartDelay  : number;
	Reverse     : boolean;
	RepeatCount : number;
	OnComplete  : () -> ();
};

-- Create a new 'AdvancedTween'.
--
-- @param instance Instance               - The instance to tween.
-- @param values {[string] : any}         - The values of the instance to be tweened.
-- @param duration number                 - The duration of the tween.
-- @param tweenProperties TweenProperties - The properties of the tween. (i.e. Easing, StartDelay, etc.)
-- @return AdvancedTween
function AdvancedTween.New(instance : Instance, values : {[string] : any}, duration : number, tweenProperties : TweenProperties)

	local self = setmetatable({
		
		_tween = Services.TweenService:Create(
			instance,
			TweenInfo.new(
				duration or 0.0,
				Utility:GetEasingStyle(tweenProperties['Easing']) or Enum.EasingStyle.Linear,
				Utility:GetEasingDirection(tweenProperties['Easing']) or Enum.EasingDirection.InOut,
				tweenProperties.RepeatCount or 0.0,
				tweenProperties.Reverse or false,
				tweenProperties.StartDelay or 0.0
			),
			values
		) :: TweenBase;
		
		onComplete = tweenProperties.OnComplete or function() --[[ ... ]] end :: () -> ();
		
	}, AdvancedTween);

	return self;

end

--[[
	Play the tween.
]]
function AdvancedTween:Play() : () -> ()

	if (self._tween ~= nil) then
		
		self._tween:Play();
		
		self._tween.Completed:Connect(self.onComplete);
		
	end

end

--[[
	Pause the tween.
]]
function AdvancedTween:Pause() : () -> ()

	if (self._tween ~= nil) then
		self._tween:Pause();
	end

end

--[[
	Cancel the tween.
]]
function AdvancedTween:Cancel() : () -> ()
	
	if (self._tween ~= nil) then
		self._tween:Cancel();
	end
	
end

--[[
	Yield/Stop the code until the tween finishes playing.
]]
function AdvancedTween:Wait() : () -> ()

	if (self._tween == nil) then
		return;
	end

	self._tween.Completed:Wait();

end

return AdvancedTween;
