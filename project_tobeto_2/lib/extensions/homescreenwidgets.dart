import 'package:flutter/material.dart';

class HomeScreenWidget extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const HomeScreenWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Gölge rengi ve şeffaflığı
            spreadRadius: 5, // Gölge yayılma miktarı
            blurRadius: 7, // Gölge bulanıklık miktarı
            offset: Offset(0, 3), // Gölge ofseti
          ),
        ],
        color: Colors.white,
        border: Border(
          left: BorderSide(
            color: Colors.green,
            width: 3.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.done,
                color: Colors.blue,
              ),
              SizedBox(width: 2),
              Text(
                text3,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(
                Icons.done,
                color: Colors.blue,
              ),
              SizedBox(width: 2),
              Text(
                text4,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
