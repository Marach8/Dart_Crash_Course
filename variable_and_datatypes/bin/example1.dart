void main(List<String> arguments) {
  print(getFullName('Emmanuel', 'Nnanna'));
}

String getFullName(String? surname, String? lastName) 
    => withAll([surname, lastName], (names) => names.join(' ')) ?? 'Empty';

T? withAll<T>(List<T?> optionals, T Function(List<T>) callback){
  return optionals.any((element) => element == null) ? null: callback(optionals.cast<T>());
}