void main(){
  for(int i = 2;  i <= 100; i++){
    if(ifSimple(i)){
      print('Число $i просте');
    }else{
      print("Число $i складне");
    }
  }
}

bool ifSimple(int num){
  if(num <= 1){
    return false;
  }
  if(num <= 3){
    return true;
  }
  if (num % 2 == 0 || num % 3 == 0) {
    return false;
  }
  for (int i = 5; i * i <= num; i += 6) {
    if (num % i == 0 || num % (i + 2) == 0) {
      return false;
    }
  }
  return true;
}