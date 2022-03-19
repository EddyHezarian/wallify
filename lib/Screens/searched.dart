import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:walify/configs/api.dart';
import 'package:walify/configs/search_class.dart';
import 'package:walify/configs/themes.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as httpconvert;

class searched_screen extends StatefulWidget {
  String category;
  searched_screen({required this.category});
  @override
  State<searched_screen> createState() => _searched_screenState();
}

class _searched_screenState extends State<searched_screen> {
  List<api> image_catched = [];

  Future pics(BuildContext context, String category) async {
    var url = 'https://pixabay.com/api/?key=26037315-f514e25e5cc88660c9eee137c&q=${category}&image_type=photo&pretty=true';
    var value = await http.get(Uri.parse(url));
    if (image_catched.isEmpty) {
      if (value.statusCode == 200) {
        dynamic jsonlist = httpconvert.jsonDecode(value.body);
        setState(() {
          if (jsonlist.isNotEmpty) {
            for (int i = 0; i < jsonlist["hits"].length; i++) {
              image_catched.add(api(jsonlist["hits"][i]["largeImageURL"]));
            }
          }
        });
      }
    }

    return url;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pics(context, widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkbluecol,
//-------------------appbar------------------------------------------------------
        appBar: AppBar(
          elevation: 4, backgroundColor: yelowcol,
          title: Text(
            "Wallify",
            style: mythem.headline1,
          ),
          centerTitle: true,
          //actions: [
          // Expanded(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       //Padding(
          //        // padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
          //         //child: Icon(
          //         //  Icons.menu,
          //         //  color: darkbluecol,
          //       //  ),
          //      // ),

          //       SizedBox(
          //         width: 20,
          //       )
          //     ],
          //   ),
          // )
          //]
        ),
//-------------------body------------------------------------------------------
        body: new FutureBuilder(
          builder: (context, snapShot) {
            return (snapShot.hasData)
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext contex, int position) {
                        return wallis(position: position, wallimages: image_catched);
                      },
                      itemCount: image_catched.length,
                    ),
                  )

                // SingleChildScrollView(
                //   child: Padding(
                //     padding: const EdgeInsets.all(25),
                //     child: GridView.count(
                //         crossAxisCount: 2,
                //         mainAxisSpacing:25 ,
                //         crossAxisSpacing:20 ,
                //         physics: BouncingScrollPhysics(),
                //         children: List.generate(image_catched.length, (int position) {
                //           return wallis(position: position, wallimages: image_catched);
                //         }),
                //       ),
                //   ),
                // )
                : Center(child: CircularProgressIndicator());
          },
          future: pics(context, widget.category),
        ));
  }
}

class wallis extends StatelessWidget {
  int position;
  
  List<api> wallimages = [];
  wallis({Key? key, required this.position, required this.wallimages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: Container(
          width: 200,
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage(wallimages[position].largeImageURL!), fit: BoxFit.fill)),
        ),
      ),
     



    );
  }
}
