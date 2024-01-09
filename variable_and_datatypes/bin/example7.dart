void main(List<String> arguments) {
  final marach = Marach(age: 20);
  print (marach + 20);
}

class Marach{
  final int age;

  Marach({required this.age});

  Marach operator +(int number) => Marach(age: age + number);

  @override 
  String toString() => 'Your age is $age';
}