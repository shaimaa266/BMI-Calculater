import 'package:flutter/material.dart';
import 'package:projectiti/api_provider.dart';


class Mssenger extends StatefulWidget{
  @override
  State<Mssenger> createState() => _MssengerState();
}

class _MssengerState extends State<Mssenger> {
  getResponse() async{
  ;

  }
  @override
  void initState() {
//ApiProvider().getHttp();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        elevation: 0,
        title: Row(
          children: const [
            CircleAvatar(
   backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.GmFtA0aTBPPuhV5E4QN5GAHaGh&w=266&h=234&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
              radius: 17,

    ),
            SizedBox(width: 10,),
            Text('Chats',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 22),),
          ],
      ),
        actions: [
          CircleAvatar(
            child: Icon(Icons.camera_alt,),
            backgroundColor: Colors.grey,
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            child: Icon(Icons.edit),
            backgroundColor: Colors.indigo,
          ),
        ],
    ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(
             padding: const EdgeInsets.all(8),

             child: Container(

               decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10) ),

               child: SingleChildScrollView(
                 child: Row(
                   children: [
                     Icon(Icons.search),
                     const  SizedBox(width: 10,),
                     Text('Search'),
                   ],
                 ),
               ),
             ),
           ),
           Container(
            height: 100,
             child: Row(
               children: [
                ListView.separated(itemBuilder:(context,index)=>buildstatus(),itemCount: 8,
                  scrollDirection: Axis.horizontal,separatorBuilder: (context, index) => SizedBox(width: 10,),),
               ],
             ),
           ),
           Expanded(
              child: ListView.separated(
                itemBuilder: (context,index)=>buildChats(),
                scrollDirection: Axis.vertical,
                separatorBuilder: (contex,index)=>SizedBox(height: 10,), itemCount: 4),
            )


            ],
        ),
      )

    );
  }
}
Widget buildstatus()=> Padding(
    padding: const EdgeInsets.all(8.0),
    child:Container(
        width: 50,
        child:Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://www.readersdigest.ca/wp-content/uploads/2019/11/cat-10-e1573844975155.jpg'),
                  radius: 29, ),

                CircleAvatar(backgroundColor: Colors.green,radius: 5,),
              ],

            ),
            Text('hello kitty  ',maxLines: 2,overflow: TextOverflow.ellipsis,)
          ],
        ))) ;
Widget buildChats()=> Row(
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child:Container(
        width: 70,
        child:Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://www.readersdigest.ca/wp-content/uploads/2019/11/cat-10-e1573844975155.jpg'),
                  radius: 29, ),

                CircleAvatar(backgroundColor: Colors.green,radius: 5,),
              ],

            ),
            Text('hello kitty  ',maxLines: 2,overflow: TextOverflow.ellipsis,)
          ],
        ),),),
    Text('Hello Kitty '),
    Text('nice to meet you'),
    SizedBox(width: 30,),
    CircleAvatar(backgroundColor: Colors.indigo,radius: 3),
    SizedBox(width: 20,),
    Text('8:00 PM'),

  ],
);



