SinOsc s => dac;

222.45 => s.freq;
0.2 => s.gain;

3 => int chance;

if(chance == 1) {
    1::second => now;
} else {
    440.32 => s.freq;
    3::second => now;
}