import 'package:flutter/material.dart';
import 'package:projectiti/fav_screen.dart';
import 'package:projectiti/home_screen.dart';
import 'package:projectiti/note_screen.dart';

class LayoutScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
return layoutscreenState();
  }

}
class layoutscreenState extends State{
  int current_index=0;
  bool is_selected=true;
  List<Widget>screens=[HomeScreen(),FavsScreen(),NotesScreen()];

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text('RE-Dairy'),
    backgroundColor: Colors.blueGrey,
    centerTitle: true,

  ),
  body: screens[current_index],
  bottomNavigationBar:BottomNavigationBar(
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite,color: is_selected?Colors.red:Colors.indigo,),label: 'Fav'),
    BottomNavigationBarItem(icon: Icon(Icons.note,),label: 'Notes'),
  ],
    currentIndex: current_index,

    onTap: (index){
    setState(() {
      current_index=index;
    });
    },

  )
  ,
);
  }

}