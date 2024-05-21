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
h = exp(-4*t) %kommer från frågan h = e^(-4t)


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
d = 0.3*fs; %hur många samplar som visar en delay på 0.3 sekunder
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






