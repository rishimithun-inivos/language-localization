import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum Language { english, spanish }

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Language>>[
              PopupMenuItem(
                value: Language.english,
                child: Text(
                  'English',
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'Spanish',
                ),
                value: Language.spanish,
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
