import 'package:flutter/material.dart';
import 'package:flutter_animate_menu_bar/menu_bar.dart';
import 'package:flutter_animate_menu_bar/menu_button_btn.dart';

class InfoCardd extends StatefulWidget {
  const InfoCardd({super.key});

  @override
  State<InfoCardd> createState() => _InfoCarddState();
}

class _InfoCarddState extends State<InfoCardd>with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;

  bool isSideMenuClose = true;
  bool status = true;

  @override

  //ini tambahan
  //  @override
  //   void initState() {
  //      super.initState();
  //       _animationController = new AnimationController(
  //          duration: Duration(seconds: 3), vsync: this)..addListener(() => 
  //          setState(() {}));
  //       animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  //       _animationController.forward();
  //    }
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() { 
      setState(() {});
    });

    animation = Tween<double>(begin:0,end: 1 ).animate(CurvedAnimation(parent: _animationController, curve: Curves.fastOutSlowIn));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }  

  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // extendBody: true,
      backgroundColor: Color(0xff172031),
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.fastEaseInToSlowEaseOut,
              width: 288,
              left: isSideMenuClose ? 0 : -288,
              height: MediaQuery.of(context).size.height,
              child: MenuBarr()),
          Transform.translate(
            offset: Offset( _animationController.value * 288 ,0),
            child: Transform.scale(
              scale: isSideMenuClose ? 0.8 : 1,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.amber,
                  child: SafeArea(
                      child: Center(
                          child: Text(
                    'Ini adalah menu Home',
                    style: TextStyle(fontSize: 40),
                  ))),
                ),
              ),
            ),
          ),
          button_btn(
            status: isSideMenuClose,
            press: () {
              isSideMenuClose = !isSideMenuClose;
              if(isSideMenuClose){
                _animationController.forward();
              }else{
                _animationController.reverse();
              }
              setState(() {
                isSideMenuClose = isSideMenuClose;
              });
            },
          ),
        ],
      ),
    );
  }
}
