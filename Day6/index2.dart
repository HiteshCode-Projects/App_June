class User {
  String name = "";



  void greet() {
    print("Hello , Good Morning $name");
  }
}

void main() {
  User abc = User();
  abc.name = "Lucky";

  //objectName.methodName
  abc.greet();

  User xyz = User();
  xyz.name = "Sai";
  xyz.greet();
}
