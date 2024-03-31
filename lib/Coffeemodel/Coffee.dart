// Coffee Items
class Coffee
{
  final String coffeeDes;
  final String name;
  final String coffeeImagePath;
  final double coffeePrice;
  final double rating;
  final CoffeeCategory category;
  final List<Addon> addons;
  final List<Size> sizeCategory;
  final int quantity;

  //

  Coffee( {
    required this.coffeeDes,
    required this.coffeeImagePath,
    required this.category,
    required this.name,
    required this.coffeePrice,
    required this.rating,
    required this.addons,
    required this.sizeCategory,
    required this.quantity,
  });

}

class Addon {
  final String name;
  final double price;

  Addon({
    required this.name,
    required this.price,
  });
}

class Size{
  final String name;
  final double price;

  Size({
    required this.name,
    required this.price
});
}

// Food Catagory
enum CoffeeCategory
{
  Blended,
  Brew,
  Expresso,
  Filter,
  Flavored,
  Speciality,
}
