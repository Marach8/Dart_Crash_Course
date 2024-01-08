
void main(List<String> arguments) {
  print(listOfEvenNumbers);
  print(list);
}


final listOfNumbers = Iterable.generate(100);
final listOfEvenNumbers = [
  for(final num in listOfNumbers)
    if (num % 2 == 0) num  
];

final list = listOfNumbers.where((number) => number % 2 == 0);
