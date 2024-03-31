import   'package:cafe_shop/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../../BeveragesModel/BeveragesClasses.dart';
import '../../Coffeemodel/Coffee.dart';
import 'Cart_Controller.dart';
import 'Cart_Total.dart';

class TilesForAddToCart extends StatelessWidget {
  final CartController controller = Get.find();

  TilesForAddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: controller.items.isEmpty
                  ?  Center(
                 child: Lottie.asset("lib/images/Animation(cart).json",
                    repeat: true,
                    height: 270,
                    fit: BoxFit.cover
                ),
              )
                  : ListView.builder(
                shrinkWrap: true,
                itemCount: controller.items.length,
                itemBuilder: (BuildContext context, int index) {
                  final productEntry = controller.items[index];
                  final product = productEntry.key;
                  final quantity = productEntry.value;
                  List<Addon> selectedAddons = [];
                  if (product is Coffee) {
                    selectedAddons = controller.selectedAddons
                        .where((addon) => product.addons.contains(addon))
                        .toList();
                  }
                  return Column(
                    children: [
                      CartProduct(
                        controller: controller,
                        quantity: quantity,
                        product: product,
                      ),
                      const SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 10,),
            CartTotal(),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentPage()
                )),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Color(0xFF014D4E)),
                  elevation: MaterialStateProperty.all<double>(15),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Text(
                  "CheckOut",
                  style: GoogleFonts.aBeeZee(
                      fontSize: 25, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class CartProduct extends StatelessWidget {
  final CartController controller;
  final dynamic product;
  final int quantity;

  const CartProduct({
    Key? key,
    required this.product,
    required this.controller,
    required this.quantity,
  }) : super(key: key);

  List<Addon> get selectedAddons => [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  (product is Coffee)
                      ? product.coffeeImagePath
                      : (product is Beveragess)
                      ? product.BevImagePath
                      : '',
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: Text(
                  (product is Coffee)
                      ? product.name
                      : (product is Beveragess)
                      ? product.Bevname
                      : '',
                  style: GoogleFonts.bebasNeue(fontSize: 25, color: Colors.black),
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.removeProduct(product);
                },
                icon: const Icon(Icons.remove_circle, size: 30,),
              ),
              Text(
                '$quantity',
                style: GoogleFonts.bebasNeue(fontSize: 25, color: Colors.black),
              ),
              IconButton(
                onPressed: () {
                  controller.addProduct(product, selectedAddons);
                },
                icon: const Icon(Icons.add_circle, size: 30,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
