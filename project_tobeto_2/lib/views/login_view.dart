import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SizedBox(
              height: height * 0.50,
              width: width * 0.85,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: Theme.of(context).colorScheme.background,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/tobeto-logo.png",
                          height: 50,
                          width: 140,
                        ),
                        TextField(
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 20),
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(),
                              disabledBorder: const OutlineInputBorder(),
                              border: const OutlineInputBorder(),
                              prefixIcon: Icon(Icons.person_2_outlined,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                              hintText: "Kullanıcı Kodu",
                              hintStyle: TextStyle(
                                  fontSize: 20,
                                  color:
                                      Theme.of(context).colorScheme.secondary)),
                        ),
                        TextField(
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 20),
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(),
                              disabledBorder: const OutlineInputBorder(),
                              border: const OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock_outline,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.visibility_off,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  )),
                              hintText: "Parola",
                              hintStyle: TextStyle(
                                  fontSize: 20,
                                  color:
                                      Theme.of(context).colorScheme.secondary)),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: SizedBox(
                              height: 45,
                              width: width,
                              child: Center(
                                child: Text(
                                  "GİRİŞ YAP",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background),
                                ),
                              ),
                            )),
                        const Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Parolamı Unuttum",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ))
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
