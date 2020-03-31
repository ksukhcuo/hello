ifeq ($(OS),Windows_NT)
	f = ./build/fort.exe
	c = ./build/cpp.exe
	p = ./src/hello.py
	py = python
else
	f = ./build/fort.out
	c = ./build/cpp.out
	p = ./src/hello.py
	py = python3
endif

make: $(f) $(c)
	@echo fortran:
	@$(f)
	@echo c++:
	@$(c)
	@echo python:
	@$(py) $(p)

$(f): ./src/hello.f90
	@gfortran src/hello.f90 -o $(f)

$(c): ./src/hello.cpp
	@g++ src/hello.cpp -o $(c)
