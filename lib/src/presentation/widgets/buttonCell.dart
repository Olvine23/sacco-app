 import 'package:flutter/material.dart';

class ButtonCell extends StatelessWidget {
  final dynamic onTap;
  final String text;
  final IconData icon;
  const ButtonCell({
    super.key, required this.text, required this.icon, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 30,
              backgroundColor: Color(0xffD8E5FF),
              child: Icon(
                icon,
        
              color: Colors.black,
              )),
        ),
            Text(text)
      ],
    );
  }
}
