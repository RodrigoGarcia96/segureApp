import 'package:chatify/Widgets/ServiciosNacionales/logoYServicio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:chatify/Declaraciones/text_info.dart';
import 'logoYServicio.dart';
import 'LlamarUI.dart';
import 'package:chatify/Declaraciones/text_info.dart';

class Policia extends StatefulWidget {

  @override
  State<Policia> createState() => _PoliciaState();
}

class _PoliciaState extends State<Policia> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          InkWell(
            onTap:()
            {
              _LlamarEmergencia(context);
            },
            child: Container(
              width: 170,
              height: 130,
              child: logoYServicio(
                icon: Icons.local_police,
                text: 'Policia',
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
            ),
          )
        ],
    ));
  }
  
  void _LlamarEmergencia(context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: const Radius.circular(15.0), topRight: const Radius.circular(15.0),),

      ),
      context: context,
      builder: (BuildContext bc){
        return Column(
          children: [
            Expanded(child: TextInfo(size: 20.0, mensaje: 'Policia', color: Colors.black,),),
            LlamarUI(
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Policia de Zumpango',
            ),
            LlamarUI(
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Policia de Cuautitlan',
            ),
            LlamarUI(
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Policia de Estado de México',
            ),
          ],
        );
      },

    );
  }



  //Fin, esta llave es de la clase principal del Widget
}