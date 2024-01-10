void main(List<String> arguments) {
  final name = 10.to(1);
  print(name);
}

extension on int{
  Iterable<int> to(int end, {bool included = true}) => 
    end > this ? [for(int i = this; i < end; i++) i, if(included) end] 
    : [for(int i = this; i > end; i--) i, if(included) end];
}