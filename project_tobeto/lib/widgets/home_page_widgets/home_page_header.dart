import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/auth/auth_bloc.dart';
import 'package:project_tobeto/blocs/auth/auth_state.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/models/user_model.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
    required this.user,
  });
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
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
              Text(
                user.name ?? "",
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
      },
    );
  }
}
