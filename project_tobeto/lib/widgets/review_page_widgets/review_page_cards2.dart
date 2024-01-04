import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';

class ReviewPageCards2 extends StatelessWidget {
  const ReviewPageCards2({
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
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Kazanım Odaklı Testler",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Dijital gelişim kategorisindeki eğitimlere başlamadan önce konuyla ilgili bilgin ölçülür ve seviyene göre yönlendirilirsin.",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
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
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Huawei Talent Interview Teknik Bilgi Sınavı*",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Sertifika alabilmen için, eğitim yolculuğunun sonunda teknik yetkinliklerin ve kod bilgin ölçülür.",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 18),
                    Text(
                      "4400+ soru | 30+ programlama dili 4 zorluk seviyesi",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "*Türkiye Ar-Ge Merkezi tarafından tasarlanmıştır.",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
