## Simulating Braille
Braille uses a two-by-three grid of dots to represent characters. We’ll simulate that concept by using three lines of symbols:
```
0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0...
```
The 0 represents a raised dot. The period is an unraised space. The above code reads “hello world” in normal text. You can experiment with converting other words yourself and share some samples with your classmates.

### Let’s also constrain our Braille files to 80 braille characters (160 dots) wide.
