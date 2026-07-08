class User {
  //Parent Class
  String name;

  User(this.name);

  void login() {
    print("$name Logged In");
  }
}

class Admin extends User {
  Admin(String name) : super(name);

  void deleteUser() {
    print("User Deleted");
  }
} //Child class

class Customer extends User {
  Customer(String name) : super(name);

  void placeOrder() {
    print("Order Placed");
  }
}

void main() {
  //Object

  Admin user1 = Admin("Lucky");

  user1.login();

  user1.deleteUser();

  //Customer class Object
  Customer user2 = Customer("Sai");

  user2.login();
  user2.placeOrder();
  
}
