import 'package:geolocator/geolocator.dart';

class Location {
  static Future<Position> determinePosition() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();

      if (!serviceEnabled) {
        throw {"message": 'Location services are disabled.'};
      }

      permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.deniedForever) {
        throw {
          "message":
              'Location permissions are permanently denied, we cannot request permissions.'
        };
      }

      return await Geolocator.getCurrentPosition();
    } catch (e) {
      throw e;
    }
  }
}
