import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(child: Text('Home Page ',style: TextStyle(color: Colors.deepPurple,fontSize: 50,fontWeight: FontWeight.bold),)),
    );
  }

}