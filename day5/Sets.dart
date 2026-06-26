void main() {
  //Set - It Doesn Not Allow Duplicates

  Set<String> categories = {"Electronics", "Fashion", "Books", "Fashion"};

  print(categories);

  //Add Item
  categories.add("Kids");

  //Remove
  categories.remove("Books");

  print(categories);

  if (categories.contains("Travels")) {
    print("Travel Found");
  } else {
    print("Travel Not found");
  }

  //Convert The List into Set(Remove Duplicates)

  List<String> items = ["Apple", "Banana", "Apple"];

  print(items);

  Set<String> uniqueitem = items.toSet();

  print(uniqueitem);

  //Convert Set to List
  List<String> finalItem = uniqueitem.toList();
  print(finalItem);

  //Real Example - Notification

  Set<String> notification = {};

  notification.add("New Message- Whatsapp");
  notification.add("Swiggy Offer");
  notification.add("New Message- Whatsapp");
  notification.add("Gmail");

  print(notification);

  for (var abc in notification) {
    print(abc);
  }
}
