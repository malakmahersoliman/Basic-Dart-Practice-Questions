//https://dart-tutorial.com/dart-functions/questions-for-practice-3/
//This is a answer for the questions in this page

import 'dart:io';
import 'dart:math';

void printName() {
  print("Your name");
}

void printEvenNumbers(int start, int end) {
  for (int num = start; num <= end; num++) {
    if (num % 2 == 0) {
      print(num);
    }
  }
}

void greet(String? name) {
  if (name != null && name.isNotEmpty) {
    print("Hello, $name!");
  } else {
    print("Hello, Stranger!");
  }
}

void generatePassword() {
  final random = Random();
  final characters =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+';
  String password = '';
  for (int i = 0; i < 12; i++) {
    password += characters[random.nextInt(characters.length)];
  }
  print(password);
}

void areaOfacircle(int r) {
  const pi = 3.14;
  double area = pi * r * r;
  print("The area of cricle = $area");
}

void reverseStr(String? str) {
  String? reversedstr =
      str?.split('').reversed.join('') ?? 'The String is empty';
  print(reversedstr);
}

double? powerOfnumber(double? num, double? pow) {
  if (pow == 0) {
    return 1;
  }
  return num! * powerOfnumber(num, pow! - 1)!;
}

int? add(int? a, int? b) {
  int? sum = a! + b!;
  return sum;
}

int? MaxNumber(int? nF, int? nS, int? nT) {
  if (nF != null && nS != null && nT != null) {
    if (nF > nS && nF > nT) {
      return nF;
    } else if (nS > nF && nS > nT) {
      return nS;
    } else if (nT > nF && nT > nS) {
      return nT;
    }
  }
}

void main(List<String> args) {
  //Write a program in Dart to print your own name using function
  printName();

  //Write a program in Dart to print even numbers between intervals using function.
  print("Enter the start:");
  int? num1 = int.parse(stdin.readLineSync()!);
  print("Enter the End:");
  int? num2 = int.parse(stdin.readLineSync()!);
  printEvenNumbers(num1, num2);

  //Create a function called greet that takes a name as an
  //argument and prints a greeting message. For example,
  // greet(“John”) should print “Hello, John”.
  print("Enter Your name:");
  String? name = stdin.readLineSync();
  greet(name);
  //Write a program in Dart that generates random password.
  generatePassword();
  //Write a program in Dart that find the area of a circle using function.
  //Formula: pi * r * r
  print("Enter the radius");
  int? radius = int.parse(stdin.readLineSync()!);
  areaOfacircle(radius);
  //Write a program in Dart to reverse a String using function.
  print("Enter string:");
  String? sent = stdin.readLineSync();
  reverseStr(sent);
  //Write a program in Dart to calculate power of a certain number. For e.g 5^3=125
  print("Enter the number");
  double? number = double.parse(stdin.readLineSync()!);
  print("Enter the power ");
  double? power = double.parse(stdin.readLineSync()!);
  print(powerOfnumber(number, power));
  //Write a function in Dart named add that takes two numbers as arguments and returns their sum.
  print("Enter the first number:");
  int? firstNum = int.parse(stdin.readLineSync()!);
  print("Enter the Second number:");
  int? SecondNum = int.parse(stdin.readLineSync()!);
  print("The sum :");
  print(add(firstNum, SecondNum));
  //Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.
  print("Enter the first number:");
  int? nF = int.parse(stdin.readLineSync()!);
  print("Enter the Second number:");
  int? nS = int.parse(stdin.readLineSync()!);
  print("Enter the Third number:");
  int? nT = int.parse(stdin.readLineSync()!);
  int? maxNum = MaxNumber(nF, nS, nT);
  if (maxNum != null) {
    print("The largest number = $maxNum");
  } else {
    print("One or more values are null");
  }
  //Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.
}
