import 'package:flutter_localization/flutter_localization.dart';

List<MapLocale> LOCALES = [
  MapLocale("en", LocaleData.EN),
  MapLocale("de", LocaleData.DE),
  MapLocale("zh", LocaleData.ZH),
];

mixin LocaleData {
  static const String title = 'title';
  static const String body = 'body';

  static const Map<String, dynamic> EN = {
    title: 'Localization',
    body: 'Welcome to this localized flutter application',
  };
  static const Map<String, dynamic> DE = {
    title: 'Lokalisierung',
    body: 'Willkommen bei dieser lokalisierten Flatteranwendung',
  };

  static const Map<String, dynamic> ZH = {
    title: '本土化',
    body: '欢迎使用这个本地化的 flutter 应用程序',
  };
}
