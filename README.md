# Compiler Design Lab

```
Execution commands
------------------
lex filename.l
yacc -d filename.y
gcc lex.yy.c y.tab.c -ll -lm -w
```

# I. Implementation of lexical analyzer.

## Exp 1 - Lexical Analyzer using C language
Aim: Design and implement a lexical analyzer using C language to recognize all valid tokens in the input program. The lexical analyzer should ignore redundant spaces, tabs and newlines. It should also ignore comments.
1. Start
2. Open the input file input.txt in read mode
3. If the file is not found . Display an error message
4. Else scan and analyse each component ch until the end of file
	* If ch is a keyword display "KEYWORD"
	* If ch is an identifier display "IDENTIFIER"
	* If ch is any arithmetic operator display "OPERATOR"
5. Close the file
6. Stop

## Exp 2 - Lexical Analyzer using Lex Tool
Aim: Implement a Lexical Analyzer for a given program using Lex Tool.
1. Start
2. Open the file input.c in read mode
3. If the file is not found . Display an error message
4. Else scan and analyse each component ch until the end of file
	* If ch is a keyword display "KEYWORD"
	* If ch is an identifier display "IDENTIFIER"
	* If ch is any arithmetic operator display "OPERATOR"
5. Close the file
6. Stop

## Exp 3 - Lex program to display the number of lines, words and characters
Aim: Write a lex program to display the number of lines, words and characters in an input text.
1. Start
2. Initialize line, word and ch variables
3. If a character is read, increment ch by 1
4. If space is read, increment word by 1
5. If `\n` is read, increment line by 1
6. Print all the variables as output
7. Stop

## Exp 4 - LEX Program to convert the substring abc to ABC
Aim: Write a LEX Program to convert the substring abc to ABC from the given input string.
1. Start
2. Read the input string
3. If string `abc` is found, print `ABC`
4. Else print the character as it is
5. Stop

## Exp 5 - Lex program to find the number of vowels and consonants
Aim: Write a lex program to find out total number of vowels and consonants from the given input sting.
1. Start
2. Read the input string
3. Scan the input text
4. Initialize variables vowel and conso
5. If characters `a|e|i|o|u` is encountered, increment vowel by 1
6. Else increment conso by 1
7. Do steps 5 and 6 until EOF is reached
8. Print the variables vowel and conso as output
9. Stop

<br>

# II. Implementation of Syntax analyzer.

## Exp 6 - Valid arithmetic expression
Aim: Generate a YACC specification to recognize a valid arithmetic expression that uses operators +, – , *,/ and parenthesis.
1. Start
2. Read the expression
3. Check the expression using the YACC rule to validate it
4. Using expression rule print the result of the given expression
5. Stop

## Exp 7 - Valid identifiers
Aim: Generate a YACC specification to recognize a valid identifier which starts with a letter followed by any number of letters or digits.
1. Start
2. Read a string
3. If string starts with a letter and rest of the characters are letters or digits, print "Valid Identifier"
4. Else, print "Invalid Identifier"
5. Stop

## Exp 8 - Calculator using LEX and YACC
Aim: Implementation of Calculator using LEX and YACC
1. Start
2. Created a lex file with the rules to create tokens.
	1. Contains include statements for standard input and output
	2. Contains yywrap() function which returns 1 at the end of the input
3. Created a yacc file containing declarations, rule sections and routines.
	1. Defined the global variables and the tokens used by the parser.
	2. Defines the rule that parse the input stream.
	3. Contains subroutines.
4. Main function to call the yyparse() function
5. Call the subroutine yyerror to find the syntax error if any.
6. Stop

## Exp 9 - BNF rules to YACC
Aim: Convert the BNF rules into YACC form and write code to generate abstract syntax tree.
1. Start
2. Read the input file
3. Convert it into abstract syntax tree using three address code
4. Represent three address code in tabular form
5. Stop

<br>

# III. Application problems using NFA and DFA.

## Exp 10 - ε–closure of NFA
Aim: Write a program to find ε – closure of all states of any given NFA with ε transition.
1. Start
2. Enter number of alphabets,alphabets,number of states,no of transitions and transitions.
3. For i = 0 to i < no of transitions , insert the transitions to the structure defined.
4. For i < no of states , find the closure
5. Display the epsilon closure
6. Stop

## Exp 11 - Conversion of ε–NFA to NFA
Aim: Write a program to convert NFA with ε transition to NFA without ε transition.
1. Start
2. Check if there is at least one path from initial state to one of the many possible accepting states which can be traversed only by null transitions. If so, add the initial state to the set of accepting states.
3. Now, choose two states in e-NFA (let's call them p and q) having null transitions between them.
4. Remove the null transition.
5. Any incoming transition to p is to be added as an incoming transition to q.
6. Repeat steps 3,4,5 for all the null transitions in the e-NFA.
7. Stop

## Exp 12 - Conversion of NFA to DFA
Aim: Write a program to convert NFA to DFA.
1. Start
2. Input the required array ie, set of alphabets, set of states, initial state, set of final states, transitions.
3. Initially Q' = ϕ
4. Add q0 of NFA to Q'. Then find the transitions from this start state.
5. In Q', find the possible set of states for each input symbol. If this set of states is not in Q', then add it to Q'.
6. In DFA, the final state will be all the states which contain F(final states of NFA)
7. Stop

## Exp 13 - Minimization of DFA
Aim: Write a program to minimize any given DFA.
1. Start
2. Divide Q (set of states) into two sets. One set will contain all final states and the other set will contain non-final states. This partition is called P​0​.
3. Initialize k = 1
4. Find P​k​ by partitioning the different sets of P​k-1​. In each set of P​k-1​, we will take all possible pair of states. If two states of a set are distinguishable, we will split the sets into different sets in P​k​.
5. Stop when P​k​ = P​k-1​ (No change in partition)
6. All states of one set are merged into one. No. of states in minimized DFA will be equal to no. of sets in P​k​.
7. Stop

## Exp 14 - First and Follow of grammar
Aim: Write a program to find First and Follow of any given grammar.
1. Start
2. Calculating first, α → t β
3. if α is a terminal, then FIRST(α) = { α }.
4. if α is a non-terminal and α → ℇ is a production, then FIRST(α) = { ℇ }.
5. if α is a non-terminal and α → 𝜸1 𝜸2 𝜸3 … 𝜸n and any FIRST(𝜸) contains t then t is in FIRST(α).
6. Calculating follow,
7. if α is a start symbol, then FOLLOW() = $
8. if α is a non-terminal and has a production α → AB, then FIRST(B) is in FOLLOW(A) except ℇ.
9. if α is a non-terminal and has a production α → AB, where B ℇ, then FOLLOW(A) is in FOLLOW(α).
10. Stop

<br>

# IV. Implement Top-Down Parser.

## Exp 15 - Recursive descent parser
Aim: Design and implement a recursive descent parser for a given grammar.
1. Start
2. Input the expression
3. Grammar without left recursion is added to the program
4. The grammar which had been given already is substituted with the right productions until the input expression is developed.
5. Stop

<br>

# V. Implement Bottom-up parser.

## Exp 16 - Shift Reduce Parser
Aim: Construct a Shift Reduce Parser for a given language.
1. Start
2. Get the input expression and store it in the input buffer.
3. Read the data from the input buffer one at the time
4. Using stack and push & pop operation shift and reduce symbols with respect to production rules available.
5. Continue the process till symbol shift and production rule reduce reaches the start symbol.
6. Display the Stack Implementation table with corresponding Stack actions with input symbols.
7. Stop

<br>

# VI. Simulation of code optimization Techniques.

## Exp 17 - Constant Propagation
Aim: Write a program to perform constant propagation.
1. Start
2. Construct a control flow graph (CFG).
3. Associate transfer functions with the edges of the CFG.
4. At every node (program point) we maintain the values of the program’s variables at that point. We initialize those to⊥.
5. Iterate until the values of the variables stabilize.
6. Stop

<br>

# VII. Implement Intermediate code generation for simple expressions.

## Exp 18 - Intermediate code generation
Aim: Implement Intermediate code generation for simple expressions.
1. Start
2. Open the input file in read mode.
3. Open the output file in write mode.
4. In input file scan for operator, argument1, argument2 and result.
5. If the operator is `+`
	* Move arg1 to R0
	* Add arg2 and R0
	* Move R0 to result
6. If the operator is `-`
	* Move arg1 to R0
	* Subtract arg2 and R0
	* Move R0 to result
7. If the operator is `*`
	* Move arg1 to R0
	* Multiply arg2 and R0
	* Move R0 to result
8. If the operator is `/`
	* Move arg1 to R0
	* Divide arg2 and R0
	* Move R0 to result
9. If the operator is `=`
	* Move arg1 to R0
	* Move R0 to result
10. Close both the files.
11. Stop

<br>

# VIII. Implement the back end of the compiler.

## Exp 19 - Back end of a compiler
Aim: Implement the back end of the compiler which takes the three address code and produces the 8086 assembly language instructions that can be assembled and run using an 8086 assembler. The target assembly instructions can be simple move, add, sub, jump etc.
1. Start
2. Open the source file and store the contents as quadruples.
3. Check for operators, in quadruples, if it is an arithmetic operator generator it or if assignment operator generates it, else perform unary minus on register C.
4. Write the generated code to output definition of the file.
5. Print the output.
6. Stop
