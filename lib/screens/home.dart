import 'package:flutter/material.dart';
import './subscreens/homesub.dart';
import "./subscreens/activity.dart";

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = new PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          this.currentIndex = value;
          this.setState(() {});
        },
        controller: this.controller,
        children: [HomeSub(), Activity()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.indigo[300],
        currentIndex: this.currentIndex,
        onTap: (int value) {
          controller.animateToPage(value,
              duration: Duration(seconds: 1), curve: Curves.linearToEaseOut);
          this.setState(() {
            this.currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              label: "activity", icon: Icon(Icons.local_activity))
        ],
      ),
    );
  }
}
