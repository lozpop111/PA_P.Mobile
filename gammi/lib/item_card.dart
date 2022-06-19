import 'package:flutter/material.dart';
import 'deco.dart';

class ItemCard extends StatelessWidget {
  final String menu;
  final int porsi;
  //// Pointer to Update Function
  // final Function? onUpdate;
  //// Pointer to Delete Function
  final Function? onDelete;

  ItemCard(this.menu, this.porsi, {this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.mainColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  menu,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                "$porsi porsi",
              ),
            ],
          ),
          // Row(
          //   children: [
          //     SizedBox(
          //       height: 40,
          //       width: 60,
          //       child: ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             shape: CircleBorder(),
          //             primary: Colors.green[900],
          //           ),
          //           child: Center(
          //               child: Icon(
          //             Icons.arrow_upward,
          //             color: Colors.white,
          //           )),
          //           onPressed: () {
          //             if (onUpdate != null) onUpdate!();
          //           }),
          //     ),
          SizedBox(
            height: 40,
            width: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: AppColors.mainColor,
              ),
              child: Center(
                  child: Icon(
                Icons.delete,
                color: Colors.white,
              )),
              onPressed: () {
                if (onDelete != null) onDelete!();
              },
            ),
          ),
          //   ],
          // )
        ],
      ),
    );
  }
}
