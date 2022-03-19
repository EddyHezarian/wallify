import 'package:flutter/material.dart';
import 'package:walify/Screens/searched.dart';
import 'package:walify/configs/artistsdatas.dart';
import 'package:walify/configs/bottomappbar.dart';
import 'package:walify/configs/themes.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  

  var catagorynamecontrol = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 4, backgroundColor: yelowcol, actions: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                child: Icon(
                  Icons.menu,
                  color: darkbluecol,
                ),
              ),
              Text(
                "Wallify",
                style: mythem.headline1,
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        )
      ]),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 1000,
          decoration: BoxDecoration(color: darkbluecol),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Stack(clipBehavior: Clip.none, children: [
                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: greycol),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 1,
                        bottom: 1,
                      ),
                      child: TextField(
                        controller: catagorynamecontrol,
                        decoration:
                            InputDecoration(filled: true, border: InputBorder.none, hintText: "search", fillColor: greycol),
                        style: TextStyle(fontSize: 13, color: darkbluecol),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0.1,
                    top: 0,
                    bottom: 0,
                    child: TextButton(
                      child: Icon(
                        Icons.search,
                        color: darkbluecol,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return searched_screen(category: catagorynamecontrol.text,);
                        }));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(bluecol),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "best selling wallpapers ",
                      style: mythem.headline2,
                    )),
              ),
              SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: 170,
                  color: darkbluecol,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int position) {
                      return wallpaperitems(
                        position: position,
                      );
                    },
                  ),
                ),
              ),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        image: DecorationImage(image: AssetImage("images/premium.jpg"), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                    left: 34,
                    top: 50,
                    child: Text(
                      "Get premium acount today",
                      style: TextStyle(color: greycol, fontSize: 19),
                    ))
              ]),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "most popular artists in wallify ",
                      style: mythem.headline2,
                    )),
              ),
              SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: 170,
                  color: darkbluecol,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int position) {
                      return artists(
                        position: position,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "best Free wallpapers ",
                      style: mythem.headline2,
                    )),
              ),
              SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: 170,
                  color: darkbluecol,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int position) {
                      return freeitems(
                        position: position,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomapp(),
    );
  }
}

class wallpaperitems extends StatelessWidget {
  int position;

  wallpaperitems({Key? key, required this.position}) : super(key: key);

  List<String> wallimages = [];
  @override
  Widget build(BuildContext context) {
    wallimages.add("images/1.jpg");
    wallimages.add("images/2.jpg");
    wallimages.add("images/3.jpg");
    wallimages.add("images/4.jpg");
    wallimages.add("images/5.jpg");
    wallimages.add("images/6.jpg");
    wallimages.add("images/7.jpg");
    wallimages.add("images/8.jpg");

    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 15),
        child: Container(
          width: 100,
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage(wallimages[position]), fit: BoxFit.cover)),
        ));
  }
}

class artists extends StatelessWidget {
  int position;
  artists({Key? key, required this.position}) : super(key: key);

  List<designers> artistsimgs = [];

  @override
  Widget build(BuildContext context) {
    artistsimgs.add(designers(name: "selena jackson", pic: "artists_img/r6.jpg"));
    artistsimgs.add(designers(name: "donald anderson", pic: "artists_img/r2.jpg"));
    artistsimgs.add(designers(name: "jack copper ", pic: "artists_img/r7.jpg"));
    artistsimgs.add(designers(name: "rose halland ", pic: "artists_img/r5.jpg"));
    artistsimgs.add(designers(name: "gabriela lopez", pic: "artists_img/r4.jpg"));
    artistsimgs.add(designers(name: "saman amani", pic: "artists_img/r3.jpg"));

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(artistsimgs[position].pic),
            radius: 40,
          ),
          SizedBox(
            height: 8,
          ),
          Text(artistsimgs[position].name)
        ],
      ),
    );
  }
}

class freeitems extends StatelessWidget {
  int position;
  freeitems({Key? key, required this.position}) : super(key: key);
  List<String> wallimages = [];
  @override
  Widget build(BuildContext context) {
    wallimages.add("images/f1.jpg");
    wallimages.add("images/f2.jpg");
    wallimages.add("images/f3.jpg");
    // wallimages.add("images/f4.jpg");
    wallimages.add("images/f5.jpg");
    wallimages.add("images/f6.jpg");

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 10),
      child: Container(
        width: 100,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(wallimages[position]), fit: BoxFit.cover)),
      ),
    );
  }
}
