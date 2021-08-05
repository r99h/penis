import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Calc.nachalo;
  Calc.penis;
}

class Calc {
  double? num1;
  double? num2;
  Calc(double firstNum, double secondNum) {
    double num1 = firstNum;
    double num2 = secondNum;
  }

  double add(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }

  double subtract(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }

  double multiply(double firstNum, double secondNum) {
    return firstNum * secondNum;
  }

  double divide(double firstNum, double secondNum) {
    return firstNum / secondNum;
  }

  double divide2(double firstNum, double secondNum) {
    return firstNum % secondNum;
  }

  double expontentiate(double firstNum, double secondNum) {
    double expProd = pow(firstNum, secondNum).toDouble();
    return expProd;
  }

  void backToMainMenu() {
    print('Вернуться в меню...');
    nachalo();
  }

  void nachalo() {
    print(
        'Здарова, это мой калькулятор, я Дима.\nПиши первую цифру, чел!\nЕсли хочешь выйти, то пиши exit.');
    String? firstInput =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
    firstInput = firstInput;
    double firstNum = 0.0;

    if (firstInput == 'exit') {
      exit(0);
    } else {
      firstNum = double.parse(firstInput!);
    }
    print('Так, ну теперь пиши вторую');
    String? secondInput =
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
    secondInput = secondInput;
    double secondNum = 0.0;
    if (secondInput == 'exit') {
      exit(0);
    } else {
      secondNum = double.parse(secondInput!);
    }
    print(
        'Теперь пиши че с цифрами делать надо, умник в калькуляторе.\nЕсли сложить, то +\nЕсли вычесть, то -\nЕсли умножить, то *\nЕсли разделить, то /\nЕсли разделить с модулем, то %');

    void penis() {
      String? operator =
          stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
      operator = operator;
      switch (operator) {
        case '+':
          print('$num1 плюс $num2 равно = ${add(firstNum, secondNum)}');
          backToMainMenu();
          break;
        case '-':
          print('$num1 минус $num2 равно = ${subtract(firstNum, secondNum)}');
          backToMainMenu();
          break;
        case '*':
          print(
              '$num1 умножить $num2 равно = ${multiply(firstNum, secondNum)}');
          backToMainMenu();
          break;
        case '/':
          print(
              '$num1 разделить by $num2 равно = ${divide(firstNum, secondNum)}');
          backToMainMenu();
          break;
        case '%':
          print(
              '$num1 разделить по модулю $num2 равно = ${divide2(firstNum, secondNum)}');
          backToMainMenu();
          break;
        case 'выход':
          exit(0);
          break;
        default:
          print('Не распознано');
          backToMainMenu();
          break;
      }
    }
  }
}
