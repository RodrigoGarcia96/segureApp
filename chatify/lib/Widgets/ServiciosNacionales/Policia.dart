import 'package:chatify/Declaraciones/text_info.dart';
import 'package:chatify/Widgets/ServiciosNacionales/logoYServicio.dart';
import 'package:flutter/material.dart';

import 'LlamarUI.dart';

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
                text: 'Denuncia',
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
  
  void _LlamarEmergencia(context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: const Radius.circular(15.0), topRight: const Radius.circular(15.0),),

      ),
      context: context,
      builder: (BuildContext bc){
        return Column(
          children: [
            Expanded(child: TextInfo(size: 20.0, mensaje: 'Policia o Denuncia', color: Color.fromARGB(255, 0, 0, 0),),),
            LlamarUI(
              // Asistencia médica, de seguridad o protección civil
              // Numero Real "911"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Emergencias',
            ),
            LlamarUI(
              // Numero Real "089"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Denuncia Anónima',
            ),
            LlamarUI(
              // Numero Real "088"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Atención Ciudadana',
            ),
            LlamarUI(
              // Procuraduria general de la republica
              // Numero Real "01 800 00 85 400"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'PGR',
            ),
            LlamarUI(
              // Fiscalía General de Justicia
              // Numero Real "01 800 70 28 770"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'FGJ',
            ),
          ],
        );
      },

    );
  }



  //Fin, esta llave es de la clase principal del Widget
}