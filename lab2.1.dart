class Car{
  String model;
  String mark;
  int year_release;
  double engine_power;

  Car(
      this.model,
      this.mark,
      this.year_release,
      this.engine_power
      );

  double taksCalc(){
    var taks = engine_power*0.05;
    return taks;
  }

  void showAboutInfo(){
    double taks = taksCalc();
    String fixedTaks = taks.toStringAsFixed(2);
    print("""
    Модель машини: $model;
    Марка: $mark;
    Рік випуску: $year_release;
    Потужність живгуна: $engine_power;
    Податок: $fixedTaks;
    """);
  }
}

void main() {
  var Tesla = Car("Tesla model X", "Tesla", 2015, 611.3);
  var Zyga = Car("ВАЗ-2101", "Жигуль", 1970, 70);
  var Opel = Car("Opel Kadett C", "Opel", 1973, 85);

  Tesla.showAboutInfo();
  Zyga.showAboutInfo();
  Opel.showAboutInfo();
}

