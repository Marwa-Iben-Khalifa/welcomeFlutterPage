import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.title, required this.press, required this.color, required this.textColor,
  }) : super(key: key);

  final String title;
  final VoidCallback press;
  final Color color, textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin:EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: color,
            onPressed: press,
            child: Text(
              title,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}
