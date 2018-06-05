// Author: Yoshi Yamaguchi
// Date: 2018.06.02 (Sun)

<<< "Coursework #1 by Yoshi Yamaguchi" >>>;
SinOsc s => dac;

// set the length limit to 30sec.
now + 30::second => time end;
<<< "now: ", now, ",end: ", end >>>;

0.5 => float myGain;
0.001::second => dur myInterval;

myGain => s.gain;
while (now < end) {
    if ((end - now)/second > 15) {
        for (20 => int i; i < 1000; i++) {
            i => s.freq;
            myInterval => now;
        }
    } else {
        for (500 => int i; i > 20; i--) {
            i => s.freq;
            myInterval/2 => now;
        }
    }
}