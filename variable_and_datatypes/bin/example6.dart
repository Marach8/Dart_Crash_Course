void main(List<String> arguments) {
  final map = map1 - map2;
  print(map);
}

//This extension overloads the + on Maps to add them together
extension AddMaps<A, B> on Map<A, B>{
  Map<A, B> operator +(Map<A, B> other) => {...this, ...other};
}

//This extension overloads the - on Maps to subtract one from another
extension SubtractMap<C, D> on Map<C, D> {
  Map<C, D> operator -(Map<C, D> other) {
    if(other.isNotEmpty){
      //this return statement and the return statement commented out below perform the same operation
      return {...this}..removeWhere((key, value) => other.containsKey(key) && other[key] == value);
      // return Map.fromEntries(entries.where((entry) => !other.entries.any((entry1) 
      //   => entry.key == entry1.key && entry.value == entry1.value))
      // );
    } else {
      print('I fall here');
      return this;
    }
  }
}

Map map1 = {
  'name': 'Emmanuel',
  'age': 46,
  'title': 'Kingship'
};

Map map2 = {
  'name': 'Emmanuel',
  'class': '500L',
  'department': 'ECE',
  'age': 46
};