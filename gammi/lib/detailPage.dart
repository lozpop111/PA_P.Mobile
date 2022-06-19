import 'package:flutter/material.dart';
import 'package:gammi/main.dart';
import 'package:get/get.dart';
import 'deco.dart';

class detail extends StatelessWidget {
  detail({
    Key? key,
    required this.text,
    required this.subtext,
    required this.gambar,
  }) : super(key: key);
  final subtext, text, gambar;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.secColor,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: height / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(gambar),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 15,
            child: iconbutton(icon: Icons.arrow_back_ios),
          ),
          Positioned(
            top: height / 2.2,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: Size.width20, right: Size.width20, top: Size.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Size.radius20),
                    topLeft: Radius.circular(Size.radius20),
                  ),
                  color: AppColors.secColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Size.font35,
                      color: AppColors.mainColor,
                    ),
                  ),
                  SizedBox(
                    height: Size.height20,
                  ),
                  Text(
                    subtext,
                    style: TextStyle(
                      fontSize: Size.font18,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.only(
            top: Size.h10,
            bottom: Size.h10,
            left: Size.width20,
            right: Size.width20),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Size.radius20 * 1.5),
            topRight: Radius.circular(Size.radius20 * 1.5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: Size.h150,
              padding: EdgeInsets.only(
                  top: Size.height5,
                  bottom: Size.height5,
                  left: Size.width10,
                  right: Size.width10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Size.radius20),
                color: Colors.white70,
              ),
              child: item(),
            ),
            Container(
              width: Size.h150,
              height: Size.h80,
              child: ElevatedButton(
                onPressed: () {
                  final mySnackBar = SnackBar(
                    content: Text(
                      "Success add to chart !!!",
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
                  Get.back();
                  // Navigator.pop(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) {
                  //       return mainPage();
                  //     },
                  //   ),
                  // );
                  // Navigator.pushNamed(context, linkk);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: AppColors.mainColor,
                    ),
                    SizedBox(
                      width: Size.width10 / 2,
                    ),
                    Text(
                      "Add to Chart",
                      style: TextStyle(
                        color: AppColors.mainColor,
                      ),
                    ),
                    SizedBox(
                      width: Size.width10 / 2,
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  side: BorderSide(width: 1, color: AppColors.mainColor),
                  primary: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Size.radius20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //     ],
      //   ),
      // ),
    );
  }
}

class iconbutton extends StatelessWidget {
  final IconData icon;
  iconbutton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Size.h40,
      height: Size.h40,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (_) {
                return mainPage();
              },
            ),
          );
          // Navigator.pushNamed(context, linkk);
        },
        child: Icon(
          icon,
          color: Colors.black,
          size: Size.font18,
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white60,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Size.radius20),
          ),
        ),
      ),
    );
  }
}

class item extends StatefulWidget {
  const item({Key? key}) : super(key: key);

  @override
  State<item> createState() => _itemState();
}

class _itemState extends State<item> {
  int _angka = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 40,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _angka--;
              });
            },
            child: Icon(
              Icons.remove,
              color: AppColors.mainColor,
              size: 24,
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(right: 0.5),
              primary: Colors.white38,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Size.radius20),
              ),
            ),
          ),
        ),
        Text(
          '$_angka',
          style: TextStyle(
            fontSize: Size.font25,
            color: AppColors.mainColor,
          ),
        ),
        Container(
          width: 40,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              setState(
                () {
                  _angka++;
                },
              );
            },
            child: Icon(
              Icons.add,
              color: AppColors.mainColor,
              size: 24,
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(right: 0.5),
              primary: Colors.white38,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Size.radius20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
