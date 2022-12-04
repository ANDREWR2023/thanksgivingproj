enum Type {
  turkey,
  dessert,
  drink,
}

class Recipe {
  String firstTitle = '';
  String firstImage = '';
  String firstRecipe = '';
  String secondTitle = '';
  String secondImage = '';
  String secondRecipe = '';
  String thirdTitle = '';
  String thirdImage = '';
  String thirdRecipe = '';
  Type t;
  Recipe(
      this.firstTitle,
      this.firstImage,
      this.firstRecipe,
      this.secondTitle,
      this.secondImage,
      this.secondRecipe,
      this.thirdTitle,
      this.thirdImage,
      this.thirdRecipe,
      this.t);
  static List<Recipe> internal = [
    Recipe(
        "Turkey Pot Pie",
        "assets/turkeypie.png",
        "Heat the oven to 400°F.  While the oven is heating, stir the soup, vegetables, turkey and 1/2 cup milk in a 9-inch pie plate.  Season with salt and pepper. Stir the remaining 1/2 cup milk, the egg and baking mix in a small bowl.  Spread the batter over the turkey mixture. Bake for 30 minutes or until the topping is golden brown and done. ",
        "Easy Roast Turkey",
        "assets/turkeyroast.png",
        "Roast turkey on the lowest level of the oven at 500 degrees F for 30 minutes. Lower the temperature to 350 degrees F, and cook the turkey until the center part of the breast reaches 161 degrees F (1.5-2.5 hours total).",
        "Turkey Club Sandwich",
        "assets/turkeyclub.png",
        "Toast your bread and add some bacon. Cut your sandwich into fourths and stack each section. Secure with toothpicks.",
        Type.turkey),
    Recipe(
        "Pilk",
        "assets/pilk.png",
        "Mix equal amounts of Pepsi and milk.",
        "Apple Cider",
        "assets/cider.png",
        "Heat Apple Cider in the microwave. Add cinnamon or other spices to taste.",
        "Hot Chocolate",
        "assets/cocoa.png",
        "Heat up half a mug of water. Add 1 1/3 tablespoons sugar and 2/3 tablespoons cocoa powder. Fill the rest of the mug with warm milk.",
        Type.turkey),
    Recipe(
        "Chocolate Chip Cookies",
        "assets/turkeypie.png",
        "Melt the butter. Once the butter has melted, whisk in the sugars until well-combined. Mix in the vanilla extract and egg. Add the flour, baking soda, and salt. Stir in just until combined. You don't want to overmix the dough. Stir in the chocolate chips, and then scoop the dough. Place about 2 inches apart on the prepared baking sheet. Bake until the cookies are set on the edges but slightly underdone in the middle, about 7-10 minutes.",
        "Pudding Pie",
        "assets/pudding.png",
        "Make the chocolate pudding according to instructions. Pour into premade pie crust. Cover with whipped cream.",
        "Pumkpin Pie",
        "assets/pie.png",
        "Mix sugar, cinnamon, salt, ginger and cloves in small bowl. Beat eggs in large bowl. Stir in pumpkin and sugar-spice mixture. Gradually stir in evaporated milk. Pour into pie shell. Bake in preheated 425° F oven for 15 minutes. Reduce temperature to 350° F; bake for 40 minutes or until knife inserted near center comes out clean. Cool on wire rack for 2 hours. Serve immediately or refrigerate.",
        Type.turkey),
  ];
}
