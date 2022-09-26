class Recipe{
  final String label;
  final String imagurl;
  int servings;

  List<Ingredient> ingredients;

  Recipe(this.label,this.imagurl,this.servings,this.ingredients);



  static List<Recipe>samples=[

    Recipe('Spaghetti and Meatballs','images/spaghetti.jpeg',
        4,[
      Ingredient(1, 'box', 'Spaghetti'),
      Ingredient(4, '', 'Frozen Meatballs'),
      Ingredient(0.5, 'jar', 'sauce'),
    ]
    ),
    Recipe('Tomato soup','images/tomato_soup.jpeg',2,[
      Ingredient(1, 'can', 'Tomato Soup'),

    ]),
    Recipe('Paneer tikka', 'images/paneer_tikka.jpeg',5,[
      Ingredient(2, 'slices', 'Cheese'),
      Ingredient(2, 'slices', 'Bread'),
    ])
  ];
}

class Ingredient{
  double quantity;
  String measure;
  String name;
  Ingredient(this.quantity, this.measure, this.name);
}

