import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/widgets/home_view_widget.dart';

class AnasayfaView extends StatefulWidget {
  const AnasayfaView({super.key});

  @override
  State<AnasayfaView> createState() => _AnasayfaViewState();
}

class _AnasayfaViewState extends State<AnasayfaView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("TOBETO",
                    style: TextStyle(
                        color: context.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 26)),
                Text("'ya hoş geldin",
                    style: TextStyle(color: Colors.grey[700], fontSize: 22))
              ],
            ),
            Text("Sema",
                style: TextStyle(color: Colors.grey[700], fontSize: 22)),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Yeni nesil öğrenme deneyimi ile Tobeto kariyer yolculuğunda senin yanında!",
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: context.deviceSize.width,
              height: context.deviceSize.height * .7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey
                          .withOpacity(0.2), // Gölge rengi ve şeffaflığı
                      spreadRadius: 5, // Gölge yayılma miktarı
                      blurRadius: 7, // Gölge bulanıklık miktarı
                      offset: const Offset(0, 3), // Gölge ofseti
                    ),
                  ],
                  color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 200,
                    height: 100,
                    decoration: const BoxDecoration(
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
                          fontSize: 18)),
                  const SizedBox(height: 15),
                  const Text('Aradığın "İş" Burada!',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  const SizedBox(
                    height: 15,
                  ),
                  DefaultTabController(
                    length: 4,
                    child: Column(
                      children: [
                        const TabBar(
                          tabs: [
                            Tab(text: 'Başvurularım'),
                            Tab(text: 'Eğitimlerim'),
                            Tab(text: 'Duyuru ve Haberlerim'),
                            Tab(text: 'Anketlerim'),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: context.deviceSize.height * .3,
                          child: TabBarView(
                            children: <Widget>[
                              Center(
                                child: Column(
                                  children: [
                                    HomeScreenWidget(
                                      screenWidth: context.deviceSize.width,
                                      screenHeight: context.deviceSize.height,
                                      text1: "İstanbul Kodluyor",
                                      text2: "Bilgilendirme",
                                      text3:
                                          "İstanbul Kodluyor Başvuru Formu\n onaylandı",
                                      text4:
                                          "İstanbul Kodluyor Belge yükleme\n formu onaylandı",
                                    ),
                                  ],
                                ),
                              ),
                              const Center(child: Text('Eğitimlerim')),
                              const Center(child: Text('Duyuru ve Haberlerim')),
                              const Center(child: Text('Anketlerim')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 600,
              height: 300,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey
                          .withOpacity(0.2), // Gölge rengi ve şeffaflığı
                      spreadRadius: 5, // Gölge yayılma miktarı
                      blurRadius: 7, // Gölge bulanıklık miktarı
                      offset: const Offset(0, 3), // Gölge ofseti
                    ),
                  ],
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Sınavlarım",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  const SizedBox(
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
                        const Row(
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
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                width: 500,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
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
                      offset: const Offset(0, 3), // Gölge ofseti
                    ),
                  ],
                  color: Color(0xFF9933FF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Profilini oluştur',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    const SizedBox(
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
                        child: const Text(
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                width: 500,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
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
                  color: context.colorScheme.primary,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Profilini oluştur',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    const SizedBox(
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
                        child: const Text(
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                width: 500,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.primary
                          .withOpacity(0.2), // Gölge rengi ve şeffaflığı
                      spreadRadius: 5, // Gölge yayılma miktarı
                      blurRadius: 7, // Gölge bulanıklık miktarı
                      offset: const Offset(0, 3), // Gölge ofseti
                    ),
                  ],
                  color: context.colorScheme.primary,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Profilini oluştur',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    const SizedBox(
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
                        child: const Text(
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
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
