CC=g++
CFLAGS= -Wall 
LDFLAGS= -lGLEW -lGL -lGLU -lglut -lassimp
SOURCES=main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=pong

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(SOURCES) $(CFLAGS) $(LDFLAGS) -o $@
