//class with constructor - Specail Method/Function Having The Same Name as ClassName

class User {
  String name;
  int age;

  User( this.name, this.age); //Constructor
}

void main() {
  User pqr = User("John", 21);

  print(pqr.name);
}
