import 'package:flutter/material.dart';
import 'package:untitled2/Add_details.dart';
import 'Modeldata.dart';
class Custom_ListViewDemo extends StatefulWidget {
  const Custom_ListViewDemo({Key? key}) : super(key: key);

  @override
  State<Custom_ListViewDemo> createState() => _Custom_ListViewDemoState();
}

class _Custom_ListViewDemoState extends State<Custom_ListViewDemo> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add_circle),label: 'Circle Button')
        ],
      ),
      appBar: AppBar(title: const Text('Display Category'),centerTitle: true,),
      body: ListView.builder(
        itemCount: Recipe.samples.length,
        itemBuilder: (BuildContext context,int i){
          return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Add_details(recipe: Recipe.samples[i],);
                }));
              },
              child:Custom_Recipe(Recipe.samples[i]));

        }
      ),

    );
  }

  Widget Custom_Recipe(Recipe recipe){
    return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),


  ),
  child:Padding(
  padding: const EdgeInsets.all(16.0),
  child:
    Column(
    children: [
      Image(image: AssetImage(recipe.imagurl)),
      const SizedBox(height: 14.0,),
      Text(recipe.label,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700,fontFamily:'Palatino'),)
    ],
  ),
  )
);
  }
}

