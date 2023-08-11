 import 'package:flutter/material.dart';

class ButtonCell extends StatelessWidget {
  final String text;
  final IconData icon;
  const ButtonCell({
    super.key, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
            backgroundColor: Color(0xffD8E5FF),
            child: Icon(
              icon,

            color: Colors.black,
            )),
            Text(text)
      ],
    );
  }
}
