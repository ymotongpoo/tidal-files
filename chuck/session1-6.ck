SinOsc s => dac;

// middle C freq (in hz)
261.63 => float myFreq;
0.6 => float myVol;

myFreq => s.freq;
myVol => s.gain;
1::second => now;