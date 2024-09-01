void main() {
  //Example 1: Print Each Item Of List Using Foreach
  List<String> footballplayers = ['Ronaldo', 'Messi', 'Neymar', 'Hazard'];
  footballplayers.forEach((names) => print(names));
  footballplayers
      .asMap()
      .forEach((index, value) => print("$value index is $index"));
  //Print Each Total and Average Of Lists
  List<int> numbers = [1, 2, 3, 4, 5];

  int total = 0;

  numbers.forEach((num) => total = total + num);

  print("Total is $total.");

  double avg = total / (numbers.length);

  print("Average is $avg.");
  //For In Loop In
  List<String> footbaplayers = ['Ronaldo', 'Messi', 'Neymar', 'Hazard'];

  for (String player in footbaplayers) {
    print(player);
  }
}
