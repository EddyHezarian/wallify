import 'package:flutter/material.dart';
import 'package:walify/Screens/hompage.dart';
import 'package:walify/Screens/infopage.dart';
import 'package:walify/Screens/login.dart';
import 'package:walify/configs/themes.dart';

class bottomapp extends StatefulWidget {
  const bottomapp({Key? key}) : super(key: key);

  @override
  _bottomappState createState() => _bottomappState();
}

class _bottomappState extends State<bottomapp> {
  var selectedindex = 0;

  void _ontapitem(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(color: yelowcol, boxShadow: [
        BoxShadow(
          blurRadius: 4,
          color: yelowcol,
          spreadRadius: 1,
        )
      ]),
      child: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: _ontapitem,
        selectedItemColor: darkbluecol,
        unselectedItemColor: darkbluecol,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 16,
        showUnselectedLabels: true,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: selectedindex == 0
                  ? 
                  InkWell(
                      child: Icon(
                        Icons.home,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                          return homepage();
                        }));
                      },
                    )
                  : 
                  InkWell(
                    onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                          return homepage();
                        }));
                      },
                    child: Icon(
                  
                        Icons.home,
                        size: 20,
                      ),
                  ),
              label: "home"),
          BottomNavigationBarItem(
              icon: selectedindex == 1
                  ? 
                  InkWell(
                    onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                          return info_page();
                        }));
                      },
                    child: Icon(             
                          Icons.person,
                          size: 30,
                        ),
                    
                  )
                  : 
                  InkWell(
                    onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                          return info_page();
                        }));
                      },
                    child: Icon(
                        Icons.person,
                        size: 20,
                      ),
                  ),
              label: "info"),
        ],
      ),
    );
  }
}
