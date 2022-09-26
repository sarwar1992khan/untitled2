import 'package:flutter/material.dart';

import 'Modeldata.dart';

class Add_details extends StatefulWidget {
  Recipe recipe;
  Add_details({Key? key,required this.recipe}) : super(key: key);

  @override
  State<Add_details> createState() => _Add_detailsState();
}

class _Add_detailsState extends State<Add_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label),),

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recipe.imagurl),),
            ),
            const SizedBox(height: 4,),
            Text(widget.recipe.label,style: const TextStyle(fontSize: 18),),
             Expanded(

              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                 // print(ingredient);
                  // 9
                  return Card(

                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 2),
                      color: Colors.amber[200], child:
                      Text(
                      '${ingredient.quantity} ${ingredient.measure} ${ingredient.name}')

              );
  }
             ),

            ),
          ],
        ),
      ),
   /*   */
    );
  }
}
