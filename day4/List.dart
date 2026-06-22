void main() {
  //Variable  Stores only 1 value at time
  var name1 = "ABhirami";
  var name2 = "Diksha";

  //List - Multiple Data at the same Time
  // symbol - []Sqaure Bracket
  // Rule - Index No(Postion No of Data) ALWAYS star with 0

  // List<Data Type> ListName = [];

  List<String> users = [
    "Abhirami",
    "Aditya",
    "Akul",
    "Mahidar",
    "Diksha",
    "Lucky",
    "Manya",
    "Monali",
    "Nandhana",
    "Sachin",
    "Sai",
    "Savita",
    "Shivesh",
    "Harshita",
  ];

  //Access The List data - ListName[IndexNo]
  print(users[1]);
  print(users[2]);
  print(users[10]);

  //Add The Data Listname.add("New Value")
  users.add("John");

  print(users);

  //Remove Listname.remove("Value")
  users.remove("Sachin");

  print(users);

  //Total No of Data
  // listname.length

  print(users.length);
}
