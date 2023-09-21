import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return loginscreenstate();
  }

}
class loginscreenstate extends State{
  bool is_visible=false;
  TextEditingController emailtexteditingcontroller=TextEditingController();
  TextEditingController passwordtexteditingcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter app '),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(width: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 24,top: 10,right: 16),
              child: Text ('Login ',
                style: TextStyle(fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,fontSize: 44),),
            ),


             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 22,color: Colors.deepPurple,),
                  controller:emailtexteditingcontroller ,
                  onFieldSubmitted: (value) {
                    //Validator
                  },
                  validator: (value){
                    if(value==' '||value!.contains('!@')){
                      return 'Enter a valid password!';
                    }return null;
                  },
            decoration:InputDecoration(labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(  borderSide: BorderSide(width: 3,color: Colors.orange)),
            )),
             ),
              const SizedBox(height: 40,),
            TextFormField(keyboardType: TextInputType.visiblePassword,
                style: TextStyle(color: Colors.deepPurple,fontSize: 22),
                obscureText: is_visible,
                controller:passwordtexteditingcontroller ,
                onFieldSubmitted: (value) {
                  //Validator
                },
                validator: (value){
              if(value==""){
                return"enter  a password";
              }return null;
                },

                decoration:InputDecoration(labelText: 'password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(icon:is_visible==true? Icon(Icons.visibility_sharp):Icon(Icons.visibility_off_sharp),
                    onPressed: (){
                    is_visible=!is_visible;
                    print(is_visible);
                    setState(() {

                    });
                  },),
                  border: OutlineInputBorder( borderSide: BorderSide(width: 3,color: Colors.orange)),
                )),
            SizedBox(height: 40,),
            Container(

              width: double.infinity,
              color: Colors.black45,

              child: MaterialButton(

                onPressed: (){
                  print(emailtexteditingcontroller.text);
                  print(passwordtexteditingcontroller.text);
                },

                child: Text('Login',style: TextStyle(color: Colors.white),),
              ),
            ),
              SizedBox(height: 20,),
            Row(
              children: [
                Text("don't have an account ?",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                TextButton(onPressed: (){},child: Text('SIGN UP ',style: TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold),),)

              ],
            )




          ],
        ),
      ),
    );
  }

  }

