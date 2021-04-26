
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:core';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  final String apiUrl = 'http://www.json-generator.com/api/json/get/bHkXVSgSMi?indent=2';

  Future<List<dynamic>> fetchUsers() async {

    var result = await http.get(Uri(path: apiUrl));
    return json.decode(result.body);

  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        backgroundColor: Colors.red[200],
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    return ListView.builder(itemBuilder: (context,index){
        return Card(
                color: Colors.red[200],
                  child: Text("Person Registered $index",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        );
    });
  }
}
  
