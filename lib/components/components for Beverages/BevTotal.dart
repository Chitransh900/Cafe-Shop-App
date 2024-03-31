import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components for coffee/Cart_Controller.dart';

class Bev_Total extends StatelessWidget {
  final CartController controller = Get.find();

  Bev_Total({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => SizedBox(
        height: 50,
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
    );
  }
}
