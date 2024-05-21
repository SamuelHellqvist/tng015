bode([1, 2], [1, -2, 1]);

%% 7.1

t = 0:0.1:5;

y = 2.*t.*exp(-t); 

plot(t, y)

%% 8
n = 1:1:50;

x = exp(-1.*n*0.1);

y = zeros(1,50);
for i= 2:50
    y(i)=(2*x(i-1)+9*y(i-1))/10;
end

plot(n,y);
%% 10
n = 1:1:50;

x = exp(-1.*n*0.1);

y = zeros(1,50);
for i= 2:50
    y(i)=(2*x(i)+2*x(i-1)+19*y(i-1))/21;
end

plot(n,y);
%% 11
 syms s;
 Y=2/(s+ 1)^2;
 y=ilaplace(Y);
 
 for n = 1:1:50
 t = 0.1*n;		 	% Skapa t-värde
 y_numerisk(n)=eval(y);	% Funk. “eval” utnyttjar %t-värdet
 t2(n) = t;			% Spara t-värde
 end
 plot(t2,y_numerisk);	

