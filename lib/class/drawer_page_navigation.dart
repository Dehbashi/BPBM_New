import 'package:flutter/material.dart';

import '../screens/components/services/airconditioningpage.dart';
import '../screens/components/services/burglaralarmpage.dart';
import '../screens/components/services/ceilingfanpage.dart';
import '../screens/components/services/centralpage.dart';
import '../screens/components/services/damperpage.dart';
import '../screens/components/services/drillpage.dart';
import '../screens/components/services/earthpage.dart';
import '../screens/components/services/firealarmpage.dart';
import '../screens/components/services/indpowerpage.dart';
import '../screens/components/services/lightingpage.dart';
import '../screens/components/services/lightremotepage.dart';
import '../screens/components/services/sensorpage.dart';
import '../screens/components/services/telephonepage.dart';
import '../screens/components/services/upspage.dart';
import '../screens/components/services/walltvpage.dart';
import '../screens/components/services/antennapage.dart';
import '../screens/components/services/gascoolerpage.dart';
import '../screens/components/services/watercoolerpage.dart';
import '../screens/components/services/iphonepage.dart';
import '../screens/components/services/cctvpage.dart';
import '../screens/components/services/outletpage.dart';
import '../screens/components/services/wiringpage.dart';
import '../screens/components/services/modempage.dart';


void navigateToPage(BuildContext context, dynamic id) {
      switch (id) {
        case 4:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AntennaPage()));
          break;
        case 3:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => IphonePage()));
          break;
        case 2:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => GasCoolerPage()));
          break;
        case 1:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WaterCoolerPage()));
          break;
        case 8:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UpsPage()));
          break;
        case 7:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OutletPage()));
          break;
        case 6:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WiringPage()));
          break;
        case 5:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CctvPage()));
          break;
        case 13:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CentralPage()));
          break;
        case 12:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TelephonePage()));
          break;
        case 11:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FireAlarmPage()));
          break;
        case 10:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SensorPage()));
          break;
        case 17:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DrillPage()));
          break;
        case 16:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => EarthPage()));
          break;
        case 15:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LightingPage()));
          break;
        case 14:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => IndPowerPage()));
          break;
        case 21:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WallTvPage()));
          break;
        case 20:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CeilingFanPage()));
          break;
        case 19:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LightRemotePage()));
          break;
        case 18:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DamperPage()));
          break;
        case 22:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AirConditioningPage()));
          break;
        case 23:
          // Navigate to the home page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BurglarAlarmPage()));
          break;
        case 24:
          // Navigate to the home page
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ModemPage()));
          break;
      }
  }