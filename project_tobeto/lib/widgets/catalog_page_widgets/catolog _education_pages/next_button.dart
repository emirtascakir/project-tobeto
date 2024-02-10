import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.arrow_back_ios, color: Colors.black),
        ..._getButtons(),
        const Icon(Icons.arrow_forward_ios, color: Colors.black),
      ],
    );
  }

  List<Widget> _getButtons() {
    return List.generate(5, (index) {
      return _buildButton(index + 1);
    });
  }

  Widget _buildButton(int number) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 41, 41, 41),
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            '$number',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
