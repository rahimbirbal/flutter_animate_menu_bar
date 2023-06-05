import 'package:flutter/material.dart';

class menumenu extends StatefulWidget {
  const menumenu({super.key});

  @override
  State<menumenu> createState() => _menumenuState();
}

  int currentmenu = 0;

class _menumenuState extends State<menumenu> {


  List<Map> menumenuu = [
    {'iconn': Icons.home, 'title': 'Home'},
    {'iconn': Icons.shop_2_rounded, 'title': 'Shop'},
    {'iconn': Icons.forum_rounded, 'title': 'Feedback'},
    {'iconn': Icons.logout, 'title': 'Logout'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menumenuu.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Stack(
                children: [
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 300),
                    height: 56,
                    width: currentmenu == index ? 288 : 0,
                    left: 0,
                    child:Container(
                    decoration: BoxDecoration(
                        color: currentmenu == index ?Color(0xffff6792ff) : Color(0xff172031),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )),
                  ListTile(
                      onTap: () {
                        setState(() {
                          currentmenu = index;
                        });
                      },
                      leading: SizedBox(
                        height: 34,
                        width: 34,
                        child:Icon(menumenuu[index]['iconn'], color: Colors.white),
                      ),
                      title: Text(menumenuu[index]['title'],
                      style: TextStyle(color: Colors.white))),
                ],
              );
      },
    );
  }
}
