import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../class/map_widget.dart';
import './transportation_box.dart';
import '../components/function/price_box.dart';
import '../components/function/fetch_address.dart';
import './registered_addresses.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final TextEditingController _textEditingController = TextEditingController();
  double? latitude;
  double? longitude;
  late String districtNumber = '';
  late String formattedAddress = '';
  String desiredText = '';
  List<Map<String, dynamic>> chosenAddresses = [];
  List<Map<String, dynamic>> previousAddresses = [];

  @override
  void initState() {
    super.initState();
  }

  // void loadAddresses() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  //   String? chosenAddressesJson = prefs.getString('chosenAddresses');
  //   if (chosenAddressesJson != null) {
  //     List<dynamic> chosenAddressesList = jsonDecode(chosenAddressesJson);
  //     setState(() {
  //       chosenAddresses = chosenAddressesList.cast<Map<String, dynamic>>();
  //     });
  //   }

  //   String? previousAddressesJson = prefs.getString('previousAddresses');
  //   if (previousAddressesJson != null) {
  //     List<dynamic> previousAddressesList = jsonDecode(previousAddressesJson);
  //     setState(() {
  //       previousAddresses = previousAddressesList.cast<Map<String, dynamic>>();
  //     });
  //   }
  // }

  void updateLocation(double lat, double lng) {
    setState(() {
      latitude = lat;
      longitude = lng;
    });
  }

  final fetchAddress = FetchAddress();

  Future<void> AddressInfo() async {
    if (latitude != null && longitude != null) {
      final addressData = await fetchAddress.AddressFetch(latitude, longitude);
      setState(() {
        districtNumber = addressData['municipality_zone'];
        formattedAddress = addressData['formatted_address'];
      });
      print('formatted address inside AddressInfo is $formattedAddress');
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('savedAddress', formattedAddress);
    } else {
      print('Mission failed!');
    }
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void updateTextField() async {
    setState(() {
      desiredText = formattedAddress;
      _textEditingController.text = desiredText;
    });

    chosenAddresses.add({
      'lat': latitude,
      'long': longitude,
      'text': desiredText,
    });

    setState(() {
      previousAddresses = [chosenAddresses.last];
    });

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('previousAddresses', jsonEncode(previousAddresses));
  }

  @override
  Widget build(BuildContext context) {
    print('your location inside map page is $latitude and $longitude');
    print('your district number is $districtNumber');
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // PriceBox(price: 0),
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFF04A8B2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          backgroundColor: Colors.white,
                          insetPadding: EdgeInsets.all(10),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'انتخاب نشانی های قبلی',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Expanded(
                                  child: RegisteredAddresses(),
                                ),
                                SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('بستن'),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_location,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'انتخاب نشانی های قبلی',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            TransportationBox(
              districtNumber: districtNumber,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                'موقعیت مکانی نقشه را مشخص کنید',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF037E85),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MapWidget(
              onLocationPicked: updateLocation,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('انتخاب و ذخیره آدرس'),
              onPressed: () async {
                await AddressInfo();
                print(
                    'formatted text inside button after AddressInfo is $formattedAddress');
                updateTextField();
                print(
                    'desired text inside button after update text field is $desiredText');
                print(
                    'addresses previously added to the list $previousAddresses');
                print('chosenaddresses added to the list $chosenAddresses');
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0),
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'نشانی',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF037E85),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFF037E85),
                        )),
                    child: TextField(
                      controller: _textEditingController,
                      maxLines: null,
                      minLines: 1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        // enabledBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: Colors.transparent,
                        //   ),
                        // ),
                        hintText:
                            'تهران، کارگر شمالی، انتهای کوی فراز، کوچه یاس',
                        hintStyle: TextStyle(
                          color: Color(0xFF037E85),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xFF037E85),
                            )),
                        child: TextField(
                          // maxLines: null,
                          // minLines: 1,
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(
                            //     color: Colors.transparent,
                            //   ),
                            // ),
                            hintText: 'پلاک ...',
                            hintStyle: TextStyle(
                              color: Color(0xFF037E85),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xFF037E85),
                            )),
                        child: TextField(
                          // maxLines: null,
                          // minLines: 1,
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(
                            //     color: Colors.transparent,
                            //   ),
                            // ),
                            hintText: 'واحد ...',
                            hintStyle: TextStyle(
                              color: Color(0xFF037E85),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
