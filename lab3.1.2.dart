import 'dart:io';

void main(){
  double amount = double.parse(stdin.readLineSync()!);
  double percentage = double.parse(stdin.readLineSync()!);

  double totalPrice = amount - ( amount * (percentage / 100));

  if(totalPrice >= 0){
    print("Файно, за товар вартістю \$${amount.toStringAsFixed(2)}, "
        "за допомогою знижки \$${percentage.toStringAsFixed(0)}%"
        " ви заплатите всього \$${totalPrice.toStringAsFixed(2)}.");
  }else{
    print("Така знижка існувати не може");
  }

}