import 'package:flutter/material.dart';

void main() {
  runApp(DialogDemoApp());
}

class DialogDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DemoScren());
  }
}

class DemoScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialogs Demo")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            //SnackBar-Bottom
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Product Added To Cart"),
                    action: SnackBarAction(
                      label: "UNDO",
                      onPressed: () {
                        print("Undo Clicked");
                      },
                    ),
                  ),
                );
              },
              child: Text("Add To Cart"),
            ),

            SizedBox(height: 20),

            //AlertDialog-Center
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Logout"),

                      content: Text("Do You Want To Logout?"),

                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancel"),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Logout"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Show Alert"),
            ),

            //BottomSheet Button - Menu From Bottom
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: EdgeInsets.all(20),

                      height: 200,

                      child: Column(
                        children: [
                          Text("Options"),

                          ListTile(
                            onTap: () {
                              print("Gmail Clicked");
                            },
                            leading: Icon(Icons.mail),
                            title: Text("Gmail"),
                          ),

                          ListTile(
                            leading: Icon(Icons.message),
                            title: Text("Message"),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text("show BottomSheet"),
            ),
          ],
        ),
      ),
    );
  }
}
