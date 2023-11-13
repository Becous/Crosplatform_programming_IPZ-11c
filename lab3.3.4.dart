void main() {
  List<int> numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

  double average = numbers.reduce((a, b) => a + b) / numbers.length;

  List<int> filteredNumbers = numbers.where((number) => number > average).toList();

  print("Середнє значення: $average");
  print("Числа більше за середнє значення: $filteredNumbers");
}
