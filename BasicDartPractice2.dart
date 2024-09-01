//https://dart-tutorial.com/conditions-and-loops/questions-for-practice-2/
//This is a answer for the questions in this page

import 'dart:ffi';
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
  

}
