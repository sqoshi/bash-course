objects = main.o program_usage.o \
          s0_podprogram.o \
          s999_podprogram.o \
		  s244959_podprogram.o \
		  s244960_podprogram.o \
		  s244968_podprogram.o \
		  s245162_podprogram.o


program : $(objects)
	cc -o program $(objects)
main.o : program.h

program_usage.o : program.h

s0_podprogram.o : program.h

s999_podprogram.o : program.h

s244959_podprogram.o : program.h

s244960_podprogram.o : program.h

s244968_podprogram.o : program.h

s245162_podprogram.o : program.h

.PHONY : clean

clean :
	-rm *.o program
