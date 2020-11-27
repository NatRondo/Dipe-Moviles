import 'dart:ui';

import 'package:dipe/Enfermedades/Enf-Ambientales.dart';
import 'package:dipe/Enfermedades/Enf-Cardiovasculares.dart';
import 'package:dipe/Enfermedades/Enf-Digestivas.dart';
import 'package:dipe/Enfermedades/Enf-Renales.dart';
import 'package:dipe/Enfermedades/Enf-Respiratorias.dart';
import 'package:dipe/Enfermedades/Enf-Sistemicas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colores-app.dart';

void main() {
  runApp(MenuEnfermedades());
}

class MenuEnfermedades extends StatelessWidget {
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Enfermedades", style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),textAlign: TextAlign.right),
                ),
                menuEnfermedades(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget menuEnfermedades(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 25.0),
      padding: EdgeInsets.all(10.0),
      width: 360,
      height: 960,
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfSistemicas())
                );
              },
              icon: Image.network('https://firebasestorage.googleapis.com/v0/b/baby-names-app-db-325e8.appspot.com/o/imagenes-dipe%2Fcerebro.png?alt=media&token=298f924f-a925-4a23-bcb6-2680a3fa42c5')
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfAmbientales())
                );
              },
              icon: Image.network('https://firebasestorage.googleapis.com/v0/b/baby-names-app-db-325e8.appspot.com/o/imagenes-dipe%2Fambientales.png?alt=media&token=c1da11a3-df4f-4b86-9402-b459c59989ba'),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfCardiovascular())
                );
              },
              icon: Image.network('https://firebasestorage.googleapis.com/v0/b/baby-names-app-db-325e8.appspot.com/o/imagenes-dipe%2Fcorazon.png?alt=media&token=60c26534-466a-460f-a8f6-0bdb11e8f92a'),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfDigestivas())
                );
              },
              icon: Image.network('https://firebasestorage.googleapis.com/v0/b/baby-names-app-db-325e8.appspot.com/o/imagenes-dipe%2Fcerebro.png?alt=media&token=298f924f-a925-4a23-bcb6-2680a3fa42c5'),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfRespiratorias())
                );
              },
              icon: Image.network('https://firebasestorage.googleapis.com/v0/b/baby-names-app-db-325e8.appspot.com/o/imagenes-dipe%2Fpulmones.png?alt=media&token=ae89d97d-7135-429e-98d7-6b842c0e3b33'),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfRenales())
                );
              },
              icon: Image.network('https://firebasestorage.googleapis.com/v0/b/baby-names-app-db-325e8.appspot.com/o/imagenes-dipe%2Frenal.png?alt=media&token=50c8b0d0-da53-49cb-aa84-5657ca2111f8'),
            ),
          ),
        ],
      ),
    );
  }
}
