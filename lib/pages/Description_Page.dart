import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Coffeemodel/Coffee.dart';
import '../components/components for coffee/Cart_Controller.dart';

class Description_Page extends StatefulWidget {
  final Coffee coffee;
  const Description_Page({Key? key, required this.coffee}) : super(key: key);

  @override
  State<Description_Page> createState() => _Description_PageState();
}

class _Description_PageState extends State<Description_Page> {
  late Set<int> selectedAddons;
  late List<bool> ischeck;
  late List<bool> isCheckSize;
  late int selectedSizeIndex = -1; // Initialize with an invalid index

  @override
  void initState() {
    super.initState();
    ischeck = List<bool>.filled(widget.coffee.addons.length, false);
    isCheckSize = List<bool>.filled(widget.coffee.sizeCategory.length, false);
    selectedAddons = {};
  }

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(widget.coffee.coffeeImagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(top : 20,left: 10,child: Icon(Icons.arrow_back,size: 35,)),
                Positioned(
                  bottom: 0,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: BlurryContainer(
                    borderRadius: BorderRadius.circular(5),
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black.withOpacity(0.5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.coffee.name,
                                style: GoogleFonts.bebasNeue(
                                    fontSize: 40, color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    widget.coffee.rating.toString(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white.withOpacity(0.7),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                    size: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 15.0, horizontal: 7),
              child: Text(
                widget.coffee.coffeeDes,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.4),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 0),
                  itemCount: widget.coffee.addons.length,
                  itemBuilder: (context, index) {
                    Addon addon = widget.coffee.addons[index];
                    return CheckboxListTile(
                      title: Text('${addon.name} - \u20B9${addon.price}'),
                      activeColor: const Color(0xFF014D4E),
                      value: ischeck[index],
                      onChanged: (newValue) {
                        setState(() {
                          ischeck[index] = newValue ?? false;
                          if (newValue!) {
                            selectedAddons.add(index);
                          } else {
                            selectedAddons.remove(index);
                          }
                        });
                      },
                    );
                  },
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 0),
                  itemCount: widget.coffee.sizeCategory.length,
                  itemBuilder: (context, index) {
                    Size sizeCategory = widget.coffee.sizeCategory[index];
                    return CheckboxListTile(
                      title:
                      Text('${sizeCategory.name} - \u20B9${sizeCategory.price}'),
                      activeColor: const Color(0xFF014D4E),
                      value: isCheckSize[index],
                      onChanged: (newValueSize) {
                        setState(() {
                          isCheckSize[index] = newValueSize ?? false;
                          if (newValueSize!) {
                            selectedSizeIndex = index;
                          } else {
                            selectedSizeIndex = -1; // Deselect the size index
                          }
                        });
                      },
                    );
                  },
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: ElevatedButton(
                onPressed: () {
                  // Filter selected addons
                  List<Addon> selected = [];
                  for (int index in selectedAddons) {
                    selected.add(widget.coffee.addons[index]);
                  }
                  // Pass selected addons to CartController
                  cartController.addProduct(widget.coffee, selected);
                },
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
                  "Add To Cart",
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
