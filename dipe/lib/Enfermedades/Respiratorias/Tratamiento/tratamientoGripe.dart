import 'package:dipe/Enfermedades/Respiratorias/Tratamiento/Te-Miel.dart';
import 'package:dipe/Enfermedades/Respiratorias/Tratamiento/te-jengibre.dart';
import 'package:dipe/colores-app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuTratamientoGripe extends StatefulWidget {
  @override
  _MenuTratamientoState createState() => _MenuTratamientoState();
}

class _MenuTratamientoState extends State<MenuTratamientoGripe> {
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
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Tratamientos Naturales",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  padding: EdgeInsets.all(15.0),
                  height: 850,
                  child: _menu(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _menu(BuildContext context) {
    return ListView(
      children: [
        AspectRatio(
          aspectRatio: 6,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TeMiel()));
            },
            splashColor: Colors.blueAccent.withOpacity(.3),
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: color3.withOpacity(.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Té de miel y limón",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 6,
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TeJengibre()));
            },
            splashColor: Colors.blueAccent.withOpacity(.6),
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: color3.withOpacity(.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Té de jengibre",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 6,
          child: InkWell(
            onTap: () {},
            splashColor: Colors.blueAccent.withOpacity(.3),
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: color3.withOpacity(.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Jarabe de cebolla",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 6,
          child: InkWell(
            onTap: () {},
            splashColor: Colors.blueAccent.withOpacity(.3),
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: color3.withOpacity(.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Té de eucalipto",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
      ],
    );
  }
}
