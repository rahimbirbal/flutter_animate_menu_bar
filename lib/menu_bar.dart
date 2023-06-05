import 'package:flutter/material.dart';
import 'package:flutter_animate_menu_bar/menu_menu.dart';

class MenuBarr extends StatelessWidget {
  const MenuBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: Color(0xff172031),
        child: SafeArea(
          child: Column(
            children: [
              InfoCard(name : "rahim", profession: "designer",),
              Column(
                children: [
                  Divider(
                    color: Color.fromARGB(221, 208, 208, 208),
                  ),
                  menumenu()
                ],
              ),
            ],
          )
          ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key,
    required this.name,
    required this.profession  
  });

  final String name, profession;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          Icons.account_circle,
          color: Colors.white,
        ),
      ),
      title: Text(name,style: TextStyle(color: Colors.white),),
      subtitle: Text(profession,style: TextStyle(color: Colors.white),),
    );
  }
}