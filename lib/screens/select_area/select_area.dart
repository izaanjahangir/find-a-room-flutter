import 'dart:async';
import "package:flutter/material.dart";
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:izaan_want_a_room/components/back_button_header/back_button_header.dart';
import 'package:izaan_want_a_room/config/theme_colors.dart';
import 'package:izaan_want_a_room/screens/select_area/change_radius.dart';
import 'package:izaan_want_a_room/utils/helpers.dart';
import 'package:izaan_want_a_room/utils/location.dart';

class SelectArea extends StatefulWidget {
  static const String screenName = "/select-area";

  @override
  _SelectAreaState createState() => _SelectAreaState();
}

class _SelectAreaState extends State<SelectArea> {
  final Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  Set<Marker> markers = {};
  Set<Circle> circles = {};
  double radius = 3;

  @override
  void initState() {
    getCurrentLocation();

    super.initState();
  }

  Circle createCircle(LatLng latLng, double r) {
    return Circle(
        circleId: CircleId("current-location-circle"),
        center: latLng,
        strokeWidth: 2,
        strokeColor: ThemeColors.lightBlue,
        radius: Helpers.kmToMeters(r),
        fillColor: ThemeColors.lightBlueTransparent);
  }

  void getCurrentLocation() async {
    try {
      final p = await Location.determinePosition();

      final LatLng latLng = LatLng(p.latitude, p.longitude);

      goToLocation(p.latitude, p.longitude);
      Marker currentLocationMarker = Marker(
          markerId: MarkerId("current-location-marker"), position: latLng);

      final Circle circle = createCircle(latLng, radius);

      setState(() {
        markers.add(currentLocationMarker);
        circles.add(circle);
      });
    } catch (e) {
      EasyLoading.showError(e["message"]);
    }
  }

  Future<void> goToLocation(double latitde, double longitude,
      {bool shouldNotZoom = false}) async {
    final GoogleMapController controller = await _controller.future;
    double zoom;

    if (shouldNotZoom) {
      zoom = await controller.getZoomLevel();
    } else {
      zoom = 12.5;
    }

    CameraPosition cameraPosition = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(latitde, longitude),
        zoom: zoom);

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  void changeRadius(double value) {
    final Circle c = circles.elementAt(0);
    final Circle c2 = createCircle(c.center, value);

    setState(() {
      radius = value;
      circles.clear();
      circles.add(c2);
    });
  }

  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.symmetric(horizontal: 20);

    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: const EdgeInsets.only(top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: padding,
              child: BackButtonHeader(
                label: "Select Area",
              ),
            ),
            Expanded(
                child: Stack(
              children: [
                GoogleMap(
                  compassEnabled: false,
                  mapType: MapType.normal,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  initialCameraPosition: initialCameraPosition,
                  onTap: (LatLng coordinates) {
                    final LatLng latLng =
                        LatLng(coordinates.latitude, coordinates.longitude);

                    Marker currentLocationMarker = Marker(
                        markerId: MarkerId("current-location-marker"),
                        position: latLng);

                    final Circle circle = createCircle(latLng, radius);

                    setState(() {
                      markers.clear();
                      circles.clear();

                      markers.add(currentLocationMarker);
                      circles.add(circle);
                    });
                  },
                  markers: markers,
                  circles: circles,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: ChangeRadius(
                    radius: radius,
                    onChanged: changeRadius,
                  ),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
