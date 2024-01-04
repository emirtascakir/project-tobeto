import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class ReviewPageCards extends StatelessWidget {
  const ReviewPageCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            width: context.deviceSize.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(22),
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
              gradient: LinearGradient(
                  colors: [context.colorScheme.primary, Colors.purple],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: <Widget>[
                  const Text(
                    "Tobeto İşte Başarı Modeli",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "80 soru ile yetkinliklerini ölç, önerilen eğitimleri tamamla, rozetini kazan.",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              context.colorScheme.primary)),
                      onPressed: () {},
                      child: const Text(
                        "Başla",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: context.deviceSize.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(22),
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
              gradient: LinearGradient(
                  colors: [Colors.purple, context.colorScheme.primary],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: <Widget>[
                  Text(
                    "Yazılımda Başarı Testi",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Çoktan seçmeli\nsorular ile teknik\nbilgini test et.",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                    textAlign: TextAlign.center,
                  ),
                  Icon(Icons.double_arrow, color: Colors.white)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
