import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  static late SharedPreferences _prefs;

  static String _nom = '';
  static bool _isDarkMode = false;
  static bool _isEmpty = false;

  static Future init() async{
    _prefs = await SharedPreferences.getInstance();
  }

  static String get nom{
    return _prefs.getString('nom') ?? _nom;
  }

  static set nom(String value){
    _nom = value;
    _prefs.setString('nom', value);
  }

  static bool get isDarkMode{
    return _prefs.getBool('darkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool value){
    _isDarkMode = value;
    _prefs.setBool('darkMode', value);
  }

  static bool get isEmpty{
    return _prefs.getBool('isEmpty') ?? _isEmpty;
  }

  static set isEmpty(bool value){
    _isEmpty = value;
    _prefs.setBool('isEmpty', value);
  }
  
  

}