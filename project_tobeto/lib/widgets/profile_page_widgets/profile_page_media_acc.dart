import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class ProfilePageMediaAcc extends StatelessWidget {
  const ProfilePageMediaAcc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            color: context.colorScheme.onBackground),
        width: context.deviceSize.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Medya Hesaplarım",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: context.colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
