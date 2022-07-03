import 'dart:ui';

import 'package:flutter/material.dart';

class Selected extends StatelessWidget {
   Selected({Key? key,this.data}) : super(key: key);
  List? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Selected Data"),
      ),
      body: Column(
        children: <Widget>[
        Container(
          height: 400,
          child: ListView.builder(
            itemCount:data!.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Text(data![index].toString(),style: TextStyle(fontSize:15,),
              ));
            },
          ),
        ),

        ],
      ),
    );
  }
}