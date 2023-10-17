import 'package:flutter/material.dart';
import 'package:localization_sample/controller/language_change_controller.dart';
import 'package:localization_sample/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageChangeController())
      ],
      child: Consumer<LanguageChangeController>(
        builder: (context, value, child) {
          return MaterialApp();
        },
      ),
    );
  }
}
