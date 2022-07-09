BUILD    = .build
JFLAGS  += -sourcepath src/main/java
JFLAGS  += -cp lib/hamcrest-core-1.3.jar
JFLAGS  += -d ${BUILD}

default: clean jar

compile:
	javac ${JFLAGS} src/main/java/org/junit/runner/JUnitCore.java

jar: compile
	jar cvf lib/junit4.jar -C ${BUILD} .

clean:
	rm -rf ${BUILD}
