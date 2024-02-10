import 'package:flutter/material.dart';

class CatalogSearchBar extends StatelessWidget {
  const CatalogSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 47, 11, 109),
      width: 500,
      height: 250,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Öğrenmeye başla!',
                style: TextStyle(
                    fontSize: 44.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SearchBar(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintStyle: const TextStyle(color: Colors.grey),
        hintText: 'Eğitim arayın...',
        suffixIcon: const Icon(Icons.search),
        contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60.0),
        ),
      ),
    );
  }
}
