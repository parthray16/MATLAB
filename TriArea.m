function [Area] = TriArea(A, B, C)
%TRIAREA calculates area of triangle
%
%    Input arguments: triarea(a,b,c) has three vector inputs,
%         which are vectors of length 3 that are the coordinates a,b,c that
%         describe the given triangle
%    Output argument: Returns scalar value of the area of given triangle
%
%       Example:
%
%      >> A = [0,0,0]; B = [0,3,0]; C = [0,0,4];
%      >> a = TriArea(A,B,C)
%       a =
%         6

Area = .5 * sqrt(sum((cross(A - B, A - C)).^2));
end

