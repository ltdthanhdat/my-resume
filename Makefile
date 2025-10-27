# Makefile for LaTeX resume project
# Build PDF với latexmk -xelatex

.PHONY: build

build:
	@echo "Building PDF..."
	cd resume && latexmk -xelatex main.tex
	@echo "PDF built successfully!"