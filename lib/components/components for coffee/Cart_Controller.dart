import 'package:get/get.dart';
import '../../BeveragesModel/BeveragesClasses.dart';
import '../../Coffeemodel/Coffee.dart';

class CartController extends GetxController {
  final _items = {}.obs;
  final _selectedAddons = <Addon>{}.obs;
  void addProduct(dynamic product , List<Addon> selectedAddon) {
    if (_items.containsKey(product)) {
      _items[product] += 1;
    } else {
      _items[product] = 1;
    }
    _selectedAddons.addAll(selectedAddons);
    String productName = '';

    if (product is Coffee) {
      productName = product.name;
    } else if (product is Beveragess) {
      productName = product.Bevname;
    }

    Get.snackbar(
      "Product Added",
      "You have added the $productName to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  void removeProduct(dynamic product) {
    if (_items.containsKey(product)) {
      if (_items[product] == 1) {
        _items.remove(product);
      } else {
        _items[product] = _items[product] - 1;
      }
    }
    Get.snackbar(
      "Product Added",
      "You have removed the product",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  List<MapEntry<dynamic, int>> get items => _items.entries.map((entry) => MapEntry(entry.key, entry.value as int)).toList();
  List<Addon> get selectedAddons => _selectedAddons.toList();
  double get totalPrice {
    double total = _items.entries.fold(
        0, (previousValue, entry) => previousValue + _calculateItemPrice(entry.key, entry.value));

    // Add addon prices
    total += _selectedAddons.fold(0, (previousValue, addon) => previousValue + addon.price);

    return total;
  }

  double _calculateItemPrice(dynamic product, int quantity) {
    if (product is Coffee) {
      return product.coffeePrice * quantity;
    } else if (product is Beveragess) {
      return product.BevPrice * quantity;
    }
    return 0.0;
  }
  String get total => totalPrice.toStringAsFixed(2);
}
