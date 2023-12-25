import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class TabViewSurveyCard extends StatelessWidget {
  const TabViewSurveyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.background,
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white),
        width: context.deviceSize.width * .9,
        height: 50.0,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Atanmış herhangi bir anketiniz bulunmamaktadır",
              style: TextStyle(
                  fontSize: 18,
                  color: context.colorScheme.primary,
                  fontWeight: FontWeight.w500),
            )
          ],
        ));
  }
}
