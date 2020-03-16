% Ahmet Önkol 150117018
t = (0: .0625: 100); %t values ranging from 0 to 100
x = sin(t).*(exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5); %given parametric equations in terms of x
y = cos(t).*(exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5); %in terms of y
A = subplot(2,1,1); %plot with two rows and one column
plot(t , x,'r') %x versus t plot
hold on %hold the current plot
plot (t,y,':k', 'LineWidth',1.5) %y versus t plot % y is a black dotted line% thicker dots for visability
xlabel('t') % x axis label
ylabel('x and y')% y axis label
title('A) Plot of X and Y versus t')
legend('=x','=y')%add a legend 
hold off
B = subplot(2,1,2);%plot on second row
plot (x,y)%y versus x plot
pbaspect([1 1 1])% make plot square
xlabel('x') % x axis label 
ylabel('y') % y axis label
title('B) Plot of Y versus X') %title of plot