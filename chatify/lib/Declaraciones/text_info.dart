import 'package:flutter/cupertino.dart';

class TextInfo extends StatelessWidget {

  TextInfo({required this.size, required this.mensaje, required this.color });

  final double size;
  final String mensaje;
  final Color color;

  @override

  Widget build(BuildContext context) {
    return Text(
      mensaje,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'Kanit',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}