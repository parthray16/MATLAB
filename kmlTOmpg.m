function mpg = kmlTOmpg(kml)
%  kmltompg converts kilometers per liter to miles per gallon
%
%   Input argument: kmltompg(kml) has one scalar input parameter
%        kml (kilometers per liter)
%   Output argument: Returns one scalar value, mpg
%
%   Example:
%
%   >> m = kmlTOmpg(1)
%     m =
%        2.3521

mpg = kml / 0.264172 * 0.621371;
end

