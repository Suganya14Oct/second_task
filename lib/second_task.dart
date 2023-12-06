import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class Novpost extends StatefulWidget {
  const Novpost({super.key});

  @override
  State<Novpost> createState() => _NovpostState();
}

class _NovpostState extends State<Novpost> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Nov Post"),),
      body: Center(
          child: Column(
            children: [
              InkWell(
                child: Text("Post Data"),
                onTap: (){
                  postApi();
                },
              ),
              Text("please click the above text to post data"),
            ],
          ),

      ),
    );
  }

  void postApi() async {

    var dio = Dio();
    var responce = await dio.post("https://jsonplaceholder.typicode.com/posts",
        data: {
          'name' : "Suganya",
          'Place' : 'dindigul'
        }
    );
    print(responce.data);
  }

}
