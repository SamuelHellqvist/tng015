%1.2
y = zeros(1,40)
t = 0:0.02:0.8
x=ones(1,40);
for k = 1:40
   y(k+1) = (46/50)*y(k)+1/50*x(k);
end


plot(t, y);
xlabel('t');
ylabel('y(t)');

%% 2.1
for k = 1:40
   y(k) = (1/4)-exp((-4)*t(k))/4;
end

plot(t, y);

%% 3.1
t = 0:0.02:0.8
y= (1/4)-exp((-4)*t)/4;
plot(t,y);
%% 4
%4.1
t = 0:0.02:0.8;
h = exp(-4*t) %kommer fr�n fr�gan h = e^(-4t)


%4.2
x=ones(1,40);
out = conv(x, h);

%4.3
stem(out);
%stem(h);
n = 1:40;
y = out(n);
stem(y);

%% 5

T = 0.02;
z=y*T;
stem(z);

%% 6
%6.1
[y,fs]=audioread('Trubadur.wav');

%6.2
d = 0.3*fs; %hur m�nga samplar som visar en delay p� 0.3 sekunder
d = round(d);
zeroes = zeros(1,d);
h = [1 zeroes 1 zeroes 1];
falt = conv(y,h);
soundsc(falt,fs)
%% 7
load piano1.mat

soundsc(y1,fs);
%% 8
load piano1.mat
Y = fft(y1);
N = length(Y);
absy = abs(Y);
f = 0:(fs/N): fs/2;
ymax = max(Y);
Y = abs(Y);
plot(f, Y(1:length(f))); %max freq is at 523 according to this graph
deltaf = fs/N;

%the frequency 523 is withing the range fmax +- deltaf (523 +-1.1024)

%% 9
load phonenumber.mat
%soundsc(y,fs); 
y1=y(1:1000);
y2=y(1201:2200);
y3=y(2401:3400);
y4=y(3601:4600);
y5=y(4801:5800);
y6=y(6001:7000);
y7=y(7201:8198);

subplot(7,1,1);
Y = fft(y1); %fourier transformerar 
N = length(Y);
Y = abs(Y);
f = 0:(fs/N): fs/2; % nyquist

plot(f, Y(1:length(f)));

subplot(7,1,2);
Y = fft(y2); %fourier transformerar 
N = length(Y);
Y = abs(Y);
f = 0:(fs/N): fs/2; % nyquist

plot(f, Y(1:length(f)));

subplot(7,1,3);
Y = fft(y3); %fourier transformerar 
N = length(Y);
Y = abs(Y);
f = 0:(fs/N): fs/2; % nyquist

plot(f, Y(1:length(f)));

subplot(7,1,4);
Y = fft(y4); %fourier transformerar 
N = length(Y);
Y = abs(Y);
f = 0:(fs/N): fs/2; % nyquist

plot(f, Y(1:length(f)));

subplot(7,1,5);
Y = fft(y5); %fourier transformerar 
N = length(Y);
Y = abs(Y);
f = 0:(fs/N): fs/2; % nyquist

plot(f, Y(1:length(f)));

subplot(7,1,6);
Y = fft(y6); %fourier transformerar 
N = length(Y);
Y = abs(Y);
f = 0:(fs/N): fs/2; % nyquist

plot(f, Y(1:length(f)));

subplot(7,1,7);
Y = fft(y7); %fourier transformerar 
N = length(Y);
Y = abs(Y);
f = 0:(fs/N): fs/2; % nyquist

plot(f, Y(1:length(f)));
%%
load radar.mat
Y = fft(y); %fourier transformerar 
N = length(Y);
Y = abs(Y);
f = 0:(fs/N): fs/2; % nyquist

plot(f, Y(1:length(f)));

