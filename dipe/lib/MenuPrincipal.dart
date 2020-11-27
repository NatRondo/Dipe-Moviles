import 'dart:ui';
import 'package:dipe/MenuEnfermedades.dart';
import 'package:dipe/centrosCercanos/CentrosCercanos.dart';
import 'package:dipe/centrosCercanos/geolocalizador.dart';
import 'package:dipe/primerosAuxilios/primerosAuxilios.dart';
import 'package:flutter/material.dart';

import 'colores-app.dart';

void main() {
  runApp(MenuPrincipal());
}

class MenuPrincipal extends StatelessWidget {
  final locatorService = ServicioGeolocalizador();
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
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [color1, color2],
                      ),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black87,
                              ),
                              hintText: "Search you're looking for",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Recomendado',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            AspectRatio(
                              aspectRatio: 2.62 / 3,
                              child: Container(
                                margin: EdgeInsets.only(right: 15.0),
                                decoration: BoxDecoration(
                                  color: color3,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/img1.jpg'),
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image(
                                      image:
                                          AssetImage('assets/img/extra.png')),
                                ),
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 2.62 / 3,
                              child: Container(
                                margin: EdgeInsets.only(right: 15.0),
                                decoration: BoxDecoration(
                                  color: color3,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/img1.jpg'),
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image(
                                      image:
                                          AssetImage('assets/img/extra.png')),
                                ),
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 2.62 / 3,
                              child: Container(
                                margin: EdgeInsets.only(right: 15.0),
                                decoration: BoxDecoration(
                                  color: color3,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/given4.jpg'),
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image(
                                      image:
                                          AssetImage('assets/img/extra.png')),
                                ),
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 2.62 / 3,
                              child: Container(
                                margin: EdgeInsets.only(right: 15.0),
                                decoration: BoxDecoration(
                                  color: color3,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/given11.jpg'),
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/img/extra.png')),
                                ),
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 2.62 / 3,
                              child: Container(
                                  margin: EdgeInsets.only(right: 15.0),
                                  decoration: BoxDecoration(
                                    color: color3,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/img1.jpg'),
                                    ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Image(
                                      image: AssetImage('assets/img/extra.png'),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                menu(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget menu(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color4,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 360,
      height: 105,
      child: GridView.count(
        crossAxisCount: 4,
        children: [
          Card(
            elevation: 0,
            color: color4,
            margin: EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuEnfermedades()),
                );
              },
              splashColor: Colors.blueAccent.withOpacity(.3),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.description,
                      size: 30.0,
                    ),
                    Text(
                      'Enfermedades',
                      style: TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0,
            color: color4,
            margin: EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueAccent.withOpacity(.3),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.note_add,
                      size: 30.0,
                    ),
                    Text(
                      'Añadir' + '\n' + 'Sintomas',
                      style: TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0,
            color: color4,
            margin: EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPrimerosAuxilios()),);
              },
              splashColor: Colors.blueAccent.withOpacity(.3),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.medical_services),
                    Text(
                      'Primeros' + '\n' + 'Auxilios',
                      style: TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0,
            color: color4,
            margin: EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CentrosCercanos()),
                );
              },
              splashColor: Colors.blueAccent.withOpacity(.3),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.map,
                      size: 30.0,
                    ),
                    Text(
                      'Centros' + '\n' + 'Cercanos',
                      style: TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
