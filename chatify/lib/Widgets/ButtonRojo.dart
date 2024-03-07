import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class ButtonRojo extends StatelessWidget {
  

  final Image image;
  ButtonRojo({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        //Boton Grande de emergencia
        child: InkWell(
          onTap: () {
            _pantallaDeEmergencia(context);
            //Poner función
          },
          //AvataGlow
          child: AvatarGlow(
            endRadius: 80,
            animate: true,
            showTwoGlows: true,
            child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: CircleAvatar(
                  backgroundColor: Colors.red[250],
                  child: image,
                  radius: 40.0,
                ),
              ),
            ),
            glowColor: Colors.red,
            duration: Duration(milliseconds: 2000),
            repeatPauseDuration: Duration(milliseconds: 100),
          ),
        ),
      ),
    );
  }
}

void _pantallaDeEmergencia(context) {

  showModalBottomSheet(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: const Radius.circular(30.0), topLeft:  const Radius.circular(30.0)
        )
      ),
    context: context, builder: (BuildContext bc){
      return SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                IconButton(
                onPressed: () { 
                Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.cancel,
                  color: Colors.red,
                  size: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    });
}


//Voy en minuto 
//Los errores se solucionan poniendo ;