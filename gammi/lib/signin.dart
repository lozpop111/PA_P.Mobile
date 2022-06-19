import 'package:flutter/material.dart';
import 'package:gammi/main.dart';
import 'deco.dart';
import 'signup.dart';

class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.secColor,
      body: ListView(
        children: [
          Column(
            children: [
              //header
              Container(
                height: Size.logo200,
                width: Size.logo200,
                margin: EdgeInsets.only(top: Size.height20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo-rm.png"),
                  ),
                ),
              ),
              SizedBox(
                height: Size.h20,
              ),
              Container(
                width: lebar,
                margin: EdgeInsets.only(left: Size.width20),
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: Size.font36,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                width: lebar,
                margin: EdgeInsets.only(left: Size.width20),
                child: Text(
                  "Sign into your account",
                  style: TextStyle(
                    fontSize: Size.font18,
                    color: AppColors.mainColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: Size.h30,
              ),
              Container(
                alignment: Alignment.center,
                width: lebar / 1.1,
                height: Size.h50,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Size.radius8),
                      borderSide: BorderSide(
                        color: AppColors.mainColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Size.radius8),
                      borderSide: BorderSide(
                        color: AppColors.mainColor,
                        width: 1.5,
                      ),
                    ),
                    hintText: "masukkan Username",
                    hintStyle: TextStyle(color: AppColors.mainColor),
                    labelText: "Username",
                    labelStyle: TextStyle(color: AppColors.mainColor),
                    icon: Icon(
                      Icons.account_circle,
                      color: AppColors.mainColor,
                    ),
                    // border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: Size.h10,
              ),
              Container(
                alignment: Alignment.center,
                width: lebar / 1.1,
                height: Size.h50,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Size.radius8),
                      borderSide: BorderSide(
                        color: AppColors.mainColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Size.radius8),
                      borderSide: BorderSide(
                        color: AppColors.mainColor,
                        width: 1.5,
                      ),
                    ),
                    hintText: "masukkan Password",
                    hintStyle: TextStyle(color: AppColors.mainColor),
                    labelText: "Password",
                    labelStyle: TextStyle(color: AppColors.mainColor),
                    icon: Icon(
                      Icons.key,
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Size.h30,
              ),
              Container(
                width: lebar,
                margin: EdgeInsets.only(right: Size.width20),
                child: Text(
                  "Sign into your account",
                  style: TextStyle(
                    fontSize: Size.font18,
                    color: AppColors.mainColor,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(
                height: Size.h40,
              ),
              Container(
                width: lebar / 2,
                height: Size.h50,
                child: ElevatedButton(
                  onPressed: () {
                    final mySnackBar = SnackBar(
                      content: Text(
                        "Sign in Success !!!",
                        style: TextStyle(
                          fontSize: Size.font18,
                          color: AppColors.secColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      duration: Duration(seconds: 3),
                      backgroundColor: AppColors.mainColor,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return mainPage();
                        },
                      ),
                    );
                    // Navigator.pushNamed(context, linkk);
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: Size.font17,
                      fontWeight: FontWeight.bold,
                      color: AppColors.mainColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    side: BorderSide(width: 1, color: AppColors.mainColor),
                    primary: AppColors.secColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Size.radius8),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don`t have account?",
                    style: TextStyle(
                      fontSize: Size.font16,
                      color: AppColors.mainColor,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return signup();
                          },
                        ),
                      );
                    },
                    child: Text("Create"),
                    style: TextButton.styleFrom(
                      primary: AppColors.mainColor,
                      textStyle: TextStyle(
                        fontSize: Size.font16,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
