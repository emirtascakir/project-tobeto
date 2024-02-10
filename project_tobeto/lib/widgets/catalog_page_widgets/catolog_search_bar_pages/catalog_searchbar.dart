import 'package:flutter/material.dart';

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
