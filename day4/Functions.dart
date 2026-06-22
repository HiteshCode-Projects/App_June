void main() {
  //Function - To do a specific Task

  //1. Function

  void sayHello() {
    //Body - Instruction - Task
    print("Hello User");
  }

  sayHello(); //Calling The Function - start Doing The task

  //2. Function with Parametere (Parameter/Dummy Data)

  void greetUser(String name) {
    print("Welcome $name");
  }

  greetUser("Shivesh");
  greetUser("Harshita");

  //3 . Function with Return Value
  int calculateTotal(int price, int quanity) {
    return price * quanity;
  }

  int total = calculateTotal(100, 2);
  print(total);

  bool isAdult(int age) {
    return age >= 18;
  }

  bool result = isAdult(20);
  print(result);

  //4. Arrow function- Short and Clean- =>

  int add(int a, int b) => a + b;

  print(add(5, 3));

  //5. Optional Parameter- Data is Not always Needed

  void showProfile(String name, [int? age]) {
    print("Name is $name");

    if (age != null) {
      print("Age $age");
    }
  }

  showProfile("Aditya");

  //Default Parameter ({Parameter in The curly Bracket})

  void setTheme({String theme = "Light"}) {
    print("Theme is $theme");
  }

  setTheme();

  setTheme(theme: "Dark");
}
