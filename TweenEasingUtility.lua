local util = {};

local EasingFunctions = require(script.Parent.EasingFunctions);

function util:GetEasingStyle(easeKey : string) : () -> Enum.EasingStyle
	return EasingFunctions[easeKey].style;
end

function util:GetEasingDirection(easeKey : string) : () -> Enum.EasingDirection
	return EasingFunctions[easeKey].direction;
end

return util;
