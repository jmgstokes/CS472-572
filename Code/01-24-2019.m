clc;
clear;

x1 = 1.7*(2*float((rand(1000,1)))-1);
x2 = 2.5*(2*float((rand(1000,1)))-1);
x3 = 1.2*(2*float((rand(1000,1)))-1);

x_new = [x1 x2 x3];
%x = [-1.7; -2.5; -1.2];

w = [0.5; 0.5; 0.3];

%Dot product method summation Part I
%h = w'*x

N = size(x_new);
for j=1:N(2)
	%Summation method summation Part I
	hsum = 0.0;

	for i=1:N(1)
		hsum = hsum + w(i)*x_new(i,j);
	end
	h(j) = hsum;

	%Part II, Activation function
	z(j) = 1/(1+exp(-h(j)))
end

plot(z,'b+')
figure
plot(h,'r+')