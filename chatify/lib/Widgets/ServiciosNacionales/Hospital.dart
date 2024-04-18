import 'package:chatify/Declaraciones/text_info.dart';
import 'package:chatify/Widgets/ServiciosNacionales/logoYServicio.dart';
import 'package:flutter/material.dart';

import 'LlamarUI.dart';

class Hospital extends StatefulWidget {
  
  @override
  State<Hospital> createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
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
                icon: Icons.local_hospital_outlined ,
                text: 'Hospital',
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 0, 81, 255),
              ),
            ),
          )
        ],
    ),);
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
            Expanded(child: TextInfo(size: 20.0, mensaje: 'Hospital', color: Colors.black,),),
            LlamarUI(
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Hospital de Zumpango',
            ),
            LlamarUI(
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Hospital de Cuautitlan',
            ),
            LlamarUI(
              NumeroDeMovil: '12345678',
              NombreDeSevicio: 'Hospital de Estado de México',
            ),
          ],
        );
      },
    );
  }

