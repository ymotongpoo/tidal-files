now + 6::second => time later;

while (now < later) {
    <<< "time left:", (later-now)/second >>>;
    1::second => now;
}

<<< "IT'S TIME!!!" >>>;

SinOsc s => dac;
880 => s.freq;
2::second => now;