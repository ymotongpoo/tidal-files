// sound chain
SinOsc s => dac;

Math.srandom(23);

while (true) {
    Math.random2(20, 500) => int i;
    Math.random2f(0.2, 0.9) => float v;
    <<< i, v >>>;
    i => s.freq;
    v => s.gain;
    0.2::second => now;
}