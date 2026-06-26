void main() {
  //Map : Collection of Data , key:value pair

  Map<String, String> user = {
    "name": "Aditya",

    "email": "Aditya@gmail.com",

    "course": "App Development",
  };

  Map<String, dynamic> userProfile = {
    "username": "Sai",

    "LoginStatus": true,
    "password": 12343,
  };

  //Acess The Data MapName["KeyName"]
  print(user["course"]);
  print(userProfile["LoginStatus"]);

  //Add The New Data - MapName["KeyName"] = Value

  userProfile["city"] = "Bangalore";

  print(userProfile);

  //Remove The Data - MapName.remove("KeyName")
  userProfile.remove("password");

  print(userProfile);

  //Update The existing Data
  userProfile["LoginStatus"] = false;

  print(userProfile);

  //Check The key MapName.contains("KeyName") - true or  false

  if (userProfile.containsKey("username")) {
    print("Username Present");
  } else {
    print("Username Not Found");
  }

  List<String> fruits = ["Apple", "Banana", "Apple"];

  print(fruits.length);

  
}
