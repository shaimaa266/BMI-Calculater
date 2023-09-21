import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       leading: Icon(Icons.add_alarm_rounded) ,
       title: Text('Flutter',style: TextStyle(color: Colors.pink,fontSize: 22),),
       actions: [
      Container(
        width: 90,
        child: Row(
    children: [
      Icon(Icons.add_alert_sharp),
       SizedBox(width:20 ),
       Icon(Icons.access_time_filled)],),
      ),
       ],
     ),
     body: Column(
       children: [
         Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             Text('ONE',style: TextStyle(color: Colors.cyan,
                 backgroundColor: Colors.limeAccent,fontSize: 38,fontWeight: FontWeight.bold),),
             Text('TWO',style: TextStyle(color: Colors.purple,
                 backgroundColor: Colors.red,fontSize: 38,fontWeight: FontWeight.bold),), Container
               (width: 120,child:
             Text('THREE',style: TextStyle(color: Colors.black87,
                 backgroundColor: Colors.green,fontSize: 38,fontWeight: FontWeight.bold),)
             ), Text('FOUR',style: TextStyle(color: Colors.tealAccent,
                 backgroundColor: Colors.teal,fontSize: 38,fontWeight: FontWeight.bold),),
           ],
         ),
         SizedBox(width: 100,height: 100,),
         Row(mainAxisAlignment: MainAxisAlignment.end,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('ONE',style: TextStyle(color: Colors.cyan,
                 backgroundColor: Colors.limeAccent,fontSize: 38,fontWeight: FontWeight.bold),),
             Text('TWO',style: TextStyle(color: Colors.purple,
                 backgroundColor: Colors.red,fontSize: 38,fontWeight: FontWeight.bold),)

         ],)
       ],
     ),

   );
  }

}