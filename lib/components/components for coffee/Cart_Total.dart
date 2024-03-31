import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Cart_Controller.dart';
class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();

  CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,bottom: 10),
          child: Row(
            children: [
              Text(
                'Total',
                style: GoogleFonts.bebasNeue(fontSize: 30, color: Colors.black),
              ),
              Text(
                '${controller.total ?? 0}',
                style: GoogleFonts.bebasNeue(fontSize: 30, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
