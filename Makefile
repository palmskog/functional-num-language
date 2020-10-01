default: hol

functionalScript.sml: functional.ott
	ott -o $@ $<

functional.tex: functional.ott
	ott -o $@ $<

hol: functionalScript.sml ottScript.sml ottLib.sig ottLib.sml
	Holmake

clean:
	rm -f functional.tex functionalScript.sml
	Holmake clean

.PHONY: default clean hol
