import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/homescreenwidgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150,
              height: 150,
              child: Image.asset(
                'assets/images/tobeto-logo.png',
              ),
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("TOBETO",
                      style: TextStyle(
                          color: Color(0xFF9933FF),
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Text("'ya hoş geldin",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 20))
                ],
              ),
              Text("Sema",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 600,
                height: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.2), // Gölge rengi ve şeffaflığı
                        spreadRadius: 5, // Gölge yayılma miktarı
                        blurRadius: 7, // Gölge bulanıklık miktarı
                        offset: Offset(0, 3), // Gölge ofseti
                      ),
                    ],
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/icon.png'), // Görselinizin dosya yolunu buraya ekleyin
                          fit: BoxFit.cover, // Görselin uyum şekli
                        ),
                      ),
                    ),
                    Text(
                        'Ücretsiz eğitimlerle geleceğin\nmesleklerin de sen de yerini al.',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                    SizedBox(height: 10),
                    Text('Aradığın "iş" Burada!',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Başvurularım',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 2,
                              color: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('Eğitimlerim',
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13)),
                            Container(
                              width: 100,
                              height: 2,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Duyuru ve Haberlerim',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('Anketlerim',
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    HomeScreenWidget(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      text1: "İstanbul Kodluyor",
                      text2: "Bilgilendirme",
                      text3: "İstanbul Kodluyor Başvuru Formu\n onaylandı",
                      text4:
                          "İstanbul Kodluyor Belge yükleme\n formu onaylandı",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 600,
                height: 300,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.2), // Gölge rengi ve şeffaflığı
                        spreadRadius: 5, // Gölge yayılma miktarı
                        blurRadius: 7, // Gölge bulanıklık miktarı
                        offset: Offset(0, 3), // Gölge ofseti
                      ),
                    ],
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sınavlarım",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(
                                  0.2), // Gölge rengi ve şeffaflığı
                              spreadRadius: 5, // Gölge yayılma miktarı
                              blurRadius: 7, // Gölge bulanıklık miktarı
                              offset: Offset(0, 3), // Gölge ofseti
                            ),
                          ],
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Herkes için\nKodlama 1D\nDeğerlendirme\nSınavı",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Icon(Icons.done),
                            ],
                          ),
                          Text("Herkes için\nkodlama-1D",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.alarm,
                                color: Color(0xFF9933FF),
                              ),
                              Text(" 45 Dakika",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  width: 500,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple
                            .withOpacity(0.2), // Gölge rengi ve şeffaflığı
                        spreadRadius: 5, // Gölge yayılma miktarı
                        blurRadius: 7, // Gölge bulanıklık miktarı
                        offset: Offset(0, 3), // Gölge ofseti
                      ),
                    ],
                    color: Color(0xFF9933FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Profilini oluştur',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "başla",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  width: 500,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple
                            .withOpacity(0.2), // Gölge rengi ve şeffaflığı
                        spreadRadius: 5, // Gölge yayılma miktarı
                        blurRadius: 7, // Gölge bulanıklık miktarı
                        offset: Offset(0, 3), // Gölge ofseti
                      ),
                    ],
                    color: Color(0xFF9933FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Profilini oluştur',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "başla",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  width: 500,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple
                            .withOpacity(0.2), // Gölge rengi ve şeffaflığı
                        spreadRadius: 5, // Gölge yayılma miktarı
                        blurRadius: 7, // Gölge bulanıklık miktarı
                        offset: Offset(0, 3), // Gölge ofseti
                      ),
                    ],
                    color: Color(0xFF9933FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Profilini oluştur',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "başla",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: 600,
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        color: Color(0xFF9933FF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  child: Image.asset(
                    'assets/images/tobeto-logo.png',
                  ),
                ),
                Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "bize ulaşın",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: Text(
                "2022 Tobeto",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
