% Ahmet Önkol 150117018
% Angle range
th = 0:pi/32:8*pi;

% The butterfly curve equation (in polar coordiantes)
r = exp(sin(th))-2*cos(4*th)-sin((2*th-pi)/24).^5;

% Plot 
polar(th, r, 'r--');
