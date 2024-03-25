import 'package:chatify/Widgets/ServiciosNacionales/logoYServicio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:chatify/Declaraciones/text_info.dart';
import 'logoYServicio.dart';
import 'LlamarUI.dart';

class AbusoSexual extends StatefulWidget {
  
  @override
  State<AbusoSexual> createState() => _AbusoSexualState();
}

class _AbusoSexualState extends State<AbusoSexual> {

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
            Expanded(child: TextInfo(size: 20.0, mensaje: 'Abuso Sexual', color: Colors.black,),),
            LlamarUI(
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Abuso Sexual de Zumpango',
            ),
            LlamarUI(
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Abuso Sexual de Cuautitlan',
            ),
            LlamarUI(
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Abuso SExual de Estado de México',
            ),
            //Cualquiera de estos compnentes se pueden agregar o quitar dependiendo del uso que le quiera dar
          
          ],
        );
      },

    );
  }
