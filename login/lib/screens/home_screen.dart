import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final String username;
  const HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Center(child: Text("Welcome " + username, style: TextStyle(fontSize: 25),)),
        ],
      ),
    );
  }
}

