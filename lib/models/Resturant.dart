import 'package:flutter/material.dart';

import 'food.dart';

class Resturant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
        name: "Classic Cheeseburger",
        description:
            "Juicy beef patty topped with melted cheddar cheese, fresh lettuce, ripe tomatoes, pickles, and our signature sauce, all nestled in a toasted sesame seed bun.",
        imagePath: "lib/images/burgers/1.jpeg",
        price: 0.90,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.5),
          Addon(name: "Extra Becon", price: 0.7),
          Addon(name: "Extra Salad", price: 0.9),
        ]),
    Food(
        name: "Becon Burger",
        description:
            "Juicy beef patty topped with melted cheddar cheese, fresh lettuce, ripe tomatoes, pickles, and our signature sauce, all nestled in a toasted sesame seed bun.",
        imagePath: "lib/images/burgers/1.jpeg",
        price: 0.90,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.5),
          Addon(name: "Extra Becon", price: 0.7),
          Addon(name: "Extra Salad", price: 0.9),
        ]),
    Food(
        name: "Blue Moon Burger",
        description:
            "Juicy beef patty topped with melted cheddar cheese, fresh lettuce, ripe tomatoes, pickles, and our signature sauce, all nestled in a toasted sesame seed bun.",
        imagePath: "lib/images/burgers/1.jpeg",
        price: 0.90,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.5),
          Addon(name: "Extra Becon", price: 0.7),
          Addon(name: "Extra Salad", price: 0.9),
        ]),
    Food(
        name: "Caesar Supreme Salad",
        description:
            "Crisp romaine lettuce, crunchy croutons, shaved parmesan cheese, and grilled chicken breast, all tossed in our creamy Caesar dressing.",
        imagePath: "lib/images/salads/s1.jpeg",
        price: 0.90,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
    Food(
        name: "Taco Salad",
        description:
            "Seasoned ground beef, black beans, corn, shredded lettuce, cherry tomatoes, cheddar cheese, and avocado, served in a crispy tortilla bowl with a dollop of sour cream and salsa.",
        imagePath: "lib/images/salads/s2.jpeg",
        price: 0.90,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
    Food(
        name: "Kale and Apple Salad",
        description:
            "Tender kale leaves, thinly sliced apples, dried cranberries, walnuts, and crumbled blue cheese, tossed in a honey mustard dressing.",
        imagePath: "lib/images/salads/s3.jpeg",
        price: 0.90,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
    Food(
        name: "Kale and Apple Salad",
        description:
            "Tender kale leaves, thinly sliced apples, dried cranberries, walnuts, and crumbled blue cheese, tossed in a honey mustard dressing.",
        imagePath: "lib/images/sides/si1.jpeg",
        price: 0.90,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
    Food(
        name: "Kale and Apple Salad",
        description:
            "Tender kale leaves, thinly sliced apples, dried cranberries, walnuts, and crumbled blue cheese, tossed in a honey mustard dressing.",
        imagePath: "lib/images/sides/si2.jpeg",
        price: 0.90,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
    Food(
        name: "Kale and Apple Salad",
        description:
            "Tender kale leaves, thinly sliced apples, dried cranberries, walnuts, and crumbled blue cheese, tossed in a honey mustard dressing.",
        imagePath: "lib/images/sides/si3.jpeg",
        price: 0.90,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
    Food(
        name: "Kale and Apple Salad",
        description:
            "Tender kale leaves, thinly sliced apples, dried cranberries, walnuts, and crumbled blue cheese, tossed in a honey mustard dressing.",
        imagePath: "lib/images/desserts/d1.jpeg",
        price: 0.90,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
    Food(
        name: "Kale and Apple Salad",
        description:
            "Tender kale leaves, thinly sliced apples, dried cranberries, walnuts, and crumbled blue cheese, tossed in a honey mustard dressing.",
        imagePath: "lib/images/desserts/d2.jpeg",
        price: 0.90,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
    Food(
        name: "Kale and Apple Salad",
        description:
            "Tender kale leaves, thinly sliced apples, dried cranberries, walnuts, and crumbled blue cheese, tossed in a honey mustard dressing.",
        imagePath: "lib/images/drinks/d1.jpeg",
        price: 0.90,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
    Food(
        name: "Kale and Apple Salad",
        description:
            "Tender kale leaves, thinly sliced apples, dried cranberries, walnuts, and crumbled blue cheese, tossed in a honey mustard dressing.",
        imagePath: "lib/images/drinks/d2.jpeg",
        price: 0.90,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
    Food(
        name: "Kale and Apple Salad",
        description:
            "Tender kale leaves, thinly sliced apples, dried cranberries, walnuts, and crumbled blue cheese, tossed in a honey mustard dressing.",
        imagePath: "lib/images/drinks/d3.jpeg",
        price: 0.90,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Avocado Slices", price: 0.5),
          Addon(name: "Shredded Cheese", price: 0.7),
          Addon(name: "Croutons", price: 0.9),
        ]),
  ];

  List<Food> get menu => _menu;




}
