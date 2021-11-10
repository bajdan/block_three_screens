import 'package:new_folder/managers/shared_prefs_manager.dart';

abstract class IUserRepository{
String? value;

bool loginUser(String login, String pass);

bool logout();
}

class UserRepository extends IUserRepository{
  final ISharedPrefs sharedPrefs;

  UserRepository({required this.sharedPrefs});

  @override
  bool loginUser(String login, String pass) {
    return sharedPrefs.chekUserInfo(login, pass);
  }

  @override
  bool logout() {
    //Try logout...
    return true;
  }
  
}