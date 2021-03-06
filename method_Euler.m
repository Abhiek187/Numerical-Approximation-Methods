%This program calculates differential equations using Euler's Method.

syms f(t,y) %Allows functions in terms of t and y to be inputted
f(t,y) = input('Enter differential equation: ');
tn = input('Enter initial t: ');
yn = input('Enter initial y: '); %Initial conditions
h = input('Enter step size: ');
n = input('Enter number of steps: ');

for i = 1:n
    fn = f(tn,yn); %fn is symbolic, not numeric
    yn = yn + h*fn; %Euler's Method
    tn = tn + h;
end

disp(['y(',num2str(h*n),') = ',num2str(double((yn)))]) %char converts sym 
%to str, also double converts fraction to decimal