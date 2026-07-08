class User {
  void login() {
    print("User Logged In");
  }
}

class Admin extends User {

  @override
  void login() {
    print("Admin Logged In with Full Access");
  }
}

void main() {
  //Method Overiding - Same method Name of child class as The Parent Class

  Admin user3 = Admin();
  user3.login();
}
