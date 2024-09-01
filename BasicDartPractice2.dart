//https://dart-tutorial.com/conditions-and-loops/questions-for-practice-2/
//This is a answer for the questions in this page

import 'dart:io';

void main(List<String> args) {
  //Write a dart program to check if the number is odd or even.
  print("Enter a number");
  //added a error handling try,catch
  //so Instead of the program crashing, the user is informed that their input was invalid and prompted to try again.
  try {
    int? num = int.parse(stdin.readLineSync()!);
    if (num % 2 == 0) {
      print("$num is an even number");
    } else {
      print("$num is an odd number");
    }
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
  }
  //Write a dart program to check whether a character is a vowel or consonant.
  print('Enter a single character: ');
  String char = stdin.readLineSync()!.toLowerCase();

  if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
    print('$char is a vowel.');
  } else {
    print('$char is a consonant.');
  }

  //Write a dart program to check whether a number is positive, negative, or zero.
  print("Enter a number ");
  int? numy = int.parse(stdin.readLineSync()!);
  if (numy == 0) {
    print("This number is zero");
  } else if (numy > 0) {
    print("This number is positive");
  } else {
    print("This number is negative");
  }
  //Write a dart program to print your name 100 times.
  for (var i = 0; i < 100; i++) {
    print("Your name");
  }
  //Write a dart program to calculate the sum of natural numbers.
  print("Enter a positive integer:");
  int? n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print("Please enter a positive integer.");
  } else {
    int sum = 0;

    for (int i = 1; i <= n; i++) {
      sum += i;
    }
    print("The sum of natural numbers up to $n is: $sum");
  }
  //Write a dart program to generate multiplication tables of 5.
  print("Multiplication table for 5:");
  for (var i = 1; i <= 10; i++) {
    int mult = i * 5;
    print("$i * 5 = $mult");
  }

  print("\n");
  //Write a dart program to generate multiplication tables of 1-9.
  print("Multiplication tables for numbers 1 to 9:");
  for (var j = 1; j <= 9; j++) {
    print("Multiplication table for $j:");
    for (var i = 1; i <= 10; i++) {
      int mult = i * j;
      print("$i * $j = $mult");
    }
    print("\n");
  }
  //Write a dart program to create a
  //simple calculator
  //that performs addition, subtraction, multiplication, and division.
  print("Enter one of this sign (+,-,*,/)");
}
