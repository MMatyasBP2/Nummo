x=[1 2 3 4]
y=[1 1 8 20]
plot(x,y,'ko')
xx=[0:0.1:5]
hold on
yy=13/2-43/5*xx+3*xx.^2
plot(xx,yy,'r')