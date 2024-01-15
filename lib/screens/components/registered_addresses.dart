import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

class RegisteredAddresses extends StatefulWidget {
  const RegisteredAddresses({Key? key}) : super(key: key);

  @override
  State<RegisteredAddresses> createState() => _RegisteredAddressesState();
}

class _RegisteredAddressesState extends State<RegisteredAddresses> {
  List<Map<String, dynamic>> allPreviousAddresses = [];
  List<Map<String, dynamic>> previousAddresses =
      []; // Separate list for previous addresses
  int? selectedAddressIndex;

  @override
  void initState() {
    super.initState();
    fetchAddressesData();
  }

  void clearAddresses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('previousAddresses');
  }

  Future<void> fetchAddressesData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? allPreviousAddressesJson = prefs.getString('allPreviousAddresses');
    String? previousAddressesJson = prefs.getString('previousAddresses');

    if (allPreviousAddressesJson != null) {
      List<dynamic> decodedData = jsonDecode(allPreviousAddressesJson);
      List<Map<String, dynamic>> allAddresses =
          decodedData.cast<Map<String, dynamic>>();
      setState(() {
        allPreviousAddresses = allAddresses;
      });
    }
    if (previousAddressesJson != null) {
      List<dynamic> decodedData = jsonDecode(previousAddressesJson);
      List<Map<String, dynamic>> addresses =
          decodedData.cast<Map<String, dynamic>>();
      setState(() {
        previousAddresses = addresses;
      });

      mergeAddresses(previousAddresses);
      clearAddresses();
    }
    print(
        'previousAddresses inside registered addresses is $previousAddresses');
  }

  Future<void> saveAddressesData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String allPreviousEncodedData = jsonEncode(allPreviousAddresses);
    await prefs.setString('allPreviousAddresses', allPreviousEncodedData);
  }

  void mergeAddresses(List<Map<String, dynamic>> newAddresses) {
    setState(() {
      allPreviousAddresses.addAll(newAddresses);
    });
    saveAddressesData();
  }

  @override
  Widget build(BuildContext context) {
    print(
        'allpreviousAddresses inside registered addresses build is $allPreviousAddresses');
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                itemCount: allPreviousAddresses.length,
                itemBuilder: (context, index) {
                  final address = allPreviousAddresses[index];
                  final latitude = address['lat'];
                  final longitude = address['long'];
                  final text = address['text'];

                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 7),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFCDEEF0),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(
                              0, 3), // changes the position of the shadow
                        ),
                      ],
                    ),
                    child: RadioListTile(
                      title: Text(
                        text,
                        style: TextStyle(
                          color: Color(0xFF025459),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      value: index,
                      groupValue: selectedAddressIndex,
                      onChanged: (value) {
                        setState(() {
                          selectedAddressIndex = value;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('here will sit the map'),
            // FlutterMap(
            //   options: MapOptions(
            //     // initialCenter: LatLng(2, 7),
            //     initialZoom: 15,
            //     initialCenter: latLng.LatLng(
            //       // _currentPosition?.latitude ?? 35.7006381,
            //       // _currentPosition?.longitude ?? 51.4089094,
            //       35.7006381,
            //       51.4089094,
            //     ),
            //   ),
            //   children: [
            //     TileLayer(
            //       urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            //       // userAgentPackageName: 'com.example.app',
            //       // maxZoom: 19,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    saveAddressesData(); // Save the addresses when the widget is disposed
    super.dispose();
  }
}
