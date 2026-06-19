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

  var x = 10;
  var y = 10;

  print(x == y);

  //Logical Operator
  // AND - && - When Both Condition is True Output is True
  // OR - || - When atleast one Conditon is True Then OutPut is True
  // ! - Opp Value

  bool isLoggedIn = true;

  bool hasSubscription = false;

  bool canWatchMovie = isLoggedIn && hasSubscription;

  print("Can Watch Movie $canWatchMovie");

  bool isAdmin = true;

  bool ismoderator = false;

  bool canDelete = isAdmin || ismoderator;
  print(canDelete);

  //Assiggment Operator
  int score = 10;

  score += 5;
  print(score);

  //Ternary Operators - Decison /Conditoon in One Line

  bool isLogin = true;

  String message = isLogin ? "Welcome Good Morning" : "Please Login";
  print(message);

  // Null - Aware Opetator ??
  // When Data Maybe Empty

  String? name;

  String displayName = name ?? "Guest";
  print(displayName);

  
}
