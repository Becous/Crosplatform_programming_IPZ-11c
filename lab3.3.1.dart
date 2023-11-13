void main(){
  List<int> numbers = [4,124,565,1253,12,5,8];

  Verkh(numbers);
  Nyz(numbers);
}

void Verkh(List<int> nonSorted){
  nonSorted.sort();
  print(nonSorted);
}

void Nyz(List<int> nonSorted){
  nonSorted.sort((a, b) => b.compareTo(a));
  print(nonSorted);
}