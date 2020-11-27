import 'package:dipe/centrosCercanos/place.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PlacesService {
  final key = 'AIzaSyDCQSyMOBUzDSB2UkZhX3ozh4vqWuZhWnQ';

  Future<List<Place>> getPlaces(double lat, double lng) async {
    var response = await http.get(
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=hospital&rankby=distance&key=$key');
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['results'] as List;
    return jsonResults.map((place) => Place.fromJson(place)).toList();
  }
}
