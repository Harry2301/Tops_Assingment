import 'package:flutter/material.dart';
import 'usermodel.dart';
import 'userService.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _priceController = new TextEditingController();

  var userservice = UserService();
  var usermodel = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FDD4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 750,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(
                        style:
                            TextStyle(fontSize: 42, color: Color(0xffCDDC39)),
                        children: <TextSpan>[
                      TextSpan(
                          text: "FlowerStore",
                          style: TextStyle(
                              color: Color(0xFFCDDC39),
                              fontWeight: FontWeight.w500)),
                    ])),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/images/p1.png",
                  width: double.maxFinite,
                  height: 300,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 320,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return addDetails();
                            },
                          ));
                        },
                        child: Text(
                          "Add Flower Details",
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFCDDC39),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 320,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return viewdetails();
                            },
                          ));
                        },
                        child: Text(
                          "View Flower Details",
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFCDDC39),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class addDetails extends StatefulWidget {
  const addDetails({super.key});

  @override
  State<addDetails> createState() => _addDetailsState();
}

class _addDetailsState extends State<addDetails> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _priceController = new TextEditingController();

  var userservice = UserService();
  var usermodel = UserModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FDD4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            child: Column(
              children: [
                Center(
                  child: Container(
                    child: Image.asset(
                      "assets/images/p2.png",
                      width: 190,
                      height: 270,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  height: 530,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(hintText: "Flower Name"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          controller: _priceController,
                          decoration: InputDecoration(hintText: "Price"),
                        ),
                      ),
                      SizedBox(height: 50),
                      SizedBox(
                        height: 40,
                        width: 320,
                        child: ElevatedButton(
                          onPressed: () async {
                            usermodel.name = _nameController.text;
                            usermodel.price = _priceController.text;
                            var save = await userservice.saveuser(usermodel);
                            print(save);
                            setState(() {
                              var msg = "successfully data submitted";
                              // getdatafromtable();
                              Navigator.pop(context);
                            });
                            _nameController.text = "";
                            _priceController.text = "";
                          },
                          child: Text("Add Details",
                              style: TextStyle(fontSize: 22)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffCDDC39),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class viewdetails extends StatefulWidget {
  const viewdetails({super.key});

  @override
  State<viewdetails> createState() => _viewdetailsState();
}

class _viewdetailsState extends State<viewdetails> {
  @override
  TextEditingController _editnameController = new TextEditingController();
  TextEditingController _editpriceController = new TextEditingController();
  List<UserModel> usersList = [];
  var userservice = UserService();
  var usermodel = UserModel();

  @override
  void initState() {
    getdatafromtable();
    super.initState();
  }

  getdatafromtable() async {
    usersList.clear();
    var read = await userservice.readuser();
    read.forEach((row) {
      setState(() {
        var usermodel = UserModel();
        usermodel.id = row["id"];
        usermodel.name = row["name"];
        usermodel.price = row["price"];

        usersList.add(usermodel);
      });
    });
  }

  deluser(BuildContext context, userid) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(0xFFF9FDD4),
          title: Text("Delete Flower Detail"),
          actions: [
            ElevatedButton(
              onPressed: () async {
                var result = await userservice.deleteuser(userid);
                if (result != null) {
                  print("yess");
                  setState(() {
                    usersList.removeWhere((obj) => obj.id == userid);
                  });
                } else {
                  print("no data");
                  getdatafromtable();
                }
                Navigator.pop(context);
              },
              child: Text("Yes"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xffCDDC39)),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pop(context);
              },
              child: Text("No"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xffCDDC39)),
            ),
          ],
        );
      },
    );
  }

  updateuser(BuildContext context, userid, name, price) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(0xFFF9FDD4),
          title: Text("Edit Flower Detail"),
          content: Container(
            height: 150,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField(
                  controller: _editnameController,
                  decoration: InputDecoration(
                      hintText: name, border: OutlineInputBorder()),
                ),
                TextField(
                  controller: _editpriceController,
                  decoration: InputDecoration(
                      hintText: price, border: OutlineInputBorder()),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () async {
                var usermodel = UserModel();
                usermodel.id = userid;
                usermodel.name = _editnameController.text;
                usermodel.price = _editpriceController.text;
                var update = userservice.udateuser(usermodel);
                getdatafromtable();
                Navigator.pop(context);
              },
              child: Text("Update"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xffCDDC39)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("No"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xffCDDC39)),
            )
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FDD4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 750,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/p3.png",
                  width: double.maxFinite,
                ),
                Flexible(
                  child: ListView.builder(
                    itemCount: usersList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 80,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          color: Color(0xffCDDC39),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    usersList[index].name.toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    usersList[index].price.toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              updateuser(
                                                  context,
                                                  usersList[index].id,
                                                  usersList[index].name,
                                                  usersList[index].price);
                                            },
                                            child: Icon(Icons.edit)),
                                        SizedBox(width: 15),
                                        InkWell(
                                            onTap: () {
                                              deluser(
                                                  context, usersList[index].id);
                                              setState(() {
                                                getdatafromtable();
                                              });
                                            },
                                            child: Icon(Icons.delete))
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
