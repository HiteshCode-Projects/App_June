import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

//Design a Profile
class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Profile")),

        body: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 152, 210, 238),
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              //One Below each Other
              mainAxisSize: MainAxisSize.min,

              children: [
                Text(
                  "Shivesh",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                //Add Extra Space
                Text("App Developer"),
                SizedBox(height: 10),
                Text("India"),
                TextButton(
                  onPressed: () {
                    print("Button Cliked");
                  },
                  child: Text("Linkdln"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
