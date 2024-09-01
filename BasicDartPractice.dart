//https://dart-tutorial.com/introduction-and-basics/questions-for-practice-1/
//This is a answer for the questions in this page
//my_try_to_learn_Darttttyyy;

import 'dart:io';

void main(List<String> args) {
  //Write a program to print your name in Dart.
  print('Your name');
  //Write a program to print Hello I am “John Doe” and Hello I’am “John Doe” with single and double quotes.
  print('Hello I am "Your name"');
  print("Hello I am 'Your name' ");
  //Declare constant type of int set value 7.
  int x = 7;
  print('x = $x');
  //Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100
  print('Enter the principal amount (P):');
  int? p = int.parse(stdin.readLineSync()!);
  print('Enter the time period in years (T):');
  int? t = int.parse(stdin.readLineSync()!);
  print('Enter the rate of interest (R):');
  int? r = int.parse(stdin.readLineSync()!);

  double SimpleInterest = (p * t * r) / 100;
  print('The Simple Interest is: $SimpleInterest');

  //Write a program to print a square of a number using user input.
  print('Enter number:');
  int? n = int.parse(stdin.readLineSync()!);
  print(n * n);
  //Write a program to print full name of a from first name and last name using user input.
  print("Enter your full name?");
  String? name = stdin.readLineSync();
  print("Hello, ${name}!");
  //Write a program to find quotient and remainder of two integers.
  print('Enter first number:');
  int? A = int.parse(stdin.readLineSync()!);
  print('Enter second number:');
  int? B = int.parse(stdin.readLineSync()!);
  double Quotient = A / B;
  int Remainder = A % B;
  print('Quotient <A/B> = $Quotient');
  print('Remainder <A%B> = $Remainder');
  //Write a program to swap two numbers.
  print('Enter first number:');
  int? Q = int.parse(stdin.readLineSync()!);
  print('Enter second number:');
  int? T = int.parse(stdin.readLineSync()!);
  print('First number before swap = $Q');
  print('Second number before swap = $T');
  int Temp = Q;
  Q = T;
  T = Temp;
  print('First number after swap = $Q');
  print('Second number after swap = $T');
  //Write a program in Dart to remove all whitespaces from String.

  /*
  Error: Method 'replaceAll' cannot be called on 'String?' because it is potentially null.
Try calling using ?. instead.
as
String? StrWithwhitespaces = stdin.readLineSync();
  print(StrWithwhitespaces?.replaceAll(RegExp(r"\s+"), ""));
  as this doesn't handle null input safely
  added 
  -StrWithwhitespaces?.replaceAll(RegExp(r"\s+"), "") will only attempt to replace the whitespace if StrWithwhitespaces is not null.
  -If StrWithwhitespaces is null, the ?? "No input provided" part will provide a fallback message.
  like this example 
  */
  //example
  print("✨🔷The example in website🔷✨");
  String text =
      "I am a good boy I like milk. Doctor says milk is good for health.";
  String newText = text.replaceAll("milk", "water");
  print("Original Text: $text");
  print("Replaced Text: $newText");
  //answer
  print("Enter a string");
  String? StrWithwhitespaces = stdin.readLineSync();
  print(StrWithwhitespaces?.replaceAll(RegExp(r"\s+"), "") ??
      "No input provided");

  //write a Dart program to convert String to int.
  //example
  print("✨🔷The example in website🔷✨");
  String strvalue = "1";
  print("Type of strvalue is ${strvalue.runtimeType}");
  int intvalue = int.parse(strvalue);
  print("Value of intvalue is $intvalue");
  // this will print data type
  print("Type of intvalue is ${intvalue.runtimeType}");
  //answer
  print("Enter an integer 'will be in string type'");
  String? ConveStrtoInt = stdin.readLineSync();
  int TheChange = int.tryParse(ConveStrtoInt ?? "") ?? 0;
  print("The string in integer type $TheChange");
  //Suppose, you often go to restaurant with friends and you have to split amount of bill. Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people.
  print('Enter total bill amount:');
  double? totalBill = double.tryParse(stdin.readLineSync() ?? "0");
  print('Enter number of people:');
  int? numberOfPeople = int.tryParse(stdin.readLineSync() ?? "1");
  if (totalBill != null && numberOfPeople != null && numberOfPeople > 0) {
    double splitAmount = totalBill / numberOfPeople;
    print('Each person should pay: \$${splitAmount.toStringAsFixed(2)}');
  } else {
    print('Invalid input. Please enter valid numbers.');
  }

//Suppose, your distance to office from home is 25 km and you travel 40 km per hour. Write a program to calculate time taken to reach office in minutes. Formula= (distance) / (speed).
  double distance = 25.0;
  double speed = 40.0;

  double timeInHours = distance / speed;

  double timeInMinutes = timeInHours * 60;

  print(
      'Time taken to reach office: ${timeInMinutes.toStringAsFixed(2)} minutes');
}
