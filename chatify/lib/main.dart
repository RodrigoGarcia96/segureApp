import 'package:chatify/Widgets/PantallaDeButtonRojo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new ButtonDeSeguridad(),
    );
  }
}

class ButtonDeSeguridad extends StatelessWidget {
  const ButtonDeSeguridad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,  //Parte del color de la pagina principal
        title: Text('App de Emergencia', style: TextStyle(
          color: Color.fromARGB(255, 3, 0, 0),
          fontSize: 40,
        ),),
        //actions: [],
      ),
      body: PantallaDeButtonRoj(),
    );
  }
}


