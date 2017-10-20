%This program calculates differential equations using the Runge-Kutta
%Method.

syms f(t,y) %Allows functions in terms of t and y to be inputted
f(t,y) = input('Enter differential equation: ');
tn = input('Enter initial t: ');
yn = input('Enter initial y: '); %Initial conditions
h = input('Enter step size: ');
n = input('Enter number of steps: ');

for i = 1:n
    k1 = f(tn,yn);
    k2 = f(tn + h/2,yn + h/2*k1);
    k3 = f(tn + h/2,yn + h/2*k2);
    k4 = f(tn + h,yn + h*k3);
    yn = yn + h/6*(k1 + 2*k2 + 2*k3 + k4); %Runge-Kutta Method
    tn = tn + h;
end

disp(['y(',num2str(h*n),') = ',num2str(double((yn)))]) %char converts sym 
%to str, also double converts fraction to decimal