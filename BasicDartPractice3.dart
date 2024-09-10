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

}
