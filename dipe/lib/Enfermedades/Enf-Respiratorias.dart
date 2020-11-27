import 'package:dipe/Enfermedades/Respiratorias/Gripe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colores-app.dart';

void main() {
  runApp(EnfRespiratorias());
}

class EnfRespiratorias extends StatelessWidget {
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
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Enfermedades Respiratorias",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  padding: EdgeInsets.all(20.0),
                  height: 850,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      AspectRatio(
                        aspectRatio: 4,
                        child: Container(
                          height: 15,
                          width: 20,
                          margin: EdgeInsets.only(right: 5.0, bottom: 20),
                          decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/img/respiratorias/asma.png'),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image(
                                image: AssetImage('assets/img/extra.png')),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 4,
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0, bottom: 20),
                          decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/img/respiratorias/neumonia.png'),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image(
                                image: AssetImage('assets/img/extra.png')),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 4,
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0, bottom: 20),
                          decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/img/respiratorias/resfriado.png'),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image(
                                image: AssetImage('assets/img/extra.png')),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 4,
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0, bottom: 20),
                          decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/img/respiratorias/gripe.png'),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Gripe()));
                            },
                            icon: Image(
                                image: AssetImage('assets/img/extra.png')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
