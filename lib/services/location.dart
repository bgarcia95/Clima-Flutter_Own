import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

    try {
      if (position != null) {
        latitude = position.latitude;
        longitude = position.longitude;
      }
    } catch (e) {
      print(e);
    }

    print(position);
  }
}
