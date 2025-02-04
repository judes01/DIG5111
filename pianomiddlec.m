Filename = 'piano_middle_C.wav';
% First read wav file into memory
[Sig,Fs]=audioread(Filename);
%Sig stores raw audio data in column;
%Fs sampling frequency

Duration = length(Sig)/Fs;
disp(Duration);
Ts = 1/Fs;
Time = 0:Ts:Duration-Ts;
plot(Time' ,Sig);
ylabel('Amplitude');
xlabel('Time Sec');

info1 = audioinfo("piano_middle_C.wav");
audioinfo(Filename);

t1 = 0.5;
t2 = 1;
%sample indices
t1samples = t1*Fs;
t2samples = t2*Fs;

partSig = Sig(t1samples:t2samples);
partTime = Time(t1samples:t2samples);
plot(partTime ,partSig);