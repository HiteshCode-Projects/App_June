//Operators - Help us To do Actions

void main() {
  //1. Arthmetic Operators - + , - , / , * , %

  int price = 100;
  int qty = 2;

  int TotalBill = price * qty;
  print("The Total Bill is $TotalBill");

  //  % - Output Remainder
  print(10 % 2); //0

  print(13 % 2); //1

  print(1 % 3);

  print(2 % 8);

  //4 % 2 == 0 - Even

  // 5 % 2  == Non Zero - Odd

  // 2 . Relation Operators/Compariosn Op

  var a = 10;


  var b = 5;

  bool result = a > b;
  print(result);

  double balance = 800.00;

  bool canPay = balance >= 800;
  print(canPay);
}
