/*import 'package:dio/dio.dart';

class ApiProvider{
SucessStory? successStory;

 Future<SuccessStory?>getHttp() async{
    try{

      var Response= await Dio().get('http://159.89.4.181:2000/api/v1/success-stories');
      print(Response.data);
      print(Response.statusCode);
      print(Response.data["model"][0]["title"]);
      return SuccessStory;
    }
    catch(e){
      print(e);
    }
  }
}*/