local util = {};

local EASING_TABLE = {

	['Linear'] =  {
		style     = Enum.EasingStyle.Linear;
		direction = Enum.EasingDirection.InOut;
	};

	--[[
		Sine In, Sine Out, Sine In & Out
	]]
	['SineIn'] =  {
		style     = Enum.EasingStyle.Sine;
		direction = Enum.EasingDirection.In;
	};

	['SineOut'] =  {
		style     = Enum.EasingStyle.Sine;
		direction = Enum.EasingDirection.Out;
	};

	['SineInOut'] =  {
		style     = Enum.EasingStyle.Sine;
		direction = Enum.EasingDirection.InOut;
	};

	--[[
		Cubic In, Cubic Out, Cubic In & Out
	]]
	['CubicIn'] =  {
		style     = Enum.EasingStyle.Cubic;
		direction = Enum.EasingDirection.In;
	};

	['CubicOut'] =  {
		style     = Enum.EasingStyle.Cubic;
		direction = Enum.EasingDirection.Out;
	};

	['CubicInOut'] =  {
		style     = Enum.EasingStyle.Cubic;
		direction = Enum.EasingDirection.InOut;
	};

	--[[
		Quad In, Quad Out, Quad In & Out
	]]
	['QuadIn'] =  {
		style     = Enum.EasingStyle.Quad;
		direction = Enum.EasingDirection.In;
	};

	['QuadOut'] =  {
		style     = Enum.EasingStyle.Quad;
		direction = Enum.EasingDirection.Out;
	};

	['QuadInOut'] =  {
		style     = Enum.EasingStyle.Quad;
		direction = Enum.EasingDirection.InOut;
	};

	--[[
		Quart In, Quart Out, Quart In & Out
	]]
	['QuartIn'] =  {
		style     = Enum.EasingStyle.Quart;
		direction = Enum.EasingDirection.In;
	};

	['QuartOut'] =  {
		style     = Enum.EasingStyle.Quart;
		direction = Enum.EasingDirection.Out;
	};

	['QuartInOut'] =  {
		style     = Enum.EasingStyle.Quart;
		direction = Enum.EasingDirection.InOut;
	};

	--[[
		Quint In, Quint Out, Quint In & Out
	]]
	['QuintIn'] =  {
		style     = Enum.EasingStyle.Quint;
		direction = Enum.EasingDirection.In;
	};

	['QuintOut'] =  {
		style     = Enum.EasingStyle.Quint;
		direction = Enum.EasingDirection.Out;
	};

	['QuintInOut'] =  {
		style     = Enum.EasingStyle.Quint;
		direction = Enum.EasingDirection.InOut;
	};

	--[[
		Back In, Back Out, Back In & Out
	]]
	['BackIn'] =  {
		style     = Enum.EasingStyle.Back;
		direction = Enum.EasingDirection.In;
	};

	['BackOut'] =  {
		style     = Enum.EasingStyle.Back;
		direction = Enum.EasingDirection.Out;
	};

	['BackInOut'] =  {
		style     = Enum.EasingStyle.Back;
		direction = Enum.EasingDirection.InOut;
	};

	--[[
		Bounce In, Bounce Out, Bounce In & Out
	]]
	['BounceIn'] =  {
		style     = Enum.EasingStyle.Bounce;
		direction = Enum.EasingDirection.In;
	};

	['BounceOut'] =  {
		style     = Enum.EasingStyle.Bounce;
		direction = Enum.EasingDirection.Out;
	};

	['BounceInOut'] =  {
		style     = Enum.EasingStyle.Bounce;
		direction = Enum.EasingDirection.InOut;
	};

	--[[
		Circular In, Circular Out, Circular In & Out
	]]
	['CircularIn'] =  {
		style     = Enum.EasingStyle.Circular;
		direction = Enum.EasingDirection.In;
	};

	['CircularOut'] =  {
		style     = Enum.EasingStyle.Circular;
		direction = Enum.EasingDirection.Out;
	};

	['CircularInOut'] =  {
		style     = Enum.EasingStyle.Circular;
		direction = Enum.EasingDirection.InOut;
	};

	--[[
		Exponential In, Exponential Out, Exponential In & Out
	]]
	['ExponentialIn'] =  {
		style     = Enum.EasingStyle.Exponential;
		direction = Enum.EasingDirection.In;
	};

	['ExponentialOut'] =  {
		style     = Enum.EasingStyle.Exponential;
		direction = Enum.EasingDirection.Out;
	};

	['ExponentialInOut'] =  {
		style     = Enum.EasingStyle.Exponential;
		direction = Enum.EasingDirection.InOut;
	};

	--[[
		Elastic In, Elastic Out, Elastic In & Out
	]]
	['ElasticIn'] =  {
		style     = Enum.EasingStyle.Elastic;
		direction = Enum.EasingDirection.In;
	};

	['ElasticOut'] =  {
		style     = Enum.EasingStyle.Elastic;
		direction = Enum.EasingDirection.Out;
	};

	['ElasticInOut'] =  {
		style     = Enum.EasingStyle.Elastic;
		direction = Enum.EasingDirection.InOut;
	};

};

function util:GetEasingStyle(easeKey : string) : () -> Enum.EasingStyle
	return EASING_TABLE[easeKey].style;
end

function util:GetEasingDirection(easeKey : string) : () -> Enum.EasingDirection
	return EASING_TABLE[easeKey].direction;
end

return util;
