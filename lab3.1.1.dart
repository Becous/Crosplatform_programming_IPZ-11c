import 'dart:io';
import 'dart:math';

void main(){
  int point = int.parse(stdin.readLineSync()!);
  if(point >= 90 && point <= 100){
    print("Відмінно");
  }else if(point >= 70 && point <= 89){
    print("Добре");
  }else if(point > 0 && point < 70){
    print("Незадовільно");
  }else{
    print("Введено неправильне значення!");
  }
}