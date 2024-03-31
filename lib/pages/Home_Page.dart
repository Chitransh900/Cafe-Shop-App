import 'package:cafe_shop/components/MenuSlide.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Coffeemodel/Coffee.dart';
import '../Coffeemodel/cafe.dart';
import '../components/components for coffee/My_Coffee_Tile.dart';
import '../components/components for coffee/My_SilverAppBar.dart';
import '../components/components for coffee/Mytabbar.dart';
import '../components/components for coffee/NavigationBar.dart';
import 'Beverages.dart';
import 'Description_Page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  Set<int> selectedAddons = {};
  Set<int> selectedSizeCategories = {};
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: CoffeeCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Coffee> _filterMenuByCategory(CoffeeCategory category, List<Coffee> fullMenu) {
    return fullMenu.where((coffee) => coffee.category == category).toList();
  }

  List<Widget> getCoffeeIntoCategory(List<Coffee> fullMenu) {
    return CoffeeCategory.values.map((category) {
      List<Coffee> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: categoryMenu.length,
        itemBuilder: (context, index) {
          Coffee coffee = categoryMenu[index];
          return MyCoffeeTile(
            coffee: coffee,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Description_Page(coffee: coffee)),
              );
            },
          );
        },
      );
    }).toList();
  }

  void onTapToChangeBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build( context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: ( context, bool innerBoxIsScrolled) => [
                MySilverAppBar(
                  title: const Text(""),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 50),
                        child: Text(
                          "Coffee Calling: Your First Sip Awaits.",
                          style: GoogleFonts.bebasNeue(fontSize: 40, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF014D4E),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 150,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.all(25),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Get 32% Promo",
                                  style: GoogleFonts.dmSerifDisplay(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF036667),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Redeem Now",
                                          style: GoogleFonts.dmSerifDisplay(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Column(
                        children: [
                          MyTabbar(tabController: _tabController),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
              body: Consumer<Cafe>(
                builder: (context, cafe, child) => TabBarView(
                  controller: _tabController,
                  children: getCoffeeIntoCategory(cafe.menu),
                ),
              ),
            ),
          ),
          const Beverages(),
        ],
      ),
      bottomNavigationBar: NavigationBars(onTap: onTapToChangeBar),
    );
  }
}
