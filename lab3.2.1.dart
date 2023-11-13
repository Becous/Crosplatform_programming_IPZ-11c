import 'dart:io';

void main(){
  int number = int.parse(stdin.readLineSync()!);
  double result = 1;
  for(int i = 1; i <= number; i++){
    result  = result * i;
    print(result.toStringAsFixed(0));
  }

}