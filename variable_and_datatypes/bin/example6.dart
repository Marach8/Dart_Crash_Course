void main(List<String> arguments) {
  final map = map1 *3;
  print(map);
}


extension OperationOnMaps<A, B> on Map<A, B>{
  //This extension overloads the + on Maps to add them together
  Map<A, B> operator +(Map<A, B> other) => {...this, ...other};

  //This extension overloads the - on Maps to subtract one from another
  Map<A, B> operator -(Map<A, B> other) {
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


  Iterable<Map<A, B>>operator *(int index) sync*{
    for (int i = 0; i < index; i++){yield this;}
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