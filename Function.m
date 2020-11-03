%%cd('C:\Users\Pol\PAV\P3')
[y,Fs] = audioread('a30ms.wav');
deltat=1/Fs;
t=0:deltat:(length(y)*deltat)-deltat;
subplot(2,1,1);
plot(t,y); title('Signal Vocal A 30 ms'); xlabel( 'Seconds'); ylabel('Amplitude');
subplot(2,1,2);
c = xcorr(y);
plot(c); title('Autocorrelation');  xlabel( 'Samples'); ylabel('Amplitude');
