import 'package:dipe/centrosCercanos/geolocalizador.dart';
import 'package:dipe/centrosCercanos/marker_service.dart';
import 'package:dipe/centrosCercanos/place.dart';
import 'package:dipe/colores-app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class CentrosCercanos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentPosition = Provider.of<Position>(context);
    final placesProvider = Provider.of<Future<List<Place>>>(context);
    final geoService = ServicioGeolocalizador();
    final markerService = MarkerService();

    return FutureProvider(
      create: (context) => placesProvider,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: (currentPosition != null)
              ? Consumer<List<Place>>(
                  builder: (_, places, __) {
                    var markers = (places != null) ? markerService.getMarkers(places): List<Marker>();
                    return (places != null)
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                padding: EdgeInsets.all(30.0),
                                child: Text('Centros Cercanos',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                color: Colors.transparent,
                                height: MediaQuery.of(context).size.height / 3,
                                width: MediaQuery.of(context).size.width,
                                child: GoogleMap(
                                  initialCameraPosition: CameraPosition(
                                      target: LatLng(currentPosition.latitude,
                                          currentPosition.longitude),
                                      zoom: 16),
                                  zoomGesturesEnabled: true,
                                  markers: Set<Marker>.of(markers),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  padding: EdgeInsets.all(15.0),
                                  itemCount: places.length,
                                  itemBuilder: (context, index) {
                                    return FutureProvider(
                                      create: (context) =>
                                          geoService.getDistance(
                                              currentPosition.latitude,
                                              currentPosition.longitude,
                                              places[index]
                                                  .geometry
                                                  .location
                                                  .lat,
                                              places[index]
                                                  .geometry
                                                  .location
                                                  .lng),
                                      child: Card(
                                        child: ListTile(
                                          title: Text(places[index].name),
                                          subtitle: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              (places[index].rating != null)
                                                  ? Row(
                                                      children: [
                                                        RatingBarIndicator(
                                                          rating: places[index]
                                                              .rating,
                                                          itemBuilder: (context,
                                                                  index) =>
                                                              Icon(
                                                            Icons.star,
                                                            color: Colors.amber,
                                                          ),
                                                          itemCount: 5,
                                                          itemSize: 10.0,
                                                          direction:
                                                              Axis.horizontal,
                                                        ),
                                                      ],
                                                    )
                                                  : Row(),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Consumer<double>(
                                                builder:
                                                    (context, meters, wiget) {
                                                  return (meters != null)
                                                      ? Text(
                                                          '${places[index].vicinity} \u00b7 ${(meters / 1609).round()} mi')
                                                      : Container();
                                                },
                                              ),
                                            ],
                                          ),
                                          trailing: IconButton(
                                            icon: Icon(Icons.directions),
                                            color:
                                                Theme.of(context).primaryColor,
                                            onPressed: () {
                                              _launchMapsUrl(
                                                  places[index]
                                                      .geometry
                                                      .location
                                                      .lat,
                                                  places[index]
                                                      .geometry
                                                      .location
                                                      .lng);
                                            },
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          )
                        : Center(child: CircularProgressIndicator());
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }

  void _launchMapsUrl(double lat, double lng) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
