class Language {
  final int id;
  final String flag;
  final String name;
   final String languageCode;

  Language(this.id, this.flag, this.name,this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "🇹🇷", "Turkish" ,"tr"),
      Language(2, "🇺🇸", "English","en"),
      Language(3, "🇦🇿",  "Azerbaijani","az"),
      Language(4, "🇪🇸", "Spanish","es"),
      Language(5, "🇩🇪",  "German","de"),
      Language(6, "🇭🇺", "Hungarian","hu"),
      Language(7, "🇫🇷", "French","fr"),
      Language(8, "🇳🇱", "Dutch","nl"),
    ];
  }
}