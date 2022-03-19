import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walify/Screens/hompage.dart';
import 'package:walify/configs/themes.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {


  var password_control = new TextEditingController();
  var username_control = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: yelowcol,
        child: Stack(children: [
          const Positioned(
            top: 100,
            left: 34,
            child: Text(
              "Sign in",
              style: TextStyle(color: darkbluecol, fontSize: 72, fontWeight: FontWeight.w800),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            heightFactor: 0.9,
            widthFactor: 0.7,
            child: Material(
              borderRadius: BorderRadius.circular(1000),
              color: const Color.fromRGBO(255, 255, 255, 0.1),
              child: Container(
                width: 400,
                height: 400,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 400,
              height: 400,
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(height: 50),
                Container(
                  width: 250,
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(70),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(70),
                    ),
                    color: darkbluecol,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person,
                            color: greycol,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70), topRight: Radius.circular(70)),
                              color: bluecol),
                          width: 200,
                          height: 60,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              controller: username_control,
                              decoration: InputDecoration(
                                  fillColor: bluecol, filled: true, hintText: "User name", border: InputBorder.none),
                              style: TextStyle(fontSize: 20, color: darkbluecol),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 250,
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(70),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(70),
                    ),
                    color: darkbluecol,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.key,
                            color: greycol,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70), topRight: Radius.circular(70)),
                              color: bluecol),
                          width: 200,
                          height: 60,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              controller: password_control,
                              decoration: InputDecoration(
                                  fillColor: bluecol, filled: true, hintText: "password", border: InputBorder.none),
                              style: TextStyle(fontSize: 20, color: darkbluecol),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                    onPressed: () {
                      if (username_control.text == "eddy" && password_control.text == "6862") {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                          return homepage();
                        }));
                      } else {
                        snakmessage(context, "Wrong password or Username");
                      }
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 20, color: darkbluecol),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(bluecol),
                        elevation: MaterialStateProperty.all(10),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
                  ),
                ),
              ]),
            ),
          ),
          Positioned(
              top: 800,
              left: 60,
              child: TextButton(
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("dont have acount? ", style: TextStyle(color: darkbluecol, fontSize: 18)),
                  Text(
                    "Creat acount",
                    style: TextStyle(color: bluecol, fontSize: 18),
                  )
                ]),
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(yelowcol),
                ),
              ))
        ]),
      ),
    );
  }
}

void snakmessage(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        msg,
        style: TextStyle(fontSize: 18, color: darkbluecol),
      ),
      backgroundColor: Color.fromARGB(255, 206, 19, 19)));
}
