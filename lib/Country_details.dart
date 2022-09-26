import 'package:flutter/material.dart';

import 'MOdelClassDemo.dart';

class CountryNameDetails extends StatefulWidget {

  ModelData modelData;
  CountryNameDetails({Key? key,required this.modelData}) : super(key: key);

  @override
  State<CountryNameDetails> createState() => _CountryNameDetailsState();
}

class _CountryNameDetailsState extends State<CountryNameDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.modelData.name),),
    
    body: Container(child: 
      Column(
        children: [
          Image(image: AssetImage(widget.modelData.img)),
          Text(widget.modelData.name),
          Text(widget.modelData.popultion.toString())
        ],
      )
      
      
      ,),
    
    );
    
  }
}
