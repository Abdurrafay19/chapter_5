import 'package:chapter_5_6/home_screen.dart';
import 'package:flutter/material.dart';


class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Screen 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage('https://imgs.search.brave.com/xFkz2rHVRFxHB3pOHKPh-9VUyP9DKszbVpTUzIP9HvM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvY29vbC1wcm9m/aWxlLXBpY3R1cmUt/ODdoNDZnY29iamw1/ZTR4dS5qcGc'),
                ),
                title: const Text('User123'),
                onTap: (){
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
