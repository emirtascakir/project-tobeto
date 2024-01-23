import 'package:calendar_view/calendar_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/auth/auth_bloc.dart';
import 'package:project_tobeto/constants/routes.dart';
import 'package:project_tobeto/firebase_options.dart';
import 'package:project_tobeto/theme/theme_dark.dart';
import 'package:project_tobeto/theme/theme_light.dart';
import 'package:project_tobeto/views/home_view.dart';
import 'package:project_tobeto/views/login_view.dart';
import 'package:project_tobeto/views/register_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(),
      )
    ],
    child: CalendarControllerProvider(
      controller: EventController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        initialRoute: Routes.register,
        routes: {
          Routes.login: (context) => const LoginView(),
          Routes.register: (context) => const RegisterView(),
          Routes.home: (context) => const HomeView()
        },
      ),
    ),
  ));
}
