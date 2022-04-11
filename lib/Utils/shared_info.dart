

import 'constants.dart';

class SharedInfo{

  /*static Future<SharedPreferences> get _instance async => _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences? _prefsInstance;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance!;
  }*/

  /*
  // save info logged in to shared preferences
  void sharedLoginSave(UserModel userModel, String pass){
    _prefsInstance!.setString(SHARED_USER_EMAIL, userModel.email);
    _prefsInstance!.setString(SHARED_USER_PASS, pass);
  }

  void clearLogin() {
    _prefsInstance!.setString(SHARED_USER_EMAIL, '');
    _prefsInstance!.setString(SHARED_USER_PASS, '');
  }

  String getEmailSaved() {
    return _prefsInstance!.getString(SHARED_USER_EMAIL) ?? '';
  }

  String getPassSaved() {
    return _prefsInstance!.getString(SHARED_USER_PASS) ?? '';
  }
*/
}