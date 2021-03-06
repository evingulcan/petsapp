class Language {
  final int id;
  final String flag;
  final String name;
   final String languageCode;

  Language(this.id, this.flag, this.name,this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "πΉπ·", "Turkish" ,"tr"),
      Language(2, "πΊπΈ", "English","en"),
      Language(3, "π¦πΏ",  "Azerbaijani","az"),
      Language(4, "πͺπΈ", "Spanish","es"),
      Language(5, "π©πͺ",  "German","de"),
      Language(6, "π­πΊ", "Hungarian","hu"),
      Language(7, "π«π·", "French","fr"),
      Language(8, "π³π±", "Dutch","nl"),
    ];
  }
}