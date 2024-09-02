//https://dart-tutorial.com/dart-functions/questions-for-practice-3/
//This is a answer for the questions in this page
import 'dart:io';

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

void main(List<String> args) {
  //Write a program in Dart to print your own name using function
  printName();

  //Write a program in Dart to print even numbers between intervals using function.
  print("Enter the start");
  int? num1 = int.parse(stdin.readLineSync()!);
  print("Enter the second");
  int? num2 = int.parse(stdin.readLineSync()!);
  printEvenNumbers(num1, num2);
}
