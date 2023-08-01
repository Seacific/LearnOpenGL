DEPENDENCIES := -L Dependencies/lib -l glfw3
INCLUDE := -I Dependencies/include

LearnOpenGL: main.o glad.o
	g++ main.o glad.o -o LearnOpenGL $(INCLUDE) $(DEPENDENCIES) -framework Cocoa -framework OpenGL -framework IOKit
main.o: src/main.cpp
	g++ -c src/main.cpp -o main.o $(INCLUDE)
glad.o: Dependencies/src/glad.c
	gcc -c Dependencies/src/glad.c -o glad.o $(INCLUDE)
