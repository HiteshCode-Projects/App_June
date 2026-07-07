// class - BluePrint

class User {
  String name = "";
  int age = 0;
}

void main() {
  //Object - Real Things - As Many Object You want
  // Object can access Class Things
  // ClassName ObjectName = ClassName();

  User user1 = User();

  user1.name = "Aditya";
  user1.age = 21;

  print(user1.name);

  User user2 = User();
  user2.name = "Dhisha";

  print(user2.name);
}
