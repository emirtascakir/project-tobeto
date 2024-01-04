import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class ReviewPageText extends StatelessWidget {
  const ReviewPageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: context.deviceSize.width * .05,
          height: context.deviceSize.height * .3,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Text(
          "Aboneliğe özel",
          style: TextStyle(
            color: context.colorScheme.primary,
            fontSize: 30,
          ),
        ),
        const Text(
          "değerlendirme araçları için",
          style: TextStyle(fontSize: 30),
        )
      ],
    );
  }
}
