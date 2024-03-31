import 'package:flutter/material.dart';
import 'TilesForCart.dart';
class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySilverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
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
