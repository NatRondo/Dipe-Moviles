import 'package:dipe/colores-app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeJengibre extends StatefulWidget {
  @override
  _TeJengibreState createState() => _TeJengibreState();
}

class _TeJengibreState extends State<TeJengibre> {
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
                    margin: const EdgeInsets.only(left: 240.0,),
                    child: Text('Té de '+'\n'+'jengibre',
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
                          'El jengibre tiene propiedades analgésicas y antibacterianas, por lo que reduce los síntomas de la gripe.'+'\n'
                          +'- Agrega una cucharada de jengibre fresco picado a una taza de agua hirviendo, deja reposar por 10 min y endulza con miel.',
                          style: TextStyle(
                            fontSize: 20, 
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image(
                          image: AssetImage('assets/img/respiratorias/tejengibre.png'),
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