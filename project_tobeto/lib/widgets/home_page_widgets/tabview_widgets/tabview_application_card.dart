import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class TabViewApplicationCard extends StatelessWidget {
  const TabViewApplicationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.background,
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white),
        width: context.deviceSize.width * .9,
        height: 50.0,
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
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  color: context.colorScheme.onPrimary,
                  child: const Text("Kabul Edildi"),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.done,
                  color: context.colorScheme.onPrimary,
                ),
                const Text("İstanbul Kodluyor Başvuru Formu Onaylandı")
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.done,
                  color: context.colorScheme.onPrimary,
                ),
                const Text("İstanbul Kodluyor Belge\nYükleme Formu Onaylandı")
              ],
            ),
          ],
        ));
  }
}
