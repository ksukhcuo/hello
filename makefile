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

lin: ./bin/fort.out ./bin/cpp.out ./src/hello.py
	@echo fortran:
	@./bin/fort.out
	@echo c++:
	@./bin/cpp.out
	@echo python:
	@python3 ./src/hello.py

./bin/fort.out: ./src/hello.f90
	@gfortran ./src/hello.f90 -o ./bin/fort.out

./bin/cpp.out: ./src/hello.cpp
	@g++ ./src/hello.cpp -o ./bin/cpp.out
