# Fraction Calculator
The Fraction Calculator is a command-line program that takes operations on fractions as an input and produces a fractional result. 

Rules:
Legal operators are \*, /, +, - (multiply, divide, add, subtract)
Operands and operators are separated by one or more spaces
Mixed numbers are represented by whole_numerator/denominator. e.g. "3_1/4"
Improper fractions and whole numbers are also allowed as operands 

Example run:
? 1/2 * 3_3/4
= 1_7/8 

?2_3/8 + 9/8
= 3_1/2

### To run this Ruby app
Run `ruby fraction_calculator.rb`

### To run tests
`gem install rspec` to install the test framework
`rspec`

### Known issues and future work 
1. 