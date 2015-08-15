all: compile

compile:
	java -jar /usr/local/lib/antlr-4.5-complete.jar Hello.g4
	javac Hello*.java

run:
	java org.antlr.v4.runtime.misc.TestRig Hello r -gui

clean: 
	rm -f *class

distclean: clean
	rm -f *.java *.tokens
