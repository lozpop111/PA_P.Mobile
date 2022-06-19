import 'package:flutter/material.dart';
import 'deco.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'item_card.dart';

class checkOutPage extends StatelessWidget {
  final TextEditingController menuController = TextEditingController();
  final TextEditingController porsiController = TextEditingController();
  checkOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffffc60b),
      appBar: AppBar(
        toolbarHeight: 70,
        shadowColor: Colors.black,
        backgroundColor: AppColors.secColor,
        elevation: 10,
        title: Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Check Out",
                style: TextStyle(
                    color: Color(0xff9f0000),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 50,
                width: 50,
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Icon(
                  Icons.shopping_cart,
                  color: Color(0xff9f0000),
                  size: 30,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 2, color: Color(0xff9f0000)),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              // VIEW DATA HERE
              FutureBuilder<QuerySnapshot>(
                future: users.get(),
                builder: (_, snapshot) {
                  return (snapshot.hasData)
                      ? Column(
                          children: snapshot.data!.docs
                              .map(
                                (e) => ItemCard(
                                  e.get('menu'),
                                  e.get('porsi'),
                                  // onUpdate: () {
                                  //   users.doc(e.id).update(
                                  //     {'age': e.get('age') + 1},
                                  //   );
                                  // },
                                  onDelete: () {
                                    users.doc(e.id).delete();
                                  },
                                ),
                              )
                              .toList(),
                        )
                      : Text('Loading...');
                },
              ),
              SizedBox(height: 150)
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration:
                    BoxDecoration(color: AppColors.secColor, boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      offset: Offset(-5, 0),
                      blurRadius: 15,
                      spreadRadius: 3)
                ]),
                width: double.infinity,
                height: 130,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            controller: menuController,
                            decoration:
                                InputDecoration(hintText: "Masukkan Code Menu"),
                          ),
                          TextField(
                            controller: porsiController,
                            decoration: InputDecoration(
                                hintText: "Masukkan jumlah porsi"),
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.mainColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Add Data',
                            style: TextStyle(
                              color: AppColors.secColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            //// ADD DATA HERE
                            users.add(
                              {
                                'menu': menuController.text,
                                'porsi':
                                    int.tryParse(porsiController.text) ?? -1,
                              },
                            );

                            //kosongkan TextField
                            menuController.text = '';
                            porsiController.text = '';
                          }),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
