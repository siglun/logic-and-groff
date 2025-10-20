# Logic and groff

This is a tutorial for how to write logic using groff. The tutorial
PDF is in [logic-with-groff.pdf](logic-with-groff.pdf). It's source is
in [logic-with-groff.ms](logic-with-groff.ms)

There are things in the paper which works better with a font with
better UTF-8 support than the vanilla groff distribution. I use the
Scientific and Technical Information Exchange (STIX) fonts in this
project.

https://www.stixfonts.org/

To install fonts use install-font.sh script from Peter Schaffter

https://www.schaffter.ca/mom/momdoc/appendices.html#install-font

In order to run the script you need a software package called fontforge

https://fontforge.org/en-US/

Strictly speaking, you only need STIX for two characters ⊢ (AKA
syntactic consequence, turnstile) and ⊨ (AKA semantic consequence,
double turnstile). It is, however, a fairly small operation to install
STIX and I guess you will like that font. At least I did.

I made STIXMath a special font and defined a groff character /- for
turnstile ⊢ and /-- for double turnstile ⊨. I added this to the file
[eqn-definitions.ms](eqn-definitions.ms).

```
.special STIXMath
.char \[/-] \[u22A2]
.char \[/--] \[u22A8]
'''
