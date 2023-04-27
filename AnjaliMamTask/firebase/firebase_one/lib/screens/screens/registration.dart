
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_one/screens/logic.dart';
import 'package:firebase_one/screens/widgets/button.dart';
import 'package:firebase_one/screens/widgets/textfield.dart';
import 'package:flutter/material.dart';

class MyregisterationScreen extends StatefulWidget {
  const MyregisterationScreen({super.key});

  @override
  State<MyregisterationScreen> createState() => _MyregisterationScreenState();
}

class _MyregisterationScreenState extends State<MyregisterationScreen> {
  TextEditingController name_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isloading
          ? Container(
              height: 200,
              width: double.maxFinite,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Text(
                      "Sign up",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 30),
                    mytextfield(
                        "Enter Name", "Name", Icons.person, name_controller),
                    SizedBox(
                      height: 20,
                    ),
                    mytextfield(
                        "Enter Email", "Email", Icons.email, email_controller),
                    SizedBox(
                      height: 20,
                    ),
                    mytextfield("Enter password", "Password", Icons.password,
                        password_controller),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                        onTap: () {
                          if (name_controller.text.isNotEmpty &&
                              email_controller.text.isNotEmpty &&
                              password_controller.text.isNotEmpty) {
                            setState(() {
                              isloading = true;
                            });
                            createAccount(
                                    name_controller.text,
                                    email_controller.text,
                                    password_controller.text)
                                .then((user) {
                              if (user != null) {
                                setState(() {
                                  isloading = false;
                                });
                                print("Registeration successfull");
                              } else {
                                print("Something went wrong");
                              }
                            });
                          } else {
                            print("All field required");
                          }
                        },
                        child: mycustomButton("Register", Colors.deepPurple))
                  ],
                ),
              ),
            ),
    );
  }
}
