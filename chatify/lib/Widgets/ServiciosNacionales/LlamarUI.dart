import 'package:chatify/Declaraciones/text_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';


class LlamarUI extends StatelessWidget {
  final String NombreDeSevicio;
  final String NumeroDeMovil;

  LlamarUI({required this.NombreDeSevicio, required this.NumeroDeMovil});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            _NumeroDeTelefono(NumeroDeMovil);

          },
          child: Row(
            children: [
              Container(
                child: Align(
                  child: Icon(Icons.call),
                  alignment: Alignment.centerLeft,
                ),
                padding: const EdgeInsets.only(right: 20.0, left: 5.0),
                alignment: Alignment.centerLeft,
                width: 40,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.yellow,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    )),
              ),
              SizedBox(
                width: 50,
              ),
              TextInfo(size: 20, mensaje: NombreDeSevicio, color: Colors.red),
            ],
          ),
        ),
      ],
    );
  }
}


_NumeroDeTelefono(String telefono) async{
  String numero = telefono;
  await FlutterPhoneDirectCaller.callNumber(numero);
}
