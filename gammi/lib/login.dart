import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'main.dart';
import 'deco.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              alignment: Alignment.center,
              child: Text(
                "W E L C O M E",
                style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: Size.font35),
              )),
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
                width: tinggi / 2.3,
                padding:
                    EdgeInsets.only(top: Size.height50, bottom: Size.height20),
                child: SlideAction(
                  text: "Slide to Start App",
                  sliderRotate: false,
                  innerColor: Colors.black,
                  outerColor: AppColors.mainColor,
                  borderRadius: Size.radius30,
                  onSubmit: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return mainPage();
                        },
                      ),
                    );
                    Future.delayed(Duration(seconds: 1));
                  },
                  animationDuration: Duration(milliseconds: 500),
                  submittedIcon: Icon(
                    Icons.done_all,
                    color: Colors.white,
                  ),
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
