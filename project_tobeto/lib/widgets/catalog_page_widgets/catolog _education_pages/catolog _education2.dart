import 'package:flutter/material.dart';

class CatalogEducation2 extends StatelessWidget {
  const CatalogEducation2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 540.0,
      height: 350.0,
      decoration: const BoxDecoration(),
      margin: const EdgeInsets.only(right: 35, left: 40, top: 30),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage('assets/images/video2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 249,
            child: Container(
              width: 340,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 90, 89, 89)
                    .withOpacity(0.9), // Saydamlık ayarı
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          'Gürkan İlişen',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Icon(Icons.access_time_outlined, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          '40 dk',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Sürdürülebilir Bir Dünya için Bireysel Farkındalık ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
