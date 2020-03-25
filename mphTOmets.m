function mps = mphTOmets(mph)
% MPHTOMETS converts mph(miles per hour) to mps(meters per second)
%       Input argument: MPHTOMETS(mph) has one scalar input, mph (miles per
%           hour)
%       Output argument: returns the input value but converted into meters
%           per second (mps)
%       Example:
%       
%       >> m = mphTOmets(1)
%        m =
%           0.4470
%
mps = mph / 3600 * 1609.34;
end

