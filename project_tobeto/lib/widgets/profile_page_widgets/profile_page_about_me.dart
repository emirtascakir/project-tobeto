import 'package:flutter/material.dart';

import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/models/user_model.dart';

class ProfilePageAboutMe extends StatelessWidget {
  const ProfilePageAboutMe({
    super.key,
    required this.user,
  });
  final UserModel user;

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
              "Hakkımda",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: context.colorScheme.primary,
            ),
            Text(
              user.aboutMe ?? "",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
