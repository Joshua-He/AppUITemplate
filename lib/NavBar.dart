import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _bottomIndex;
  @override
  void initState() {
    _bottomIndex = 0;
    super.initState();
  }

  void _onTabTapped(int index) {
    setState(() {
      _bottomIndex = index;
    });
    if(index == 0){
      
    }
    if(index == 1){
      print("hi");
    }
    if(index == 2){
      print("hi");
    }
    if(index == 3){
      
    }
  }

  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _bottomIndex,
        onTap: _onTabTapped, // this will be set when a new tab is tapped
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.format_list_numbered),
            title: new Text('Rankings'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            
          )
        ],
      );
  }
}