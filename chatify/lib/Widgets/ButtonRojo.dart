import 'package:avatar_glow/avatar_glow.dart';
import 'package:chatify/Declaraciones/text_info.dart';
import 'package:flutter/material.dart';

import 'ServiciosNacionales/AbusoSexual.dart';
import 'ServiciosNacionales/Bomberos.dart';
import 'ServiciosNacionales/Hospital.dart';
import 'ServiciosNacionales/Policia.dart';

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
                  backgroundColor: Color.fromARGB(255, 20, 1, 107),
                  child: image,
                  radius: 40.0,
                ),
              ),
            ),
            glowColor: Color.fromARGB(255, 20, 1, 107),
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
              topRight: const Radius.circular(30.0),
              topLeft: const Radius.circular(30.0))),
      context: context,
      builder: (BuildContext bc) {
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
                      color: Color.fromARGB(255, 0, 81, 255),
                      size: 20,
                    ),
                  ),
                ],
              ),
                  //Aqui va la pantalla los botones de emergencias y el padding son la dimensiones
                  Container(
                    height: MediaQuery.of(context).size.height * 120,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.0, top: 5.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: TextInfo(
                              size: 30,
                              mensaje: 'Emergencias',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Policia(),
                                    SizedBox(
                                      width: 5,
                                      height: 5,
                                    ),
                                    //SizedBox es el espacio entre 2 widgets
                                    Bomberos(),
                                  ],
                                ),
                                //El error se arregla con una coma
                                SizedBox(
                                      width: 5,
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                      Hospital(),
                                    SizedBox(
                                      width: 5,
                                      height: 5,
                                    ),
                                    //SizedBox es el espacio entre 2 widgets
                                    AbusoSexual(),
                                      ],
                                    )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
          );
      },
      );
}









