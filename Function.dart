//Function

//Function Parameters Vs Arguments
// Here num1 and num2 are parameters
void add(int num1, int num2) {
  int sum;
  sum = num1 + num2;

  print("The sum is $sum");
}

void printName() {
  print("My name is Starry");
}

void printN(String name) {
  print("Welcome, ${name}.");
}

void main() {
// Here 10 and 20 are arguments
  add(10, 20);
  //Example 1: No parameter and No Return Type
  printName();
  //Example 2: Parameter And No Return Type
  printN("John");
  
}
/*
 -Here in add(int num1, int num2), num1 and num2 are parameters and in add(10, 20), 10 and 20 are arguments.
 -Parameter is the name and data type you define as an input for your function.
 -Argument is the actual value that you passed in.

*/
                            //Types of Function
/*
 -No Parameter And No Return Type
 -Parameter And No Return Type
 -No Parameter And Return Type
 -Parameter And Return Type
*/
