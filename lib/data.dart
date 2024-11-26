class UserData {
  static final UserData _instance = UserData._internal();
  factory UserData() => _instance;

  UserData._internal();

  String name = '';
  String title = '';
  String description = '';
  List<String> titles = [];
  List<String> descriptions = [];
  Map<String, List<Map<String, String>>> flashcards = {}; // { "Set Title": [{"frontside": "text", "backside": "text"}] }
}
