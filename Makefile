all: graph diagram get_pdf


graph: graphmaker.dot
	dot -Tpng graphmaker.dot > graph.png

	
diagram: diagram.puml
	java -jar plantuml.jar diagram.puml


get_pdf: main.tex
	pdflatex main.tex

clean:
	rm -f *.png *.pdf *.log *.aux

healthcheck:
	latex --version
	pdflatex --version
	dot -V
	java --version

