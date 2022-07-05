import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  // parametros
  Color? color;
  final String text;
  double size;
  double height;
//  final parametros

  SmallText({ Key? key, this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size=12,
    this.height=1.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Robooto', //baixar a fonte roboto 30:20min
        color: color,
        fontSize: size,
        height: height
      ),
    );
  }
}