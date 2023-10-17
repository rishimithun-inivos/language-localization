import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:localization_sample/localization/locales.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleData.title.getString(
            context,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 50,
        ),
        child: Text(
          context.formatString(
            LocaleData.body,
            [],
          ),
          style: TextStyle(
            fontSize: 21,
          ),
        ),
      ),
    );
  }
}
