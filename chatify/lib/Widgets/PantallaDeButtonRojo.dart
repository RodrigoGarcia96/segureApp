import 'package:chatify/Declaraciones/text_info.dart';
import 'package:chatify/Widgets/ButtonRojo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaDeButtonRoj extends StatefulWidget {
  

  @override
  State<PantallaDeButtonRoj> createState() => _PantallaDeButtonRojState();
}

class _PantallaDeButtonRojState extends State<PantallaDeButtonRoj> {

  @override
  initState(){
    super.initState();

  }


 @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          //La letra encima del botón rojo
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Center(
              child: TextInfo(
                size: 20.0, 
                mensaje: 'Presiona si tienes alguna emergencia.', 
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(
            height: 10.0,
            width: 10.0,
          ),

          //El botón rojo
          Container(
            child: ButtonRojo(
              image: Image.asset('assets/images/sos_image.png'),
            ),
          ),

          SizedBox(
            height: 10.0,
            width: 10.0,
          ),

          // La imagen debajo del botón
          Container(
            padding: EdgeInsets.all(10.0),
            child: Image.asset('assets/images/newimj.png'),
          )

        ],
      ),
    ),
  );
}
}