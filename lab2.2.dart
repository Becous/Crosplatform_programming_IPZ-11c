import 'dart:io';
import 'dart:math';

class Calc{
  int height;
  int radius;

  Calc(this.height, this.radius);

  double calcCube(){
    return pow(height, 3).toDouble();
  }

  double calcBall(){
    return (4/3)*3.14*pow(radius, 3);
  }

  double calcCylinder(){
    return 3.14*pow(radius, 2)*height;
  }
}

void main(){
  print("Введіть висоту/сторону: ");
  int height = int.parse(stdin.readLineSync()!);
  print("Введіть радіус: ");
  int radius = int.parse(stdin.readLineSync()!);

  var Calculator = Calc(height, radius);

  var cube = Calculator.calcCube();
  var ball = Calculator.calcBall();
  var cylinder = Calculator.calcCylinder();

  print("""
  Об'єм куба: $cube;
  Об'єм кулі: $ball;
  Об'єм циліндра: $cylinder;
  """);
}