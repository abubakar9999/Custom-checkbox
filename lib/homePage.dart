
import 'package:flutter/material.dart';

class CheckBoxInListView extends StatefulWidget {
  @override
  _CheckBoxInListViewState createState() => _CheckBoxInListViewState();
}

class _CheckBoxInListViewState extends State<CheckBoxInListView> {
  List countdata=[];
  List<String> _texts = [
    "InduceSmile.com",
    "Flutter.io",
    "google.com",
    "youtube.com",
    "yahoo.com",
    "gmail.com"
  ];

  List<bool>? _isChecked;
  int ?count=0;


  

  @override
  void initState() {
  
    super.initState();
    _isChecked = List<bool>.filled(_texts.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: _texts.length,
            itemBuilder: (context, index) {
              return CheckboxListTile(
                title: Text(_texts[index]),
                value: _isChecked![index],
                onChanged: (val) {
                  setState(
                    () {
                      _isChecked![index] = val!;
                      if(_isChecked![index]==true){
                         countdata.add(_isChecked![index]);
                      }else{
                       countdata.length--;
                      }
                     

                      print(countdata.length);
                      
                    },
                  );
                },
              );

              
            },
          ),
          
          Text(countdata.length.toString()),
       

       
        ],
      ),
    );
  }
}