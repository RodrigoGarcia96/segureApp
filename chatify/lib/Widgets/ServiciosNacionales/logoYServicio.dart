import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:chatify/Declaraciones/text_info.dart';

class logoYServicio extends StatelessWidget {
  final IconData icon;
  final String text;
  logoYServicio({required this.icon, required this.text});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextInfo(size: 20, mensaje: text, color: Colors.black),
          Icon(icon,
            size: 60.0, )
        ],
      ),
    );
  }
}