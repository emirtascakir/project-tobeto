import 'package:flutter/material.dart';

class CatalogEducation extends StatelessWidget {
  const CatalogEducation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.0,
      height: 290.0,
      decoration: const BoxDecoration(),
      margin: const EdgeInsets.only(right: 35, left: 40, top: 30),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: const DecorationImage(
                image: AssetImage('assets/images/video1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            top: 4,
            right: 10,
            child: Icon(
              Icons.play_circle_fill_rounded,
              color: Color.fromRGBO(224, 50, 255, 1),
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
