import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class HomePageBoxes extends StatelessWidget {
  const HomePageBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        box(context, "Profilini Oluştur", Colors.indigo),
        box(context, "Kendini Değerlendir", Colors.blue),
        box(context, "Öğrenmeye Başla", Colors.purple),
      ],
    );
  }

  Padding box(BuildContext context, String title, Color gradientColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        width: 500,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          gradient: LinearGradient(
              colors: [context.colorScheme.primary, gradientColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
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
            Text(title,
                style: TextStyle(
                    color: context.colorScheme.onBackground,
                    fontWeight: FontWeight.bold,
                    fontSize: 26)),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: context.colorScheme.secondary,
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Başla",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
