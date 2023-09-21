import 'package:flutter/material.dart';

class MssengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        elevation: 0,
        title: Row(
          children: [
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
        scrollDirection: Axis.vertical,


        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 10,),
                      Text('Search'),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 120,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildStatus(),
                  itemCount: 12,



                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 10,),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                child: ListView.separated(
                  itemBuilder: (context, index) => buildChats(),
                  itemCount: 19,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (context, index) => SizedBox(height: 10,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStatus() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 50,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://www.readersdigest.ca/wp-content/uploads/2019/11/cat-10-e1573844975155.jpg'),
                radius: 29,
              ),
              CircleAvatar(backgroundColor: Colors.green, radius: 5,),
            ],
          ),
          Text('hello kitty  ', maxLines: 2, overflow: TextOverflow.ellipsis,)
        ],
      ),
    ),
  );

  Widget buildChats() => Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 70,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://www.readersdigest.ca/wp-content/uploads/2019/11/cat-10-e1573844975155.jpg'),
                    radius: 29,
                  ),
                  CircleAvatar(backgroundColor: Colors.green, radius: 5,),
                ],
              ),
              Text('hello kitty  ', maxLines: 2, overflow: TextOverflow.ellipsis,)
            ],
          ),
        ),
      ),
      Container(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello Kitty! '),
            Text('nice to meet you, contact me if you want',maxLines: 2,overflow: TextOverflow.ellipsis,),
          ],
        ),
      ),

      SizedBox(width: 40,),
      CircleAvatar(backgroundColor: Colors.indigo, radius: 3),
      SizedBox(width: 40,),
      Text('8:00 PM'),
    ],
  );
}

