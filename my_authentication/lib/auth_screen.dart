import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'home_screen.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final auth = FirebaseAuth.instance;
  //Firebase Authnetication Service Statrted
  final firestore = FirebaseFirestore.instance;
  //Firebase Firestore Service Started Database

  //SIGN UP
  void signUp() async {
    try {
      UserCredential user = await auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      //Save useer data to Firestore
      await firestore.collection('user').doc(user.user!.uid).set({
        'email': emailController.text,
        'createdAt': Timestamp.now(),
      });

      // print("User Created");
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("User Created Successfully")));

      //Navigation
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    } catch (e) {
      //  print(e);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error creating user")));
    }
  }

  //LOGIN

  void login() async {
    try {
      await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("User Logged In Successfully")));

      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error logging in")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebase Auth")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: signUp, child: Text("Sign Up")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: login, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
