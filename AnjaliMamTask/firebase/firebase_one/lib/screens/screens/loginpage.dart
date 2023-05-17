
import "package:firebase_one/screens/logic.dart";
import "package:firebase_one/screens/screens/dashboard.dart";
import "package:firebase_one/screens/screens/registration.dart";
import "package:firebase_one/screens/widgets/button.dart";
import "package:firebase_one/screens/widgets/textfield.dart";
import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Welcome User",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text("Firebase Login", style: TextStyle(fontSize: 25))
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      mytextfield("Enter Email", "Email", Icons.email,
                          email_controller),
                      SizedBox(
                        height: 30,
                      ),
                      mytextfield("Enter Password", "Password", Icons.password,
                          password_controller),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                          onTap: () {
                            if (email_controller.text.isNotEmpty &&
                                password_controller.text.isNotEmpty) {
                              setState(() {
                                isloading = true;
                              });
                              Login(email_controller.text,
                                      password_controller.text)
                                  .then((user) {
                                    
                                if (user != null) {
                                  setState(() {
                                    isloading = false;
                                  });
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => dashboardScreen(),
                                      ));
                                  print("Login successfull");
                                } else {
                                  print("Something went wrong");
                                }
                              });
                            } else {
                              print("All field required");
                            }
                          },
                          child: mycustomButton("Login", Colors.deepPurple)),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyregisterationScreen(),
                              )),
                          child: Text("New User? Create Account"))
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
