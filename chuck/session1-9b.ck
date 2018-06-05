SinOsc s => dac;

20 => int i;

while (i < 400) {
    i => s.freq;
    <<< i >>>;
    0.01::second => now;
    i++;
}