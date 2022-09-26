import 'package:flutter/material.dart';



//const List<String>list=["Select the course name","Android Development","Flutter development","Java Development"];
const List<String>list1=["Select the country name","India","usa","pakistan"];
const List<String>list2=["Select the city name","New delhi","Punjab","UtterPredesh"];

const List<String>list3=["Select the city name","Usa1","Usa2","Usa3"];

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  String default_value=list1.first;
  String default_value1=list2.first;

  String ?aa;


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(appBar: AppBar(title: const Text('DropDown menu'),),

          body:
          Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child:
                Column(
                  children: [
                    Image.asset('images/spider_man.png',height: 300,width: 300,),


                    //DropdownButton(items:list, onChanged: onChanged)

                  /*  DropdownButton<String>(
                        value:default_value,
                        items: list1.map((val){
                          return DropdownMenuItem(
                              value: val,
                              child: Text(val));
                        }).toList(),
                        onChanged: (myValue){

                          setState(() {
                            default_value=myValue!;

                            if(default_value=="India")
                              {
                                aa=default_value;
                              // print(aa);

                              }
                            else if(default_value=="usa"){
                              aa=default_value;
                             // print(aa);

                            }

                           // print('$default_value');

                          });

                        })
                    ,



                  DropdownButton<String>(


                        value:default_value1,
                        items: list2.map((v){

                          return DropdownMenuItem(
                              value: v,
                              child: Text(v));
                        }).toList(),
                        onChanged: (myValue){

                          setState(() {
                            default_value1=myValue!;

                            print('$default_value1');


                          });

                        })
                    ,*/
                    /*
                    DropdownButton<String>(
                        value:default_value,
                        items: list1.map((val){

                          return DropdownMenuItem(
                              value: val,
                              child: Text(val));
                        }).toList(),
                        onChanged: (myValue){

                          setState(() {
                            default_value=myValue!;

                            print('$default_value');

                          });

                        })
                    */

                   custom_DropDown_button(list1, default_value),
                   if(aa=="India")...[
                     custom_DropDown_button(list2, default_value1)
                    ]
                    else if(aa=="usa")...[

                      custom_DropDown_button(list3, default_value1)
                    ]


                  ],
                )
          )

        );



  }
  Widget custom_DropDown_button(List<String>ll,String val){
    return DropdownButton(
        value: val,
        items: ll.map((myvalue){
       return DropdownMenuItem(
           value: myvalue,
           child: Text(myvalue));

        }).toList(),

        onChanged:(myValue){
      setState(() {
        default_value=myValue!;

        //print('$default_value');
        aa=default_value;
      });

    });


  }




}

