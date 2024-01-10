void main(List<String> arguments) async{
  final name = getName().asyncExpand((event) => getCharacters(event));
  await for(final i in name) {print(i);}
}

Stream<String> getCharacters(String fromString) async*{
  for(var i = 0; i < fromString.length; i++){
    await Future.delayed(const Duration(seconds: 1));
    yield fromString[i];
  }
}

Stream<String> getName() async*{
  await Future.delayed(const Duration(milliseconds: 300));
  yield 'Emmanuel';
  await Future.delayed(const Duration(milliseconds: 300));
  yield 'Marach';
}