import "package:firebase_core/firebase_core.dart";
import "package:firebase_one/API/update_data.dart";
import "package:firebase_one/getX_Example/main_getfile.dart";
import "package:firebase_one/screens/screens/detailed_homescreen.dart";
import "package:firebase_one/screens/screens/loginpage.dart";
import "package:firebase_one/screens/screens/session.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "API/fetch_specific_data.dart";
import "API/post_data.dart";

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreenGetX(),
    );
  }
}
