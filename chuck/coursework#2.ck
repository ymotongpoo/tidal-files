// Author: Yoshi Yamaguchi
// Date: 2016.06.06 (Wed)
TriOsc s => dac;
SqrOsc t => Pan2 p => dac; 

now + 30::second => time limit;

[48, 48, 48, 48, 48, 48, 53, 55,
 48, 48, 48, 48, 48, 48, 55, 53] @=> int base[];

0.5 => s.gain;
0.1 => t.gain;
0.22::second => dur unitDur;
// repeat the base pattern forever.
-1.0 => float pan;
1 => int sign;
while (now < limit) {
    Math.random2f(20, 400) => t.freq;
    for (0 => int i; i < base.cap(); i++) {
        <<< pan >>>;
        pan => p.pan;
        Std.mtof(base[i]) => s.freq;
        unitDur => now;
        Std.mtof(base[i]+12) => s.freq;
        unitDur => now;
        pan + 0.1 * sign => pan;
        if (pan > 1.0 || pan < -1.0) {
            sign * (-1) => sign;
        }
    }
}
