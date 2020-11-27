import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../colores-app.dart';
import 'Tratamiento/tratamientoGripe.dart';

void main() {
  runApp(Gripe());
}

class Gripe extends StatelessWidget {
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
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: const EdgeInsets.only(left: 130.0),
                  child: Text("Gripe",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right),
                ),
                Container(
                  width: 350,
                  height: 500,
                  margin: const EdgeInsets.only(left: 25.0),
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: color3.withOpacity(.4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                      'La gripe, también llamada influenza,' +
                          '\n' +
                          'es una infección respiratoria causada por virus.' +
                          '\n' +
                          'Causa' +
                          '\n' +
                          '- La gripe es causada por el virus de la influenza que se transmite de persona a persona.' +
                          '\n' +
                          'Cuando alguien con gripe tose, estornuda o habla, expulsa pequeñas gotas.' +
                          '\n' +
                          ' Estas gotitas pueden caer en la boca o en la nariz de las personas que están cerca.' +
                          '\n' +
                          'Síntomas' +
                          '\n' +
                          '- Fiebre o sensación de fiebre y escalofríos' +
                          '\n' +
                          '- Tos' +
                          '\n' +
                          '- Dolor de garganta' +
                          '\n' +
                          '- Goteo o congestión nasal' +
                          '\n' +
                          '- Dolores musculares o del cuerpo' +
                          '\n' +
                          '- Dolor de cabeza' +
                          '\n' +
                          '- Fatiga (cansancio)',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left),
                ),
                Container(
                  child: AspectRatio(
                    aspectRatio: 4,
                    child: Container(
                      margin: EdgeInsets.only(left: 195.0, bottom: 45),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: () {
                          _showAlerta(context);
                        },
                        icon: Image(
                            image: AssetImage('assets/img/tratamiento.png')),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future _showAlerta(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cuidado', style: TextStyle(fontSize: 20,)),
          content: const Text(
              '¡OJO!: Ningún remedio casero puede sustituir un tratamiento médico, lo mejor es consultar a un especialista.',
              style: TextStyle(
                color: Colors.black,
                          fontWeight: FontWeight.bold
              ),),
          actions: [
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MenuTratamientoGripe()));
              },
            ),
          ],
        );
      },
    );
  }
}
