import 'dart:io';

void main() {
  Calculator calc = Calculator();
  calc.printValues();
}

class Calculator {
  var num;
  String addition(int num1, int num2) {
    num = num1 + num2;
    return "the answer is $num";
  }

  String subtraction(int num1, int num2) {
    num = num1 - num2;
    return "the answer is $num";
  }

  String multiplication(int num1, int num2) {
    num = num1 * num2;
    return "the answer is $num";
  }

  String division(int num1, int num2) {
    num = num1 ~/ num2;
    return "the answer is $num";
  }

  void printValues() {
      print("Enter first operand:");
    int firstValue = int.parse(stdin.readLineSync().toString());
    while (firstValue != 0) {
      print("Enter operation:");
      String? code = stdin.readLineSync();
      print("Enter second operand:");
      int secondValue = int.parse(stdin.readLineSync().toString());
      switch (code) {
        case '+':
          print(addition(firstValue, secondValue));
          break;
        case '-':
          print(subtraction(firstValue, secondValue));
          break;
        case '*':
          print(multiplication(firstValue, secondValue));
          break;
        case '/':
          print(division(firstValue, secondValue));
          break;
      }
      print("enter first operand:");
      firstValue = int.parse(stdin.readLineSync().toString());
    }
  }
}
