

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';



import 'package:my_new_app/nav.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count;
 
  
   
                            
                          
                            @override
                           
                            Widget build(BuildContext context) {
                             
                              return Scaffold(
                                appBar: AppBar(
                                  leading: Icon(Icons.menu),
                                  backgroundColor: Colors.red[200],
                                  
                                  title: Text("Aradhana")
                                ),
                                drawer: Drawer(
                                  
                                  child: Column(children: [
                                  Card(
                                    color:Colors.pinkAccent,
                                    child:Text("Home")
                                  )
                                ],)
                                ,),
                                //bottomNavigationBar: NavPart(),
                                 body: Container(

      color: Colors.white30,
      child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2.0,
          padding: const EdgeInsets.all(2.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: <String>[
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
          ].map((String url) {
            return Container(
              padding: EdgeInsets.all(2.0),
              
              child: GridTile(
                
                  child: Image.network(url, fit: BoxFit.none)),
            );
          }).toList()),
    ),
                              );
                           }
                          }
                        
                        
  