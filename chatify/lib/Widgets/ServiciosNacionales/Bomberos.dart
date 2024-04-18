import 'package:chatify/Declaraciones/text_info.dart';
import 'package:chatify/Widgets/ServiciosNacionales/logoYServicio.dart';
import 'package:flutter/material.dart';

import 'LlamarUI.dart';

class Bomberos extends StatefulWidget {

  @override
  State<Bomberos> createState() => _BomberosState();
}

class _BomberosState extends State<Bomberos> {
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
                icon: Icons.fire_truck,
                text: 'Protección civil',
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
            Expanded(child: TextInfo(size: 20.0, mensaje: 'Protección Civil', color: Colors.black,),),
            LlamarUI(
              // Asistencia médica, de seguridad o protección civil
              // Numero Real "911"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Emergencias',
            ),
            LlamarUI(
              // Numero Real "55 51 28 00 00"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Protección Civil',
            ),
            LlamarUI(
              // Numero Real "800 46 23 63 46"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Incendios Forestales',
            ),
            LlamarUI(
              // Numero Real "800 46 23 63 46"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Bomberos',
            ),
            LlamarUI(
              // Numero Real "55 56 58 11 11"
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'LACATEL',
            ),
          ],
        );
      },

    );
  }
