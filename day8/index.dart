// void main() {
//   print("App Started");

//   fetchData();

//   print("App Ready");
// }

// void fetchData() {
//   for (int i = 0; i < 100000000; i++) {}

//   print("Data Loaded");
// }

// Solution - Future - Result That will come later

// Future<String> fetchData() {
//   return Future.delayed(Duration(seconds: 5), () => "Data Loaded");
// }

// //Async and Await

// Future<void> main() async {
//   print("App Started");

//   String results = await fetchData();
//   print(results);

//   print("App Ready");
// }

Future<bool> loginUser(String username, String password) {
  return Future.delayed(
    Duration(seconds: 2),

    () => username == "admin" && password == "1234",
  );
}

Future<void> main() async {
  print("Logging In...");

  bool success = await loginUser("admin", "1234");

  if (success) {
    print("Login Succesfull");
  } else {
    print("Login Failed");
  }
}
