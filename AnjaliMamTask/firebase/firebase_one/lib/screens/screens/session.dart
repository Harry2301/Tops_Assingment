import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_one/screens/screens/dashboard.dart';
import 'package:firebase_one/screens/screens/loginpage%20(1).dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Session extends StatelessWidget {
  // const Session({super.key});
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return dashboardScreen();
    } else {
      return LoginScreen();
    }
  }
}
