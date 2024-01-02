import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_tobeto/extensions/extension.dart';

class ProfilePagePersonalInfo extends StatelessWidget {
  const ProfilePagePersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit_document,
                  size: 34,
                  color: Colors.grey.shade700,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share_outlined,
                  size: 34,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
          Container(
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
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        context.colorScheme.primary,
                        Colors.pink.shade900
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade400,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/images/avatar.svg",
                        height: 80,
                        width: 80,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: <Widget>[
                      Container(
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
                            color: Colors.white),
                        child: Icon(
                          Icons.person_outline,
                          color: context.colorScheme.primary,
                          size: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Ad Soyad"),
                          Text(
                            "Emir Taşçakır",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: <Widget>[
                      Container(
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
                            color: Colors.white),
                        child: Icon(
                          Icons.date_range_outlined,
                          color: context.colorScheme.primary,
                          size: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text("Doğum Tarihi"),
                          Text(
                            DateTime.now().toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: <Widget>[
                      Container(
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
                            color: Colors.white),
                        child: Icon(
                          Icons.mail_outline,
                          color: context.colorScheme.primary,
                          size: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("E-Posta Adresi"),
                          Text(
                            "emir@icloud.com",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: <Widget>[
                      Container(
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
                            color: Colors.white),
                        child: Icon(
                          Icons.message_outlined,
                          color: context.colorScheme.primary,
                          size: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Telefon Numarası"),
                          Text(
                            "+905550001122",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
