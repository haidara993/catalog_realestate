import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:http/http.dart' as http;

final String apiKey = "G0MVALl0nD4Y9rCliSgY7iqSvqX4GuQ7";
const String MAPBOX_STYLE = 'mapbox/dark-v10';
const MARKER_COLOR = Color(0xFF3DC5A7);

final _myLocation = latLng.LatLng(35.363149, 35.932120);

class SearchView extends StatelessWidget {
  static const String ACCESS_TOKEN = String.fromEnvironment(
      "pk.eyJ1IjoiaGFpZGFyYTk5MyIsImEiOiJjbDR3cWFrM2IxOTV1M2ptemh1bXIyeDVqIn0.Wf7fGtHwCX4lg3oY8AwlYA");
  static const String MAPBOX_STYLE = 'mapbox/dark-v10';
  static const MARKER_COLOR = Color(0xFF3DC5A7);

  final _myLocation = latLng.LatLng(35.363149, 35.932120);

  final _startPointController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                minZoom: 5,
                maxZoom: 16,
                zoom: 13,
                center: _myLocation,
              ),
              nonRotatedLayers: [
                // TileLayerOptions(
                //   urlTemplate: "https://api.tomtom.com/map/1/tile/basic/main/"
                //       "{z}/{x}/{y}.png?key={apiKey}",
                //   additionalOptions: {"apiKey": apiKey},
                // ),
                TileLayerOptions(
                  urlTemplate:
                      "https://api.mapbox.com/styles/v1/haidara993/cl4xvkz01001o14mv7x3aoh60/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiaGFpZGFyYTk5MyIsImEiOiJjbDR3cWFrM2IxOTV1M2ptemh1bXIyeDVqIn0.Wf7fGtHwCX4lg3oY8AwlYA",
                  additionalOptions: {
                    'accessToken': ACCESS_TOKEN,
                    'id': 'mapbox.mapbox-streets-v8'
                  },
                ),
                MarkerLayerOptions(markers: [
                  Marker(
                      point: _myLocation,
                      builder: (_) {
                        return Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: MARKER_COLOR,
                            shape: BoxShape.circle,
                          ),
                        );
                      })
                ])
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.topRight,
              child: TextField(
                onSubmitted: (value) {
                  print('${value}');
                  getAddress(value);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void getAddress(String value) async {
    final Map<String, String> queryParams = {'key': '$apiKey'};
    var res = await http.get(Uri.https(
        "api.tomtom.com", "search/2/search/$value.json", queryParams));
    var jsonData = jsonDecode(res.body);
    print('$jsonData');
  }
}
