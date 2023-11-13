class BankAccount {
  int accountNumber;
  String accountOwner;
  double balance;

  BankAccount(this.accountNumber, this.accountOwner, this.balance);

  void printBalance(){
    print("""
    Вітаю $accountOwner,
    на вашому рахунку №$accountNumber така ксть грошей: $balance.""");
  }

  void witchdrawal(double amount) {
    if(amount > 0 && amount <= balance){
      balance -= amount;
      print("Звашого рахунку знято $amount\nВаш поточний баланс:$balance");
    }else{
      print('Недостатньо грошей для зняття!');
    }
  }

  void replenishment(double amount){
    if(amount > 0){
      balance += amount;
      print("Ващ рахунок поповнено на $amount\nВаш поточний баланс:$balance");
    }else{
      print('Ти як закинути 0 зібрався?');
    }
  }

}

void main(){
  var Account_1 = BankAccount(1, "Васильєв Василь Васильович", 1000.06);

  Account_1.printBalance();
  Account_1.witchdrawal(200);
  Account_1.witchdrawal(10000);
  Account_1.replenishment(20000);
  Account_1.replenishment(0);
}