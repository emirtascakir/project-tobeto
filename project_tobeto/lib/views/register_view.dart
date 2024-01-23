import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/auth/auth_bloc.dart';
import 'package:project_tobeto/blocs/auth/auth_event.dart';
import 'package:project_tobeto/constants/routes.dart';
import 'package:project_tobeto/extensions/extension.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _username = '';
  bool _obscureText = true;

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      context.read<AuthBloc>().add(
          Register(email: _email, password: _password, username: _username));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: context.deviceSize.width,
              height: context.deviceSize.height,
              child: Image.asset(
                "assets/images/background.png",
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: SizedBox(
                height: context.deviceSize.height * 0.6,
                width: context.deviceSize.width * 0.85,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/tobeto-logo.png",
                              height: 50,
                              width: 140,
                            ),
                            TextFormField(
                              onSaved: (value) => _username = value!,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Lütfen bir kullanıcı adı giriniz.';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.name,
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 20),
                              decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(),
                                  disabledBorder: const OutlineInputBorder(),
                                  border: const OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.person_2_outlined,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                  hintText: "Kullanıcı Adı",
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary)),
                            ),
                            TextFormField(
                              onSaved: (value) => _email = value!,
                              validator: (value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return 'Lütfen geçerli bir e-posta adresi giriniz.';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 20),
                              decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(),
                                  disabledBorder: const OutlineInputBorder(),
                                  border: const OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.person_2_outlined,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                  hintText: "E-mail Adresi",
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary)),
                            ),
                            TextFormField(
                              onSaved: (value) => _password = value!,
                              validator: (value) {
                                if (value!.isEmpty || value.length < 8) {
                                  return 'Şifre en az 8 karakter uzunluğunda olmalıdır.';
                                }
                                return null;
                              },
                              obscureText: _obscureText,
                              keyboardType: TextInputType.visiblePassword,
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 20),
                              decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(),
                                  disabledBorder: const OutlineInputBorder(),
                                  border: const OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.lock_outline,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      icon: Icon(
                                        _obscureText
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      )),
                                  hintText: "Parola",
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary)),
                            ),
                            ElevatedButton(
                                onPressed: _submit,
                                child: SizedBox(
                                  height: 45,
                                  width: context.deviceSize.width,
                                  child: Center(
                                    child: Text(
                                      "KAYIT OL",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                  ),
                                )),
                            const Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                            const Text(
                              "Zaten Kayıt Oldun Mu?",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextButton(
                                onPressed: () => Navigator.of(context)
                                    .pushReplacementNamed(Routes.login),
                                child: const Text(
                                  "Giriş Yap",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18),
                                )),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
