import 'dart:convert';

import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = 'AIzaSyDRjZmZOxz5nP-ZIrZZqs1NJlQ2-XeH3R8';

class LocationHelper {
  static String generateLocationPreviewImage(
      {required double latitude, required double longitude}) {
    //return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=13&scale=1&size=400x400&markers=sdgaags&key=$GOOGLE_API_KEY';
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=20&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }

  static Future getPlaceAddress(double lat, double lng) async {
    final url = Uri.parse(
        'Https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY');
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}
