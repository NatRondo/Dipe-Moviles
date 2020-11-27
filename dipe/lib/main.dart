import 'dart:async';

import 'package:dipe/centrosCercanos/place.dart';
import 'package:dipe/centrosCercanos/places_service.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

import 'MenuPrincipal.dart';
import 'centrosCercanos/geolocalizador.dart';
import 'colores-app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locatorService = ServicioGeolocalizador();
    final placesService = PlacesService();

    return MultiProvider(
      providers: [
        FutureProvider(create: (context) => locatorService.getLocation()),
        ProxyProvider<Position,Future<List<Place>>>(
          update: (context, position, places) {
            return (position != null)
                ? placesService.getPlaces(position.latitude, position.longitude)
                : null;
          },
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreenPage(),
      ),
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MenuPrincipal())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color1, color2],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 120.0,
                        backgroundImage: AssetImage('assets/logo.PNG'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
