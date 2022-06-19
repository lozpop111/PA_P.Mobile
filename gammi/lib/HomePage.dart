import 'package:flutter/material.dart';
import 'package:gammi/deco.dart';
import 'deco.dart';
import 'detailPage.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

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
          margin: EdgeInsets.only(top: Size.height10, bottom: Size.height10),
          padding: EdgeInsets.only(left: Size.width10, right: Size.width10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Gammi Food",
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Size.radius30),
                  image: DecorationImage(
                    image: AssetImage("assets/logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              //header
              SizedBox(
                height: Size.h10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    combo(
                      comboGambar: "assets/combo1.png",
                      textt: "Order Here !",
                      text: "Combo 1",
                      subtext:
                          "Mau kenyang hemat dan cukup buat makan dan free es teh. Buruan order paket combo 1 ,Hanya Rp. 15.000\n\n*Hanya tersedia untuk delivery order dan take away. (Code menu: C1)",
                    ),
                    combo(
                      comboGambar: "assets/combo2.png",
                      textt: "Order Here !",
                      text: "Combo 2",
                      subtext:
                          "Mau kenyang hemat dan cukup buat makan bertiga sambil ngobrol-ngobrol. Buruan order paket combo 2, Hanya Rp.35.000\n\n*Hanya tersedia untuk delivery order dan take away. (Code menu: C2)",
                    ),
                    combo(
                      comboGambar: "assets/combo3.png",
                      textt: "Order Here !",
                      text: "Combo 3",
                      subtext:
                          "Mau kenyang hemat dan cukup buat makan berlima sambil ngobrol-ngobrol. Buruan order paket combo 3 , Hanya Rp.60.000.\n\n*Hanya tersedia untuk delivery order dan take away. (Code menu: C3)",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Size.h20,
              ),
              Container(
                margin: EdgeInsets.only(left: Size.width15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.list,
                      color: AppColors.mainColor,
                      size: Size.font25,
                    ),
                    SizedBox(
                      height: Size.h10,
                      width: Size.h5,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: Size.height3),
                      child: Text("List",
                          style: TextStyle(color: AppColors.mainColor)),
                    ),
                    SizedBox(
                      width: Size.h10,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: Size.height6),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Size.h10,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: Size.height3),
                      child: Text(
                        "Food",
                        style: TextStyle(color: AppColors.mainColor),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Size.h10,
              ),
              listt(
                gambar: "assets/1.png",
                menu: "Gammi Bawis",
                subtext: "Detail in there >>",
                subdetail:
                    "Gammi bawis berarti sambal ikan bawis. Sambal ini merupakan sambal asli Bontang yang diolah dari bawang merah, cabe merah keriting, cabe rawit, gula dan garam, serta minyak goreng. Selain disajikan dengan ikan bawis, sambal gammi juga cocok bersanding dengan sumber protein lainnya, seperti ayam, cumi, dan udang.\n\n*Hanya tersedia untuk delivery order dan take away. (Code menu: F1)\n\n* Price = Rp 20.000",
              ),
              SizedBox(
                height: Size.h10,
              ),
              listt(
                gambar: "assets/2.png",
                menu: "Gammi Ikan Nila",
                subtext: "Detail in there >>",
                subdetail:
                    "Gami Ikan Nila ini paling mantap disantap dengan kerupuk dan nasi panas, sambal gammi Ikan Nila  juga cocok bersanding dengan sumber protein lainnya.\n\n*Hanya tersedia untuk delivery order dan take away. (Code menu: F2)\n\n* Price = Rp 18.000",
              ),
              SizedBox(
                height: Size.h10,
              ),
              listt(
                gambar: "assets/3.png",
                menu: "Gammi Ikan Kembung",
                subtext: "Detail in there >>",
                subdetail:
                    "Gammi ikan kembung ini merupakan Sambal khas Bontang merupakan salah satu sambal paling favorit. Bahannya simple, meresap ke protein. Gammi ikan kembung ini biasa nya banyak sekali di luar pulau Kalimantan karena di luar pulau Kalimantan sangat jarang ada ikan bawis.\n\n*Hanya tersedia untuk delivery order dan take away. (Code menu: F3)\n\n* Price = Rp 18.000",
              ),
              SizedBox(
                height: Size.h10,
              ),
              listt(
                gambar: "assets/4.png",
                menu: "Gammi Cumi",
                subtext: "Detail in there >>",
                subdetail:
                    "Gami Cumi ini paling mantap disantap dengan kerupuk dan nasi panas, yuk mulai lestarikan santapan makanan tradisional untuk sajian makan bersama keluarga.\n\n*Hanya tersedia untuk delivery order dan take away. (Code menu: F4)\n\n* Price = Rp 20.000",
              ),
              SizedBox(
                height: Size.h10,
              ),
              listt(
                gambar: "assets/5.png",
                menu: "Gammi Telur",
                subtext: "Detail in there >>",
                subdetail:
                    "Untuk menyajikan menu santapan sahur tidak perlu sesuatu yang ribet.Adapun resep yang simpel, cocok untuk jadi menu santapan sahur di bulan Ramadhan.Dijamin, sambal gami telur orak arik ini bisa bikin mata melek, jadi nggak ngantuk saat sahur.\n\n*Hanya tersedia untuk delivery order dan take away. (Code menu: F5)\n\n* Price = Rp 15.000",
              ),
              SizedBox(
                height: Size.h10,
              ),
              listt(
                gambar: "assets/6.png",
                menu: "Gammi Kerang",
                subtext: "Detail in there >>",
                subdetail:
                    "Gammi Kerang merupakan sambal khas daerah Bontang, Kaltim. banyak yang memadukan sambal ini dengan  aneka seafood lainnya seperti kerang, udang, cumi, atau bahkan dengan telur dan ayam. Gammi Kerang ini  lezaatt dimakan di siang terik.\n\n*Hanya tersedia untuk delivery order dan take away.  (Code menu: F6)\n\n* Price = Rp 20.000",
              ),
              SizedBox(
                height: Size.h25,
              ),
              Container(
                margin: EdgeInsets.only(left: Size.width15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.list,
                      color: AppColors.mainColor,
                      size: Size.icon25,
                    ),
                    SizedBox(
                      height: Size.h10,
                      width: Size.h5,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: Size.height3),
                      child: Text("List",
                          style: TextStyle(color: AppColors.mainColor)),
                    ),
                    SizedBox(
                      width: Size.h5,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: Size.height6),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Size.h10,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: Size.height3),
                      child: Text(
                        "Drink",
                        style: TextStyle(color: AppColors.mainColor),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Size.h10,
              ),
              listt(
                gambar: "assets/teh.png",
                menu: "Teh",
                subtext: "With ice / without ice",
                subdetail:
                    "Es teh  adalah teh yang didinginkan dengan es batu. Es teh sering kali ditambahkan rasa seperti melati, dan buah-buahan seperti limun, ceri, dan arbei, atau susu.\n\n* Price = Rp 5.000  (Code menu: D1)",
              ),
              SizedBox(
                height: Size.h10,
              ),
              listt(
                gambar: "assets/jeruk.png",
                menu: "Jeruk",
                subtext: "With ice / without ice",
                subdetail:
                    "Es jeruk menjadi salah satu minuman yang cukup menyegarkan dan menjadi teman saat santap siang. Minuman ini terbuat dari perasan air buah jeruk yang dicampur dengan satu sendok gula pasir, air dan juga es batu.\n\n* Price = Rp 5.000  (Code menu: D2)",
              ),
              SizedBox(
                height: Size.h10,
              ),
              listt(
                gambar: "assets/tehtarik.png",
                menu: "Teh Tarik",
                subtext: "With ice / without ice",
                subdetail:
                    "Teh tarik adalah minuman manis berupa campuran teh dan susu yang lazim ditemukan di daerah Asia Tenggara, khususnya Indonesia, Malaysia, dan Singapura.\n\n* Price = Rp 7.000  (Code menu: D3)",
              ),
              SizedBox(
                height: Size.h20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class combo extends StatelessWidget {
  const combo(
      {Key? key,
      required this.comboGambar,
      required this.textt,
      required this.subtext,
      required this.text})
      : super(key: key);
  final comboGambar, textt, subtext, text;
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: lebar / 2.2,
          height: Size.h210,
          padding: EdgeInsets.only(bottom: Size.height20),
          margin: EdgeInsets.only(
              left: Size.width8, right: Size.width8, bottom: Size.height10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Size.radius30),
            border: Border.all(width: 3, color: AppColors.mainColor),
            color: AppColors.mainColor,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage(comboGambar),
            ),
          ),
        ),
        Positioned(
          top: Size.h180,
          right: Size.h10,
          left: Size.h10,
          child: Container(
            width: lebar / 2.2,
            height: Size.h40,
            margin: EdgeInsets.only(left: Size.width8, right: Size.width8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return detail(
                          text: text, subtext: subtext, gambar: comboGambar);
                    },
                  ),
                );
                // Navigator.pushNamed(context, linkk);
              },
              child: Text(
                textt,
                style: TextStyle(
                    color: AppColors.mainColor, fontSize: Size.font22),
              ),
              style: ElevatedButton.styleFrom(
                side: BorderSide(width: 2, color: AppColors.mainColor),
                primary: AppColors.secColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Size.radius15),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class listt extends StatelessWidget {
  const listt({
    Key? key,
    required this.gambar,
    required this.menu,
    required this.subtext,
    required this.subdetail,
  }) : super(key: key);
  final gambar, menu, subtext, subdetail;
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: Size.h350,
          height: Size.h90,
          margin: EdgeInsets.only(right: Size.width30, left: Size.width10),
          decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(Size.radius20)),
        ),
        Positioned(
          top: Size.h5,
          bottom: Size.h5,
          right: Size.h35,
          child: Container(
            alignment: Alignment.centerLeft,
            width: Size.h290,
            height: Size.h80,
            padding: EdgeInsets.only(left: Size.width40),
            decoration: BoxDecoration(
              color: AppColors.secColor,
              borderRadius: BorderRadius.circular(Size.radius20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menu,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Size.font20,
                    color: AppColors.mainColor,
                  ),
                ),
                SizedBox(
                  height: Size.h5,
                ),
                Text(
                  subtext,
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: Size.font17,
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 1,
          top: 1,
          bottom: 1,
          child: Container(
            width: Size.h80,
            height: Size.h88,
            margin: EdgeInsets.only(left: Size.width10, right: Size.width10),
            decoration: BoxDecoration(
              // color: Color(0xffffc60b),
              borderRadius: BorderRadius.circular(Size.radius20),
              border: Border.all(width: 2, color: AppColors.mainColor),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(gambar),
              ),
            ),
          ),
        ),
        Positioned(
          right: Size.h10,
          top: Size.h15,
          bottom: Size.h15,
          child: Container(
            width: Size.h55,
            margin: EdgeInsets.only(
              top: Size.width5,
              bottom: Size.width5,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return detail(
                          text: menu, subtext: subdetail, gambar: gambar);
                    },
                  ),
                );
                // Navigator.pushNamed(context, linkk);
              },
              child: Icon(
                Icons.add,
                color: AppColors.secColor,
                size: Size.icon26,
              ),
              style: ElevatedButton.styleFrom(
                primary: AppColors.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Size.radius15),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
