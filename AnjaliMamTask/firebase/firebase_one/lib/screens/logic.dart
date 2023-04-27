
import "package:firebase_auth/firebase_auth.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_one/screens/screens/loginpage%20(1).dart';
import 'package:flutter/material.dart';


//for new user registeration
Future<User?> createAccount(String name, String email, String password) async {
  //firebase auth object
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  try {
    // User? user = (await _auth.createUserWithEmailAndPassword(
    //         email: email, password: password))
    //     .user;
    // if (user != null) {
    //   print("Account created successfully");
    //   return user;
    // } else {
    //   print("Account creation error");
    //   return user;
    // }
    // firebase auth object initialization
    // FirebaseAuth _auth = FirebaseAuth.instance;
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    userCredential.user!.updateDisplayName(name);

    await _firestore
        .collection('users')
        .doc(_auth.currentUser!.uid)
        .set({'name': name, 'email': email, 'uid': _auth.currentUser!.uid});

    return userCredential.user;
  } catch (e) {
    print("=========> exception $e");
    return null;
  }
}

//method for login

Future<User?> Login(String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
//initialization of firebase auth

  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  try {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);

    print("Login success");

    await _firestore
        .collection('users')
        .doc(_auth.currentUser!.uid)
        .get()
        .then((value) => userCredential.user!.updateDisplayName(value['name']));

    return userCredential.user;
    //   User? user = (await _auth.signInWithEmailAndPassword(
    //           email: email, password: password))
    //       .user;

    //   if (user != null) {
    //     print("Logged in successfully");
    //     return user;
    //   } else {
    //     print("Invalid email and password");
    //     return user;
    //   }
  } catch (e) {
    print("Exception =====> $e");
    return null;
  }
}

Future Logout(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    await _auth.signOut().then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        )));
  } catch (e) {
    print("error :$e");
  }
}


