function [th, rad] = CartToPolar(x, y)
%  carttopolar converts x y cartesian coordinates to polar coordinates
%
%     Input arguments: carttopolar(x,y) has two scalar parameters,
%          x and y
%     Output arguments: Returns two scalar values, [th, rad], (theta and
%          radius)
%
%     Example:
%
%       >> [t,r] = CartToPolar(3,4)
%        t =
%         53.1301
%        r = 
%         5

rad = sqrt(x^2 + y^2); 
th = atand(y / x);
if x < 0 && y > 0
    th = th + 180;
end
if x < 0 && y < 0
    th = th - 180;
end
    
end

