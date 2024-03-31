import 'package:cafe_shop/Theme/ThemeProvider.dart';
import 'package:cafe_shop/firebase_options.dart';
import 'package:cafe_shop/pages/StartPage.dart';
import 'package:cafe_shop/services/auth/auth_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'BeveragesModel/BeveragesCafe.dart';
import 'Coffeemodel/cafe.dart';
import 'components/components for coffee/Cart_Controller.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => Cafe()),
        ChangeNotifierProvider(create: (context) => Bev()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const StartPage(),
      // theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
    );
  }
}
class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CartController(),);
  }
}
