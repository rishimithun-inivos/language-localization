import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void Main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapsPage(),
      localizationsDelegates: [
        MapLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('es', ''),
      ],
    );
  }
}

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  String selectedLanguageCode = 'es';

  String googleAPiKey = "AIzaSyAKAqOT1C_hhwk2fvIKkj7EHmKAPitABB0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MapLocalizations.of(context)!.title),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(6.89638415708269, 79.85728076710284),
          zoom: 15,
        ),
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController googleMapController) {},
      ),
    );
  }
}

class MapLocalizations {
  MapLocalizations(Locale locale) : _localeName = locale.toString();
  final String _localeName;
  static MapLocalizations? of(BuildContext context) {
    return Localizations.of<MapLocalizations>(context, MapLocalizations);
  }

  String get title {
    return Intl.message(
      'Map',
      name: 'title',
      locale: _localeName,
    );
  }
}

class MapLocalizationsDelegate extends LocalizationsDelegate<MapLocalizations> {
  const MapLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'es'].contains(locale.languageCode);
  }

  @override
  Future<MapLocalizations> load(Locale locale) async {
    return MapLocalizations(locale);
  }

  @override
  bool shouldReload(MapLocalizationsDelegate old) => false;
}
