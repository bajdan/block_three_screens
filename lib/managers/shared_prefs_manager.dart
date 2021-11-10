import 'package:shared_preferences/shared_preferences.dart';

abstract class ISharedPrefs{
  bool chekUserInfo(String login, String password);

  void signupUser(String login, String password);
}

class SharedPrefsManager extends ISharedPrefs{
  late SharedPreferences _prefs;
  
  SharedPrefsManager(){
    _initPrefs();
  }

  @override
  bool chekUserInfo(String login, String password) {
    return password == _prefs.getString(login) ? true: false;
  }

  @override
  void signupUser(String login, String password) {
    _prefs.setString(login, password);
  }

  void _initPrefs() async{
    _prefs = await SharedPreferences.getInstance();
    _prefs.setString('flutter.school@gmail.com', 'Bestee5');
  }



}