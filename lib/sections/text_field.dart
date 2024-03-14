import 'package:flutter/material.dart';

class text_field extends StatelessWidget {
  String title;
  double width;
  double height;
  Color color;
  TextEditingController? controller;
  text_field(
    {
    super.key,
    required this.title,
    required this.width,
    this.height = 40,
    this.color = const Color.fromARGB(255, 123, 123, 123), required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height + 20,
      width: width,
      child: Stack(
        children: [
          Positioned(
            left: 3,
            top: 0,
            child: Text(
              title,
              style: TextStyle(
                color: color, //Color(0xFF7B7B7B),
                fontSize: 15,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 20,
            child: Container(
              decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 252, 252, 255),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 10,
                      offset: Offset(2, 4),
                      spreadRadius: -4,
                    )
                  ]),
              height: height, //40
              width: width, // 340
              child: TextField(
                controller: controller,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 20, bottom: 10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
