import 'package:cafe_shop/components/My_Drawer_Tiles.dart';
import 'package:cafe_shop/pages/Beverages.dart';
import 'package:cafe_shop/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  void logout()
  {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Icon(Icons.coffee,size: 80,),
          ),
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Divider(),
          ),
          MyDrawerTile(text: "H O M E",icon: Icons.home,onTap: () => Navigator.pop(context)),
          MyDrawerTile(text: "B E V E R A G E S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const Beverages(),
              ),
              );
            }
            ),
          const Spacer(),
          MyDrawerTile(text: "L O G O U T",icon: Icons.logout,onTap: logout,),
          const SizedBox(height: 25,)
        ],
      ),
    );
  }
}
