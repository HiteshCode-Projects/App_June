class User {
  String username;
  String passowrd;

  User(this.username, this.passowrd);

  bool login() {
    return username == "admin" && passowrd == "1234";
  }
}

void main() {
  User user = User("admin", "1234");

  if (user.login()) {
    print("Login Successfull");
  } else {
    print("Login Failed");
  }
}
