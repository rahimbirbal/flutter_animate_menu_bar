import 'package:flutter/material.dart';

class button_btn extends StatelessWidget {
  const button_btn({
    required this.press,
    required this.status
  });

  final VoidCallback press;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: press,
        child: Container(
          margin: EdgeInsets.only(left: 16),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.black12,
              offset: Offset(0,3),
              blurRadius: 8)
            ]
          ),
          child: status ? Icon(Icons.close, color: Colors.black,) : Icon(Icons.menu, color: Colors.black,),
        ),
      ),
    );
  }
}