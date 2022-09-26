import 'package:flutter/material.dart';
import 'package:untitled2/MOdelClassDemo.dart';

import 'Country_details.dart';

class DisplayList extends StatefulWidget {
  const DisplayList({Key? key}) : super(key: key);

  @override
  State<DisplayList> createState() => _DisplayListState();
}

class _DisplayListState extends State<DisplayList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List'),),

      body: ListView.builder(
        itemCount: ModelData.ll.length,
        itemBuilder: (BuildContext context,int i){
          return
            //DisplayData(ModelData.ll[i]);

            GestureDetector(
              onTap: (){
                //print(ModelData.ll[i].name);

                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CountryNameDetails(modelData: ModelData.ll[i],);
                }));
              },

            child:

            Card(
              margin: EdgeInsets.all(5),
              elevation: 2,


                child:
            Column(
            children: [
              Image(image: AssetImage(ModelData.ll[i].img),
                width: 200,
                height: 200,),
              const SizedBox(height: 14,),
              Text(ModelData.ll[i].name,style: TextStyle(fontWeight:FontWeight.w700,fontSize: 20),),
              //Text(ModelData.ll[i].des,style: TextStyle(fontWeight:FontWeight.w700,fontSize: 20),)
            ],
            )
                )
          );
        })

    );
  }

 /* Widget DisplayData(ModelData modelData){
    return Column(
        children: [
          Image(image: AssetImage(modelData.img)),
          Text(modelData.name)
        ],
      );



  }*/
}
