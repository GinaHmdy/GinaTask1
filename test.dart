import 'dart:io';

void main() {
  dynamic num;
  Calculator calc = Calculator();

    print("Enter first operand or Enter 0 to exit:" );
    int firstValue = int.parse(stdin.readLineSync().toString());
    while (firstValue != 0) {
    print("Enter operation:");
    String? code = stdin.readLineSync();
    print("Enter second operand:");
    int secondValue = int.parse(stdin.readLineSync().toString());
    switch (code) {
      case '+':
        num = calc.addition(firstValue, secondValue);
        print("The answer is $num");
        break;
      case '-':
        num = calc.subtraction(firstValue, secondValue);
        print("The answer is $num");
        break;
      case '*':
       num = calc.multiplication(firstValue, secondValue);
        print("The answer is $num");
        break;
      case '/':
       num = calc.division(firstValue, secondValue);
        print("The answer is $num");
        break;
    }
    print("enter first operand:");
    firstValue = int.parse(stdin.readLineSync().toString());
  }
}

class Calculator {
  
  int addition(int num1, int num2) => num1 + num2;

  int subtraction(int num1, int num2) => num1 - num2;

  int multiplication(int num1, int num2) => num1 * num2;

  int division(int num1, int num2) => num1 ~/ num2;
}
