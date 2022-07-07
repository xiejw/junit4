JFLAGS  += -sourcepath src/main/java
JFLAGS  += -cp lib/hamcrest-core-1.3.jar
JFLAGS  += -d .build

default:
	javac ${JFLAGS} src/main/java/org/junit/runner/JUnitCore.java
