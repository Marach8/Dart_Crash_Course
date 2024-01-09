import 'package:collection/collection.dart';

void main(List<String> arguments) {
  print(newMap);
}

Map marach = {
  'name': 'Emmanuel',
  'age': 30,
  'sex': 'male',
  'position': 'Flutter developer'
};
final newMap = CanonicalizedMap.from(marach, (key) => key.length);