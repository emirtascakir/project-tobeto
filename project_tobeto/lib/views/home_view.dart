import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_tobeto/blocs/auth/auth_bloc.dart';
import 'package:project_tobeto/blocs/auth/auth_event.dart';
import 'package:project_tobeto/blocs/profile/profile_bloc.dart';
import 'package:project_tobeto/blocs/profile/profile_event.dart';
import 'package:project_tobeto/blocs/profile/profile_state.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/models/user_model.dart';
import 'package:project_tobeto/views/pages/calendar_page.dart';
import 'package:project_tobeto/views/pages/catalog_page.dart';
import 'package:project_tobeto/views/pages/home_page.dart';
import 'package:project_tobeto/views/pages/profile_edit_page.dart';
import 'package:project_tobeto/views/pages/profile_page.dart';
import 'package:project_tobeto/views/pages/review_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  /*static const List<Widget> _widgetOptions = <Widget>[
    HomePage(user: ),
    ReviewPage(),
    ProfilePage(),
    CatalogPage(),
    CalendarPage(),
    HomePage(),
    ProfileEditPage(),
  ];*/

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _logout() {
    context.read<AuthBloc>().add(Logout());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is Initial) {
          context.read<ProfileBloc>().add(FetchProfileInfo());
        }
        if (state is ProfileInfoFetched) {
          UserModel user = state.user;
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(onPressed: _logout, icon: const Icon(Icons.logout))
              ],
              title: Image.asset(
                "assets/images/tobeto-logo.png",
                width: context.deviceSize.width * .35,
              ),
            ),
            body: Center(
              child: [
                HomePage(user: user),
                const ReviewPage(),
                const ProfilePage(),
                const CatalogPage(),
                const CalendarPage(),
                HomePage(user: user),
                const ProfileEditPage(),
              ][_selectedIndex],
              //child: _widgetOptions[_selectedIndex],
            ),
            drawer: Drawer(
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  DrawerHeader(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/tobeto-logo.png',
                          width: context.deviceSize.width * .42,
                          height: context.deviceSize.height * .2,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close))
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text('Anasayfa'),
                    selected: _selectedIndex == 0,
                    onTap: () {
                      _onItemTapped(0);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Değerlendirmeler'),
                    selected: _selectedIndex == 1,
                    onTap: () {
                      _onItemTapped(1);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Profilim'),
                    selected: _selectedIndex == 2,
                    onTap: () {
                      _onItemTapped(2);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Katalog'),
                    selected: _selectedIndex == 3,
                    onTap: () {
                      _onItemTapped(3);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Takvim'),
                    selected: _selectedIndex == 4,
                    onTap: () {
                      _onItemTapped(4);
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: context.colorScheme.background,
                  ),
                  ListTile(
                    title: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: context.colorScheme.background)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Tobeto'), Icon(Icons.home_outlined)],
                      ),
                    ),
                    selected: _selectedIndex == 5,
                    onTap: () {
                      _onItemTapped(5);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:
                            Border.all(color: context.colorScheme.background),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(user.name ?? user.username),
                          const Icon(Icons.account_circle_outlined)
                        ],
                      ),
                    ),
                    selected: _selectedIndex == 6,
                    onTap: () {
                      _onItemTapped(6);
                      Navigator.pop(context);
                    },
                  ),
                  const ListTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.copyright,
                        ),
                        Text('2024 Tobeto')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
