JFLAGS = -g -classpath ./slf4j-simple-1.7.30.jar:./slf4j-api-1.7.30.jar 
JC = javac
JAVA = java

.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = \
	Building.java 

default: classes

classes: $(CLASSES:.java=.class)

clean:
	$(RM) *.class

run:
	$(JAVA) -classpath "./:slf4j-simple-1.7.30.jar:slf4j-api-1.7.30.jar" -D"org.slf4j.simpleLogger.showDateTime=true" -D"org.slf4j.simpleLogger.dateTimeFormat=yyyy-MM-dd HH:mm:ss:SSS Z" Building
