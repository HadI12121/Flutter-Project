import 'food.dart';

class Resturant{
  final List<Food> _menu= [
    Food(name: "Classic Cheeseburger", 
    description: "Juicy beef patty topped with melted cheddar cheese, fresh lettuce, ripe tomatoes, pickles, and our signature sauce, all nestled in a toasted sesame seed bun.", 
    imagePath: "lib/images/burgers/", 
    price: 0.90, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Extra cheese", price: 0.5),
      Addon(name: "Extra Becon", price: 0.7),
      Addon(name: "Extra Salad", price: 0.9),
    ]),

    Food(name: "Becon Burger", 
    description: "Juicy beef patty topped with melted cheddar cheese, fresh lettuce, ripe tomatoes, pickles, and our signature sauce, all nestled in a toasted sesame seed bun.", 
    imagePath: "lib/images/burgers/", 
    price: 0.90, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Extra cheese", price: 0.5),
      Addon(name: "Extra Becon", price: 0.7),
      Addon(name: "Extra Salad", price: 0.9),
    ]),

    Food(name: "Blue Moon Burger", 
    description: "Juicy beef patty topped with melted cheddar cheese, fresh lettuce, ripe tomatoes, pickles, and our signature sauce, all nestled in a toasted sesame seed bun.", 
    imagePath: "lib/images/burgers/", 
    price: 0.90, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Extra cheese", price: 0.5),
      Addon(name: "Extra Becon", price: 0.7),
      Addon(name: "Extra Salad", price: 0.9),
    ]),

    Food(name: "Caesar Supreme Salad", 
    description: "Crisp romaine lettuce, crunchy croutons, shaved parmesan cheese, and grilled chicken breast, all tossed in our creamy Caesar dressing.", 
    imagePath: "lib/images/salads/", 
    price: 0.90, 
    category: FoodCategory.salads, 
    availableAddons: [
      Addon(name: "Avocado Slices", price: 0.5),
      Addon(name: "Shredded Cheese", price: 0.7),
      Addon(name: "Croutons", price: 0.9),
    ]),



  ];
}