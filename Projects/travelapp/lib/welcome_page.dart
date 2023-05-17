import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Spacer(),
          Container(
              height: 400,
              width: 400,
              child: RiveAnimation.asset("assets/animations/travel.riv")),
          SizedBox(
            height: 40,
          ),
          Text(
            "Explore your journey \n only with us",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "All your vacations destinations are here \n enjoy your holiday",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(
            height: 50,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 11, 91, 126),
                      elevation: 15,
                      shape: StadiumBorder(
                          side: BorderSide(color: Colors.blueGrey)),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 8)),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return homepage();
                      },
                    ));
                  },
                  child: Text("Explore")),
            ),
          )
        ],
      ),
    )));
  }
}
