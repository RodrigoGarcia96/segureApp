import 'package:chatify/Declaraciones/text_info.dart';
import 'package:chatify/Widgets/ButtonRojo.dart';
import 'package:flutter/material.dart';

class PantallaDeButtonRoj extends StatefulWidget {
  @override
  State<PantallaDeButtonRoj> createState() => _PantallaDeButtonRojState();
}

class _PantallaDeButtonRojState extends State<PantallaDeButtonRoj> {
  @override
  initState() {
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

            Center(
              child: Text(
                "Mientras algunos juegan con llamadas a emergencias, alguien que necesita ayuda puede estar en peligro.",
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(
              height: 20.0,
              width: 10.0,
            ),

            Center(
              child: Text(
                "Úsalo correctamente.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),

            SizedBox(
              height: 30.0,
              width: 10.0,
            ),

            // La letra encima del botón rojo
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Center(
                child: TextInfo(
                  size: 25.0,
                  mensaje: '¿Estás en una emergencia?',
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(
              height: 50.0,
              width: 10.0,
            ),

            //El botón rojo
            Container(
              child: ButtonRojo(
                image: Image.asset('assets/images/sos_image.png'),
              ),
            ),

            SizedBox(
              height: 60.0,
              width: 10.0,
            ),

            // La imagen debajo del botón
            Container(
              padding: EdgeInsets.all(10.0),
              child: Image.asset('assets/images/tu_imagen.png'),
            )
          ],
        ),
      ),
    );
  }
}
