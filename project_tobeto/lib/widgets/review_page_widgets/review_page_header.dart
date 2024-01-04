import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class ReviewPageHeader extends StatelessWidget {
  const ReviewPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.deviceSize.height * .28,
      width: context.deviceSize.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Yetkinlik",
                style:
                    TextStyle(color: context.colorScheme.primary, fontSize: 26),
              ),
              Text("lerini ücretsiz ölç,",
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 26)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "bilgi",
                style:
                    TextStyle(color: context.colorScheme.primary, fontSize: 26),
              ),
              Text(
                "lerini test et.",
                style: TextStyle(color: Colors.grey.shade800, fontSize: 26),
              )
            ],
          )
        ],
      ),
    );
  }
}
