[y,fm] = audioread('recursos/short.wav');

y = y(24000:430000);
audiowrite('test.wav',y,fm)
% Frequency of A4
A4_freq = 440;

% Number of keys on a piano
num_keys = 88;

% Initialize array to hold frequencies
piano_frequencies = zeros(1, num_keys);

% Calculate the frequencies
for n = 1:num_keys
    piano_frequencies(n) = A4_freq * 2^((n - 49) / 12);
end

% Display the frequencies

##disp(piano_frequencies);

frame_length = 1024;
hop = 256;

frames_number = floor((length(y) - frame_length)/hop) + 1;

frames = zeros(1,frame_length);
h = hanning(frame_length);

for i = 1:frames_number;
   frames(i,:) = (y((i-1)*hop + 1:(i-1)*hop + frame_length).*h)';
end

plot(1:1024, frames(256,:))
pitches = zeros(1,frames_number);

for i = 1:frames_number;

end











