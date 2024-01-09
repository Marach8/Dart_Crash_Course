void main(List<String> arguments) {
  final amarachi = Amarachi();
  amarachi.printSurname(surname: 'Ajah Emmanuel Nnanna');
}

mixin Marach{
  abstract String name;
}


mixin Emmanuel on Marach{
  void printName({required String name}){
    print('The name of Emmanue is $name');
    this.name = name;
  }
}

mixin Nnanna on Marach{
  void printSurname({required String surname}){
    print('The surname of this guy is $surname');
    name = surname;
  }
}


class Amarachi with Marach, Emmanuel, Nnanna{
  @override
  String name;
  Amarachi(): name = 'Marach';
}