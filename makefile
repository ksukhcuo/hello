win: bin\fort.exe bin\cpp.exe src\hello.py
	@echo fortran:
	@bin\fort.exe
	@echo c++:
	@bin\cpp.exe
	@echo python:
	@python src\hello.py

bin\fort.exe: src\hello.f90
	@gfortran src\hello.f90 -o bin\fort.exe

bin\cpp.exe: src\hello.cpp
	@g++ src\hello.cpp -o bin\cpp.exe

