clc
clear

disp('Polarização');
disp(' ');
Exo = input('Digite amplitude x: ');
fxd = input('Digite angulo de fase x(degraus): ');
fx  = fxd*pi/180;
Eyo = input('Digite amplitude y: ');
fyd = input('Digite angulo de fase y(degraus): ');
fy  = fyd*pi/180;
disp(' ');
disp('Para determinar a direção da polarização,');
disp('mova de o para + durante o plot');
disp(' ');

%calcula
wtd = 0:360;
wtr = wtd*pi/180;
x = Exo*cos(wtr+fx);
y = Eyo*cos(wtr+fy);
x0 = Exo*cos(fx);
y0 = Eyo*cos(fy);
x45 = Exo*cos(fx+pi/4);
y45 = Eyo*cos(fy+pi/4);

fdiff = fy-fx;
a = abs(Exo);
b = abs(Eyo);
temp = sqrt(a^4+b^4+2*a^2*b^2*cos(2*fdiff));
MAJ = 2*sqrt(0.5*(a^2+b^2+temp));
MIN = 2*sqrt(0.5*(a^2+b^2-temp));
AR = MAJ/MIN;
temp2 = (2*a*b/(a^2-b^2))*cos(fdiff);
tilangle = (0.5*atan(temp2)*180/pi);

plot(x,y,x0,y0,'ok',x45,y45,'+k');
xlabel('x')
ylabel('y')
title('Polarização')
axis('equal')