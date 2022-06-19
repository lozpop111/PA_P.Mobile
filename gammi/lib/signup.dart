import 'package:flutter/material.dart';
import 'package:gammi/signin.dart';
import 'deco.dart';
import 'main.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.secColor,
      body: ListView(
        children: [
          Column(
            children: [
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
                height: Size.h30,
              ),
              form(
                  hintText: "********@gmail.com",
                  label: "email",
                  icon: Icons.email),
              SizedBox(
                height: Size.h10,
              ),
              form(
                  hintText: "masukkan usernamae",
                  label: "username",
                  icon: Icons.account_circle),
              SizedBox(
                height: Size.h10,
              ),
              form(
                  hintText: "masukkan password",
                  label: "password",
                  icon: Icons.key),
              SizedBox(
                height: Size.h10,
              ),
              form(
                  hintText: "+628*********", label: "no hp", icon: Icons.phone),
              SizedBox(
                height: Size.h10,
              ),
              form(
                  hintText: "masukkan alamat",
                  label: "address",
                  icon: Icons.home),
              SizedBox(
                height: Size.h30,
              ),
              Container(
                width: lebar / 2,
                height: Size.h50,
                child: ElevatedButton(
                  onPressed: () {
                    final mySnackBar = SnackBar(
                      content: Text(
                        "Sign up Success !!!",
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
                    // setState((_) {
                    //   // nama = controllerNama.text;
                    //   // tlahir = controllerTlahir.text;
                    //   // tglahir = controllertglahir.text;
                    //   // wa = controllerWa.text;
                    // });
                    // Navigator.pushNamed(context, linkk);
                  },
                  child: Text(
                    "Sign up",
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
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return signin();
                      },
                    ),
                  );
                },
                child: Text("Have an account?"),
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
    );
  }
}

class form extends StatelessWidget {
  const form(
      {Key? key,
      required this.hintText,
      required this.label,
      required this.icon})
      : super(key: key);
  final hintText, label, icon;

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Container(
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
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.mainColor),
          labelText: label,
          labelStyle: TextStyle(color: AppColors.mainColor),
          icon: Icon(
            icon,
            color: AppColors.mainColor,
          ),
          // border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
