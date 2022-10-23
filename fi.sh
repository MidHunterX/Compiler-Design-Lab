#! /usr/bin/bash
clear
echo $'__  __ _     _   _    _             _'
echo $'|  \/  (_)   | | | |  | |           | |'
echo $'| \  / |_  __| | | |__| |_   _ _ __ | |_ ___ _ __'
echo $'| |\/| | |/ _` | |  __  | | | | '_ \| __/ _ \ '__|'
echo $'| |  | | | (_| | | |  | | |_| | | | | ||  __/ |'
echo $'|_|  |_|_|\__,_| |_|  |_|\__,_|_| |_|\__\___|_|'
echo $'           Compiler Lab programs automation script'
echo $'--------------------------------------------------'
printf "Input the Experiment number : "
read exp

case $exp in

  1)
	clear
	echo $"Exp 1 : Lexical analyzer using C"
	echo $"--------------------------------"
	cd '1 Lexical Analyzer C/v2/'
	gcc lexan.c
	./a.out input.txt
	;;

  2)
	clear
	echo $"Exp 2 : Lexical analyzer using LEX"
	echo $"----------------------------------"
	cd '2 Lexical Analyzer Lex/v2/'
	lex lexan.l
	gcc lex.yy.c
	./a.out input.c
	;;

  3)
    clear
	echo $"Exp 3 : Display the number of lines, words and characters"
	echo $"---------------------------------------------------------"
	cd '3 Lines Words Char Lex/'
	lex symCount.l
	gcc lex.yy.c
	./a.out
	;;

  4)
    clear
	echo $"Exp 4 : Convert the substring abc to ABC"
	echo $"----------------------------------------"
	cd '4 abc to ABC Conversion Lex/'
	lex abc.l
	gcc lex.yy.c
	./a.out
	;;

  5)
    clear
	echo $"Exp 5 : Total number of vowels and consonants"
	echo $"---------------------------------------------"
	cd '5 Vowel Consonant Lex/'
	lex voco.l
	gcc lex.yy.c
	./a.out
	;;

  6)
    clear
	echo $"Exp 6 : Recognize a valid arithmetic expression"
	echo $"-----------------------------------------------"
	cd '6 Valid Arithmetic YACC/'
	yacc -d math.y
	lex math.l
	gcc lex.yy.c y.tab.c -ll -lm -w
	./a.out
	;;

  7)
    clear
	echo $"Exp 7 : Recognize a valid identifier"
	echo $"------------------------------------"
	cd '7 Valid Identifier YACC/v2/'
	lex id.l
	yacc -d id.y
	gcc lex.yy.c y.tab.c -ll -lm -w
	./a.out
	;;

  8)
    clear
	echo $"Exp 8 : Calculator using LEX and YACC"
	echo $"-------------------------------------"
	cd '8 Calculator YACC/'
	lex calc.l
	yacc -d calc.y
	gcc lex.yy.c y.tab.c -ll -lm -w
	./a.out
	;;

  9)
    clear
	echo $"Exp 9 : Convert the BNF rules into YACC form"
	echo $"--------------------------------------------"
	cd '9 BNF to YACC/'
	lex bnf.l
	yacc -d bnf.y
	gcc lex.yy.c y.tab.c -ll -lm -w
	./a.out input.txt
	;;

  10)
    clear
	echo $"Exp 10 : ε - closure of all states of NFA"
	echo $"-----------------------------------------"
	cd '10 e Closure/'
	gcc eclosure.c
	./a.out
	;;

  11)
    clear
	echo $"Exp 11 : Convert eNFA to NFA"
	echo $"----------------------------"
	cd '11 eNFA to NFA/v2/'
	gcc enfa2nfa.c
	./a.out eg1.txt
	;;

  12)
    clear
	echo $"Exp 12 : Convert NFA to DFA"
	echo $"---------------------------"
	cd '12 NFA to DFA/'
	gcc nfa2dfa.c
	./a.out eg1.txt
	;;

  13)
    clear
	echo $"Exp 13 : Minimize DFA"
	echo $"---------------------"
	cd '13 DFA Minimization/'
	gcc dfamin.c
	./a.out
	;;

  14)
    clear
	echo $"Exp 14 : First and Follow of any given grammar"
	echo $"----------------------------------------------"
	cd '14 First and Follow/'
	gcc fifo.c
	./a.out
	;;

  15)
    clear
	echo $"Exp 15 : Recursive descent parser"
	echo $"---------------------------------"
	cd '15 Recursive Descent Parser/v2/'
	gcc redespa.c
	./a.out
	;;

  16)
    clear
	echo $"Exp 16 : Construct a Shift Reduce Parser"
	echo $"----------------------------------------"
	cd '16 Shift Reduce Parser/'
	gcc shr.c
	./a.out
	;;

  17)
    clear
	echo $"Exp 17 : Program to perform constant propagation"
	echo $"------------------------------------------------"
	cd '17 Constant Propagation/'
	gcc copo.c
	./a.out
	;;

  18)
    clear
	echo $"Exp 18 : Intermediate code generation"
	echo $"-------------------------------------"
	cd '18 Intermediate Code Generation/'
	gcc icg.c
	./a.out input.txt
	;;

  19)
    clear
	echo $"Exp 19 : Implement the back end of the compiler"
	echo $"-----------------------------------------------"
	cd '19 Backend/v1/'
	gcc bak.c
	./a.out
	;;

  *)
    echo -n "unknown"
    ;;
esac
