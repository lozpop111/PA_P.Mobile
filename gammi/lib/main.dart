import 'package:flutter/material.dart';
import 'package:gammi/HomePage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
import 'SplashScreen.dart';
import 'HomePage.dart';
import 'CheckOut.dart';
import 'ProfilePage.dart';
import 'deco.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  static final List<Widget> _pages = [
    homePage(),
    checkOutPage(),
    profilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // print("current height is" + MediaQuery.of(context).size.height.toString());
    // print("current height is" + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: Size.h50,
        items: <Widget>[
          bottomItem(title: "Home", index: 0, icon: Icons.home),
          bottomItem(title: "CheckOut", index: 1, icon: Icons.shopping_cart),
          bottomItem(title: "Profile", index: 2, icon: Icons.person),
        ],
        color: AppColors.mainColor,
        buttonBackgroundColor: AppColors.mainColor,
        backgroundColor: AppColors.secColor,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (index) {
          setState(
            () {
              _page = index;
            },
          );
        },
        letIndexChange: (index) => true,
      ),
      body: _pages.elementAt(_page),
    );
  }

  Widget bottomItem(
      {required int index, required String title, required IconData icon}) {
    if (index == _page) {
      return Icon(
        icon,
        size: Size.icon26,
        color: Colors.white,
      );
    } else {
      return Padding(
        padding: EdgeInsets.only(top: Size.height6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: Size.icon22,
              color: Colors.white,
            ),
            SizedBox(height: Size.height5),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      );
    }
  }
}
