import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: context.deviceSize.height * .25,
      width: context.deviceSize.width,
      color: context.colorScheme.onBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TOBETO",
                style: TextStyle(
                    color: context.colorScheme.primary,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "'ya hoş geldin",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const Text(
            "Sema",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Yeni nesil öğrenme deneyimi ile Tobeto kariyer yolculuğunda senin yanında!",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
