import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class HomePageFooter extends StatelessWidget {
  const HomePageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceSize.width,
      height: context.deviceSize.height * .15,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      color: context.colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/Tebeto-logo-yatay-beyaz.png',
                width: context.deviceSize.width * .3,
              ),
              Container(
                width: context.deviceSize.width * .3,
                height: context.deviceSize.height * .05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: context.colorScheme.onBackground,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Bize Ulaşın",
                    style: TextStyle(
                      color: context.colorScheme.secondary,
                    ),
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.copyright,
                color: context.colorScheme.onBackground,
                size: 14,
              ),
              const Text(
                "2023 Tobeto",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
