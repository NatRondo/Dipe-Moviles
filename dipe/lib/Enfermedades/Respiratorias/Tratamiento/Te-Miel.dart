import 'package:dipe/colores-app.dart';
import 'package:flutter/material.dart';

class TeMiel extends StatefulWidget {
  @override
  _TeMielState createState() => _TeMielState();
}

class _TeMielState extends State<TeMiel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                  height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    margin: const EdgeInsets.only(left: 200.0,),
                    child: Text('Té de miel'+'\n'+'y limón',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30,right: 20),
                    width:350,
                    height: 450,
                    padding: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: color3.withOpacity(.3),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: ListView(
                      children: [
                        Text(
                          'Ayuda a descongestionar la nariz, lúbrica la garganta y mejora el sistema inmunológico.'+'\n'
                          +'Mezcla el jugo de 1 limón, 2 cucharadas de miel y 1 taza de agua hirviendo',
                          style: TextStyle(
                            fontSize: 20, 
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Image(
                          image: AssetImage('assets/img/respiratorias/telimon.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}