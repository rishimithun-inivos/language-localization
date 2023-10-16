class Language {
  final int id;
  final String flag;
  final name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "AF", "فارسی", "fa"),
      Language(2, "US", "English", "en"),
      Language(3, "SA", "اَلْعَرَبِيَّةُ", "ar"),
      Language(4, "IN", "हिंदी", "hi"),
    ];
  }
}
