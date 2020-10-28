class FoodItem {
  final String title;
  final String category;
  FoodItem({this.title, this.category});
}

List<FoodItem> loadFoodItem() {
  var fi = <FoodItem>[
    FoodItem(title: "Chocolate Shake", category: "Milkshakes"),
    FoodItem(title: "Kaju Draksh", category: "Full of Kaju Draksh"),
    FoodItem(title: "Nut Crunch", category: "Milky Nuts"),
    FoodItem(title: "Rosarose", category: "Milkshakes"),
    FoodItem(title: "Chocolate Shake", category: "Milkshakes"),
    FoodItem(title: "Kaju Draksh", category: "Full of Kaju Draksh"),
    FoodItem(title: "Nut Crunch", category: "Milky Nuts"),
    FoodItem(title: "Rosarose", category: "Milkshakes"),
  ];
  return fi;
}
