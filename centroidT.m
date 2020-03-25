function yc = centroidT(w, h, t, d)
%  centroidt calculates centroid along y axis
%
%       Input arguments: centroidt(w,h,t,d) has four scalar input arguments
%          that describe tee shape,
%               w is overall width of tee
%               h is overall height of tee
%               t is thickness of beam on top of tee
%               d is width of the vertical tee post 
%       Output argument: Returns one scalar y, the centroid along the 
%          y axis
%
%       Example:
%
%       >> y = centroidT(4,3,2,1)
%        y =
%          1.8333
A = (h-t)*d + (w*t);
y1 = (h - t) + (t/2);
y2 = (h - t)/2;
yc = ((y1 * (w*t)) + (y2 *(h-t)*d)) / A;
end

