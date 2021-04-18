import 'dart:async';
import "package:flutter/material.dart";
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:izaan_want_a_room/components/back_button_header/back_button_header.dart';
import 'package:izaan_want_a_room/utils/location.dart';

class SelectArea extends StatefulWidget {
  static const String screenName = "/select-area";

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  _SelectAreaState createState() => _SelectAreaState();
}

class _SelectAreaState extends State<SelectArea> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    getCurrentLocation();

    super.initState();
  }

  void getCurrentLocation() async {
    try {
      final p = await Location.determinePosition();

      goToLocation(p.latitude, p.longitude);
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
      zoom = 19.151926040649414;
    }

    CameraPosition cameraPosition = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(latitde, longitude),
        zoom: zoom);

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.symmetric(horizontal: 20);
    final size = MediaQuery.of(context).size;

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
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: SelectArea._kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
