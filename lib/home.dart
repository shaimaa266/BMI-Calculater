import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  Home({super.key});


  @override
  State<StatefulWidget> createState() {
    return home_state() ;
  }


}
class home_state extends State{
int number=1;
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(
      backgroundColor: Colors.indigo,
     leading: Icon(Icons.menu),
     title: Text('flutter '),
     centerTitle:true ,
      actions: [
        IconButton(onPressed: (){
          setState(() {
            number++;
          });
          print(number);
        }, icon:Text('$number')),
        Icon(Icons.add),
      ],
    ),
  );
  }

}