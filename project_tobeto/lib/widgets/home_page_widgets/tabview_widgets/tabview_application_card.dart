import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class TabViewApplicationCard extends StatelessWidget {
  const TabViewApplicationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 370,
        height: 30,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.20),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            border: const Border(
              left: BorderSide(
                color: Color(0xFF076B34), // Sol kenar rengi
                width: 10, // Sol kenar genişliği
              ),
            ),
            color: context.colorScheme.onBackground),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "İstanbul Kodluyor\nBilgilendirme",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.38,
                    decoration: const BoxDecoration(
                      color: Color(0xFF076B34),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        "Kabul Edildi",
                        style: TextStyle(
                            fontSize: 15,
                            color: context.colorScheme.onBackground),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: <Widget>[
                Icon(
                  Icons.done,
                  color: Color(0xFF076B34),
                ),
                Text("İstanbul Kodluyor Başvuru Formu \nOnaylandı.")
              ],
            ),
            const Row(
              children: <Widget>[
                Icon(
                  Icons.done,
                  color: Color(0xFF076B34),
                ),
                Text("İstanbul Kodluyor Belge Yükleme \nFormu Onaylandı")
              ],
            ),
          ],
        ));
  }
}
