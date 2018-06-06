// Author: Yoshi Yamaguchi
// Date: 2016.06.06 (Wed)
SinOsc s => dac;
SinOsc b => dac;
0 => b.gain;


[60, 64, 67, 72] @=> int basePtn[];
[0, 0, 0, 0, 2, 2, 2, 2] @=> int keys[];

0.5 => s.gain;
0.11::second => dur unitDur;
while (true) {
    for (0 => int k; k < keys.cap(); k++) {
        for (0 => int i; i < basePtn.cap(); i++) {
            Std.mtof(basePtn[i]+keys[k]) => s.freq;
            unitDur => now;
        }
    }
}
