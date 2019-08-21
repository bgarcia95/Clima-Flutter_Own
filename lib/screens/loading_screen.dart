import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

void getData() async {
  Location location = Location();
  await location.getLocation();

}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: ,
    );
  }
}
