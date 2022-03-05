import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/dashboard/home_page.dart';
import 'package:instagram_clone/screens/dashboard/profile_screen.dart';
import 'package:instagram_clone/screens/dashboard/search_screen.dart';

import 'dashboard/add_screen.dart';
import 'dashboard/shopping_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int page=0;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: widgetOptions[page],
      bottomNavigationBar: Container(
        height:size.height*0.07,
        decoration: BoxDecoration(
          boxShadow:[
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1,1),
              blurRadius:1,
              spreadRadius:0.5,
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding:EdgeInsets.only(left:10.0,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: (){
                    setState(() {
                      page=0;
                    });
                  },
                  icon: Icon(Icons.home_outlined)),
              IconButton(
                  onPressed: (){
                    setState(() {
                      page=1;
                    });
                    },
                  icon: Icon(Icons.search)),
              IconButton(
                  onPressed: (){
                    setState(() {
                      page=2;
                    });
                    },
                  icon: Icon(Icons.add_circle_outline)),
              IconButton(
                  onPressed: (){
                    setState(() {
                      page=3;
                    });
                    },
                  icon: Icon(Icons.shopping_bag_outlined)),
              IconButton(
                  onPressed: (){
                    setState(() {
                      page=4;
                    });
                  },
                  icon: Icon(Icons.person_outline)),
            ],
          ),
        ),
      ),
    );
  }
  List<Widget>widgetOptions = <Widget>[
    HomePage(),
    SearchScreen(),
    AddScreen(),
    ShoppingScreen(),
    ProfileScreen(),
  ];
}
