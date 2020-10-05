all: graph diagram

graph: graphmaker.dot
	dot -Tpng graphmaker.dot > graph.png
	
diagram: diagram.puml
	java -jar plantuml.jar diagram.puml
	
