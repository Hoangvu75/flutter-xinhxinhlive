import 'package:shared_preferences/shared_preferences.dart';

String? state;

Future<void> saveData() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString("loginState", "1");
}