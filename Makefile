figures=$(wildcard Images/*.jpg) $(wildcard Images/*.png)
chapters=$(wildcard Chapters/*.tex)

all: main.pdf

main.pdf: main.tex $(chapters) $(figures)
	latexmk -pdf $<

.PHONY: clean

clean:
	latexmk -C main