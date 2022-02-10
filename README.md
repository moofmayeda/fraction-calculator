# Fraction Calculator
The Fraction Calculator is a command-line program that takes operations on fractions as an input and produces a fractional result. 

Rules:
* Legal operators are \*, /, +, - (multiply, divide, add, subtract)
* Operands and operators are separated by one or more spaces
* Mixed numbers are represented by whole_numerator/denominator. e.g. "3_1/4"
* Improper fractions and whole numbers are also allowed as operands 

### Examples
1/2 * 3_3/4
= 1_7/8 

2_3/8 + 9/8
= 3_1/2

Order of operations is respected, for example:

1 + 2 / 3
= 1_2/3

Negative input and output is also acceptable:

-1/3 * -2/3
= 2/9
1/3 - 1_5/6
= -1_1/2

### To run this Ruby app
Run `ruby fraction_calculator.rb`

### To run tests
`gem install rspec` to install the test framework

`rspec`to run all tests

### Known issues and future work 
Currently, the user gets a generic error message for any invalid input. It could be useful to provide more specific error messages.
