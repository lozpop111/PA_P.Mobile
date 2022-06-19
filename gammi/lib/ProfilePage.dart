import 'package:flutter/material.dart';
import 'package:gammi/signin.dart';
import 'deco.dart';
import 'main.dart';

class profilPage extends StatelessWidget {
  const profilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.secColor,
      appBar: AppBar(
        toolbarHeight: Size.h70,
        shadowColor: Colors.black,
        backgroundColor: AppColors.secColor,
        elevation: 10,
        title: Container(
          child: Container(
            margin: EdgeInsets.only(top: Size.height10, bottom: Size.height10),
            padding: EdgeInsets.only(left: Size.width10, right: Size.width10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: Size.font25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: Size.h50,
                  width: Size.h50,
                  padding:
                      EdgeInsets.only(top: Size.height5, bottom: Size.height5),
                  child: Icon(
                    Icons.person,
                    color: AppColors.mainColor,
                    size: Size.icon30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Size.radius30),
                    border: Border.all(width: 2, color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: Size.logo150,
                width: Size.logo150,
                margin: EdgeInsets.only(top: Size.height10),
                child: Icon(
                  Icons.person,
                  color: AppColors.mainColor,
                  size: Size.icon150,
                ),
              ),
              content(text: "email", icons: Icons.email),
              SizedBox(
                height: Size.h10,
              ),
              content(text: "username", icons: Icons.account_circle),
              SizedBox(
                height: Size.h10,
              ),
              content(text: "no hp", icons: Icons.phone),
              SizedBox(
                height: Size.h10,
              ),
              content(text: "address", icons: Icons.home),
              SizedBox(
                height: Size.h30,
              ),
              Container(
                width: lebar / 2,
                height: Size.h50,
                child: ElevatedButton(
                  onPressed: () {
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: AppColors.mainColor,
                        size: Size.icon30,
                      ),
                      SizedBox(
                        width: Size.width30,
                      ),
                      Text(
                        "Log out",
                        style: TextStyle(
                          fontSize: Size.font18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    side: BorderSide(width: 2, color: AppColors.mainColor),
                    primary: AppColors.secColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Size.radius8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Size.h10,
              ),
              Container(
                width: lebar / 2,
                height: Size.h50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return signin();
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
                    "Sign in",
                    style: TextStyle(
                      fontSize: Size.font18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.mainColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    side: BorderSide(width: 2, color: AppColors.mainColor),
                    primary: AppColors.secColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Size.radius8),
                    ),
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

class content extends StatelessWidget {
  const content({Key? key, required this.icons, required this.text})
      : super(key: key);
  final icons, text;
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          color: AppColors.mainColor,
        ),
        SizedBox(
          width: Size.width15,
        ),
        Container(
          width: lebar / 1.2,
          height: Size.h50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Size.radius8),
            border: Border.all(width: 2, color: AppColors.mainColor),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: Size.font20,
            ),
          ),
        ),
      ],
    );
  }
}
