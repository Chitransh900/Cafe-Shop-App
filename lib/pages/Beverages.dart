import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../BeveragesModel/BeveragesCafe.dart';
import '../BeveragesModel/BeveragesClasses.dart';
import '../components/components for Beverages/BevTabBar.dart';
import '../components/components for Beverages/MySliverAppBarforBev.dart';
import '../components/components for Beverages/My_Bev_Tile.dart';
import 'Bevdescription_Page.dart';

class Beverages extends StatefulWidget {
  const Beverages({Key? key}) : super(key: key);
  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> with SingleTickerProviderStateMixin {
  Set<int> selectedAddons = {};
  Set<int> selectedSizeCategories = {};
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: BevCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Beveragess> _filterMenuByCategory(BevCategory category, List<Beveragess> fullMenu) {
    return fullMenu.where((beverage) => beverage.category == category).toList();
  }

  List<Widget> getBevIntoCategory(List<Beveragess> fullMenu) {
    return BevCategory.values.map((category) {
      List<Beveragess> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: categoryMenu.length,
        itemBuilder: (context, index) {
          Beveragess beveragess = categoryMenu[index];
          return My_Bev_Tile(
            beveragess: beveragess,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BevDescription_Page(beveragess: beveragess,)),
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
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (context, bool innerBoxIssScrolled) => [
                MyBevSilverAppBar(
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
                          BevMyTabbar(tabController: _tabController),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
              body: Consumer<Bev>(
                builder: (context, bev, child) => TabBarView(
                  controller: _tabController,
                  children: getBevIntoCategory(bev.menus),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
