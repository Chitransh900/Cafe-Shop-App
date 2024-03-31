
import 'package:flutter/material.dart';

import '../../Coffeemodel/Coffee.dart';

class MyTabbar extends StatelessWidget {
  final TabController tabController;
  const MyTabbar({super.key, required this.tabController
  }
  );

  // Converting tabular tabs to catagory to access menu

  List<Tab> _buildCatagoryTabs()
  {
    return CoffeeCategory.values.map((category)
    {
      return Tab
        (
        text: category.toString().split(".").last,
    );
    }
    ).toList();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        tabs: _buildCatagoryTabs(),
        labelStyle: TextStyle(color: Theme.of(context).colorScheme.inverseSurface.withOpacity(0.5),fontWeight: FontWeight.bold),
        indicatorColor: const Color(0xFF036667),
      ),
    );
  }
}
