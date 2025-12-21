# Makefile for resume project
# Build PDF với latexmk -xelatex cho LaTeX và typst compile cho Typst

.PHONY: build build-latex build-typst build-cv

build-latex:
	@echo "Building LaTeX PDF..."
	cd resume_latex && latexmk -xelatex main.tex
	@echo "LaTeX PDF built successfully!"

build-typst:
	@echo "Building Typst PDF..."
	cd resume_typst && typst compile main.typ
	@echo "Typst PDF built successfully!"

build-cv:
	@echo "Building CV Typst PDF..."
	cd resume_typst && typst compile cv.typ
	@echo "CV Typst PDF built successfully!"

build: build-latex build-typst
	@echo "All PDFs built successfully!"