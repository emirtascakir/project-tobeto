import 'package:flutter/material.dart';

class CatalogFilterButton extends StatefulWidget {
  const CatalogFilterButton({super.key});

  @override
  State<CatalogFilterButton> createState() => _CatalogFilterButtonState();
}

class _CatalogFilterButtonState extends State<CatalogFilterButton> {
  bool filtreAcik = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              filtreAcik = !filtreAcik;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 91, 36, 153),
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 11),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: const Text(
            'Filtrele',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
