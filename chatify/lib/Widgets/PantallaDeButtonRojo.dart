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
      backgroundColor: Colors.red[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[


          //La letra encima del botón rojo
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Center(
              child: TextInfo(
                size: 20.0, 
                mensaje: 'Pulsa para llamar a Emergencias', 
                color: Colors.black,

              ),
            ),
          ),

          SizedBox(
            height: 20.0,
            width: 10.0,
          ),
          //El botón rojo
          Container(
            child: ButtonRojo(
              image: Image.asset('assets/images/sos_image.png'),

            ),
          )

        ]
      ),
    );
  }
}