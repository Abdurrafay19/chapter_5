import 'package:chapter_5_6/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(child: Text('Home Screen')),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://imgs.search.brave.com/xFkz2rHVRFxHB3pOHKPh-9VUyP9DKszbVpTUzIP9HvM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvY29vbC1wcm9m/aWxlLXBpY3R1cmUt/ODdoNDZnY29iamw1/ZTR4dS5qcGc'),
                  ),
                  accountName: Text('App User'),
                  accountEmail: Text('appuser123@gmail.com')),
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home'),
                onTap: (){
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.calculate_outlined),
                title: const Text('Screen Two'),
                onTap: (){
                  Navigator.pushNamed(context, ScreenTwo.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: const Text('Logout'),
                onTap: (){
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, ScreenTwo.id);
                },
                child: const Center(child: Text('Screen 2')))
          ],
        ),
    );
  }
}

