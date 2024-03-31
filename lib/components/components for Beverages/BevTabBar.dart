
import 'package:cafe_shop/BeveragesModel/BeveragesClasses.dart';
import 'package:flutter/material.dart';
class BevMyTabbar extends StatelessWidget {
  final TabController tabController;
  const BevMyTabbar({super.key, required this.tabController
  }
      );
  List<Tab> _buildCatagoryTabs()
  {
    return BevCategory.values.map((category)
    {
      return Tab
        (
        text: category.toString().split(".").last,
      );
    }
    ).toList();
  }

  @override
  Widget build( context) {
    return Container(
      child: TabBar(controller: tabController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        tabs: _buildCatagoryTabs(),
        labelStyle: TextStyle(color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold),
        indicatorColor: const Color(0xFF036667),
      ),
    );
  }
}
