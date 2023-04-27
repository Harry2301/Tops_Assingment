import 'package:flutter/material.dart';

class MyBetweenNUmbers extends StatefulWidget {
  const MyBetweenNUmbers({super.key});

  @override
  State<MyBetweenNUmbers> createState() => _MyBetweenNUmbersState();
}

class _MyBetweenNUmbersState extends State<MyBetweenNUmbers> {
  TextEditingController numcontroller_1 = new TextEditingController();
  TextEditingController numcontroller_2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number between inputs"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: numcontroller_1,
                //keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter first number"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: numcontroller_2,
               // keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter second number"),
              ),
            ),
          ElevatedButton(
              onPressed: () {
                int firstNumber = int.parse(numcontroller_1.text);
                int secondNumber = int.parse(numcontroller_2.text);
                List<int> numbers = List.generate(
                    secondNumber - firstNumber - 1, (i) => i + firstNumber + 1);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NumbersPage(numbers: numbers)),
                );
              },
              child: Text("Show Numbers"),
            ),
          ],
        ),
      ),
    );
  }
}

class NumbersPage extends StatelessWidget {
   List<int> numbers;

  NumbersPage({required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(numbers[index].toString()),
            );
          },
        ),
      ),
    );
  }
}
