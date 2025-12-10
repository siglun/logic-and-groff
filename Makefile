
.SUFFIXES: .pic .ms .pdf .ps .eps
.DEFAULT: .ms.pdf .ps.pdf .eps.pdf

default: logic-with-groff.pdf
URI = https://github.com/siglun/logic-and-groff

.ms.pdf:
	pdfroff -U -R -sGtep   -ms  -M ./tmac -m refer-hooks \
	-m decorations  -m pdfpic -k -Kutf-8  -P-pa4 -Tps $<  > $*.pdf

.eps.pdf:
	epstopdf  $<

clean:
	rm -f *~ excercises.p* qr.* logic-with-groff.ps

time_series.pdf:
	./model-and-plot.r; grep -vi time shit.text > model_data.text

qr.eps:
	qrencode -l H -v 1 -s 3 -d300 -t EPS -o qr.eps $(URI)

qr.pdf: qr.eps

excercises.pdf: excercises.ms

eqn-cosmetics.pdf:  parameters.ms eqn-cosmetics.ms

logic-with-groff.pdf: parameters.ms logic-with-groff.ms fitch-macros.pic  \
	aristotelian-syllogism.ms references.text qr.pdf useful-equivalents.ms \
	QL-proof-1.ms leibniz.ms Makefile tmac/refer-hooks.tmac

time_series.pdf: model-and-plot.r parameters.r
