import 'package:flutter/material.dart';

import '../components for coffee/TilesForCart.dart';
class MyBevSilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MyBevSilverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(context) {
    return SliverAppBar(
      expandedHeight: 400,
      collapsedHeight: 200,
      floating: true,
      title: title,
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  TilesForAddToCart()
            )
            );
          },
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: child,
      ),
    );
  }
}
