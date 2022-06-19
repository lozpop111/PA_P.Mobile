import 'package:flutter/material.dart';
import 'dart:async'; //biar bisa menggunakan timer
import 'login.dart';
import 'deco.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Get.off(LoginPage());
      //   Navigator.pushReplacement(
      //       context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: tinggi / 3,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Container(
            height: tinggi / 3,
            width: tinggi / 3,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/logo.png"),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: tinggi / 6,
                padding:
                    EdgeInsets.only(top: Size.height45, bottom: Size.height50),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
              Container(
                height: tinggi / 6,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(255, 255, 100, 60),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
