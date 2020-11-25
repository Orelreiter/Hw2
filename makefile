# Welcomre to Mamat, 044101
#
# This is the project's Makefile. It contains the instructions for compiling
# the projects C files, and then link the generated objects into an executable.
# This simple file will compile "main.c" to "main.o" and then link it (with C
# runtime library) to the executable "prog.exe".
#
# To compile, open the terminal in the folder that contains
# this file and run "make".
#
# To clean, open the terminal in the folder that contains
# this file and run "make clean".
#
# All eclipse projects in this machine are under /home/mamat/Documents/

#These are defines to make our code understandable.
CC     = gcc
CCLINK	= $(CC) 
CFLAGS	= -g -Wall -std=c99
OBJS   = main.o file0.o file1.o file2.o file3.o file4.o 
RM	= rm -fr
EXEC	= prog.exe

#Link several objects files into a single executable file
$(EXEC): $(OBJS)
	$(CCLINK) $(OBJS) -o prog.exe
	

#We define a set of rules with depedencies. 
main.o: main.c file0.h file1.h file2.h file3.h file4.h
	$(CC) $(CFLAGS) -c main.c
	
file0.o: file0.c file0.h file1.h file2.h file3.h file4.h
	$(CC) $(CFLAGS) -c file0.c
	
file1.o: file1.c file0.h file1.h 
	$(CC) $(CFLAGS) -c file1.c

file2.o: file2.c file2.h  file4.h
	$(CC) $(CFLAGS) -c file2.c
	
file3.o: file3.c file3.h file0.h file1.h file2.h file4.h
	$(CC) $(CFLAGS) -c file3.c
	
file4.o: file4.c file4.h file0.h file1.h file2.h
	$(CC) $(CFLAGS) -c file4.c

#Clean the directory
Make clean:
	$(RM) *.exe $(OBJS)

	
	