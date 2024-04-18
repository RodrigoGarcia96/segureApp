import 'package:chatify/Declaraciones/text_info.dart';
import 'package:chatify/Widgets/ServiciosNacionales/logoYServicio.dart';
import 'package:flutter/material.dart';

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
                icon: Icons.front_hand_sharp,
                text: 'Abuso',
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 0, 81, 255),
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
              // Asistencia médica, de seguridad o protección civil
              // Numero Real "991"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Emergencias',
            ),
            LlamarUI(
              // Numero Real "088"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'CiberDelito',
            ),
            LlamarUI(
              // Numero Real "01800 911 2000"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'La línea de la vida',
            ),
            LlamarUI(
              // Numero Real "55 5658 1111"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Línea de Mujeres',
            ),
            LlamarUI(
              // Fiscalía General de Justicia
              // Numero Real "01 800 70 28 770"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'FGJ',
            ),
            //Cualquiera de estos compnentes se pueden agregar o quitar dependiendo del uso que le quiera dar
          ],
        );
      },

    );
  }
