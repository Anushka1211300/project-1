import 'package:flutter/material.dart';
import 'package:my_new_app/homepage.dart';

import 'package:my_new_app/map_page.dart';
import 'package:my_new_app/placeholderwidget.dart';

import 'loaddata.dart';

class NavPart extends StatefulWidget {
  @override
  _NavPartState createState() => _NavPartState();
}

class _NavPartState extends State<NavPart> {

  int _currentIndex = 0;
 final List<Widget> _children = [
   PlaceholderWidget(Colors.red[300]),
   PlaceholderWidget(Colors.red[50]),
   PlaceholderWidget(Colors.red[200])
 ];

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.red[200],
        
        title: Text("Aradhana")
      ),
       body: _children[_currentIndex], // new
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped, // new
       currentIndex: _currentIndex, // new
       items: [
         new BottomNavigationBarItem(
           icon: Icon(Icons.home),
           // ignore: deprecated_member_use
           title: Text('Home'),
         
         // ignore: deprecated_member_use
         activeIcon:  RaisedButton(
             onPressed:(){
             Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
             }
           ),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.mail),
           // ignore: deprecated_member_use
           title: Text('Messages'),
           // ignore: deprecated_member_use
           activeIcon:  RaisedButton(
             onPressed:(){
             Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserList(),
          ));
             }
           )
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.person),
           // ignore: deprecated_member_use
           title: Text('Map'),
           // ignore: deprecated_member_use
           activeIcon:  RaisedButton(
             onPressed:(){
             Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Map_pin(),
          ));
             }
           )
         )
       ]
     ),
       
     
      
    );
  }
}