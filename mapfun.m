function output = mapfun(value,fromLow,fromHigh,toLow,toHigh)

output = (value - fromLow) .* (toHigh - toLow) ./ (fromHigh - fromLow) + toLow;
end