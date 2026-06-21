void main() {
  // for(start point ; ending/conditing point; incremnt++/decrement --)
  // start point and end point chose for loop

  //Print Numbers 1 to 10

  for (int i = 1; i <= 10; i++) {
    //Task
    print("The Numbers is $i");
  }

  //print numbers 10 to 1

  for (int y = 10; y >= 1; y--) {
    //Task
    print("The Number of y is $y");
  }

  //While Loop - Entry Controlled Loop - While Loop Start Condition is True and Stop when condition is false

  int count = 1;

  while (count <= 5) {
    print("Login Attempt $count");
    count++;
  }

  //Do While Loop - Exit COntrolled Loop

  // It will execute/Run The code atleast for 1 Time even tohconditon is false
  int number = 7;

  do {
    print("Welcome User");
  } while (number <= 5);

  //break - Stop The Loop

  for (int z = 1; z <= 5; z++) {
    if (z == 3) {
      print("Item Found");
      break; //Stop The Loop
    }

    print("Checkint Item No $z");
  }

  //conitnue = SKIP and Go Ahead

  for (int x = 1; x <= 5; x++) {
    if (x == 3) {
      continue;
    }

    print("Show Item $x");
  }

  //Task : Check Numbers from 1 to 10 , AND Print Even or Odd

  for (int num = 1; num <= 10; num++) {
    //Logic - Any Number % 2 == 0 ->Even

    if (num % 2 == 0) {
      print("Even Number is $num");
    } else {
      print("Odd Number is $num");
    }
  }

  //Print The Sum of Numbers from 1 to 5
}
