import 'package:flutter/material.dart';

class ServiceWidget {
  Widget serviceNames(String title, double height, double width, Color color) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      child: Center(
          child: Text(title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: height * 0.35,
              ))),
    );
  }

  Widget services(double height, double width, String imagePath1,
      String imagePath2, String details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //image section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath1), fit: BoxFit.fill)),
              //child:
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath2), fit: BoxFit.fill)),
              //child:
            ),
          ],
        ),
        SizedBox(height: height * 0.12),
        //detail section
        Text(
          "Details",
          style:
              TextStyle(fontWeight: FontWeight.w500, fontSize: height * 0.09),
        ),
        SizedBox(height: height * 0.08),
        Text(
          details,
          style: TextStyle(fontSize: height * 0.075),
        )
      ],
    );
  }
}
