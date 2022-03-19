import 'package:flutter/material.dart';
import 'package:walify/Screens/hompage.dart';
import 'package:walify/Screens/login.dart';
import 'package:walify/configs/themes.dart';

class splash_Screen extends StatefulWidget {
  const splash_Screen({Key? key}) : super(key: key);

  @override
  State<splash_Screen> createState() => _splash_ScreenState();
}

class _splash_ScreenState extends State<splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _Navigator_screen();
  }

  _Navigator_screen() async {
    await Future.delayed(Duration(milliseconds: 2000), (() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return loginpage();
      }));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: yelowcol),
          ),
          Positioned(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Wallify",
                    style: mythem.headline5,
                  )),
              SizedBox(
                height: 15,
              ),
              Text(
                "dicover the unique Art ",
                style: mythem.headline4,
              ),
              SizedBox(
                height: 500,
              ),
              Text(
                "Powered By Eddy-Hzn ",
                style: mythem.caption,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
