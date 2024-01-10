void main(List<String> arguments) async{
  // await for(final i in getNumbers()){
  //   print(i);
  // }
  await for(final marach in getStream()){print(marach);}
}

// Stream<int> getNumbers() async*{
//   for(int i = 0; i < 10; i++){
//     await Future.delayed(const Duration(seconds: 1));
//     yield i;
//   }
// }

Stream<int> getStream() => Stream.periodic(const Duration(seconds: 1), (value) => value).take(20);