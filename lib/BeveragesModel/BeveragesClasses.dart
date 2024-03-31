// Coffee Items
class Beveragess
{
  final String BevDes;
  final String Bevname;
  final String BevImagePath;
  final double BevPrice;
  final double Bevrating;
  final BevCategory category;
  final List<BevAddon> addons;
  final List<BevSize> sizeCategory;
  final int quantity;



  Beveragess( {
    required this.BevDes,
    required this.BevImagePath,
    required this.category,
    required this.Bevname,
    required this.BevPrice,
    required this.Bevrating,
    required this.addons,
    required this.sizeCategory,
    required this.quantity,
  });

}

class BevAddon {
  final String name;
  final double price;

  BevAddon({
    required this.name,
    required this.price,
  });
}

class BevSize{
  final String name;
  final double price;

  BevSize({
    required this.name,
    required this.price
  });
}

// Food Catagory
enum BevCategory
    {
  Tea,
  Iced,
  Bakery,
  Shakes,
  Drinks,
}
