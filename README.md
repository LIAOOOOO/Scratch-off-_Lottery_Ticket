# Scratch-off-_Lottery_Ticket
1. Introduction
You are now playing a scratch-off (lottery) ticket. You
can win $50,000USD if you can find the winning
number in one of your numbers. For convenience,
you plan to firstly sort your number in an increasing
sequence, and then perform the matching between
the winning number and the sorted sequence. You
are now request to write a RISC-V program to sort 10
your numbers in the increasing order, and then
provide the position of the winning number if it
matches one of your numbers.

2. Example
Assume the winning number is 15 and your numbers are 99 1 5 65 10 45
23 36 15 74. The program will sort your numbers in increasing order as 1 5
10 15 23 36 45 65 74 99. Then the program can find that the winning number
15 is located in the 4th position of the sequence.

3. Input Format
The input file consists of 11 lines. The first line gives the winning number,
and the following 10 lines give your number. All the numbers are unsigned
numbers. The range of each number is between 0 to 264
. The input of the
above example is:
15
99
1
5
65
10
45
23
36
15
74

4. Output Format
The program will firstly print the increasing order sorted sequence, and then
gives the position of the winning number in the sorted sequence. If the
program cannot find the winning number in your numbers, it will output 0.
The output of the above example is:
1 5 10 15 23 36 45 65 74 99
4

5. Evaluation
Your assignment will be scored according to (1) the correctness of your
output, (2) the readability of your source code, and (3) the demo session.
You have to implement the RISC-V assembly program by yourself. Using
existing tools to generate RISC-V assembly code from C/C++ code is
prohibited and doing so will lead to 0 score for this assignment.
The demo session will be held after the deadline and you have to explain
your code to TAs. Absence from the demo session will lead to a huge penalty
of your PA1 score. 
