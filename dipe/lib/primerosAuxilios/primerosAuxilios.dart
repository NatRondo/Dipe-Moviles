import 'package:flutter/material.dart';

import '../colores-app.dart';

void main() {
  runApp(MenuPrimerosAuxilios());
}

class MenuPrimerosAuxilios extends StatelessWidget {
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
                  child: Text("Primeros"+"\n"+" Auxilios", style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),textAlign: TextAlign.left),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
