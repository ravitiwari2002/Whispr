import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  //keys
  static const userLoggedInKey = "LOGGEDINKEY";
  static const userNameKey = "USERNAMEKEY";
  static const userEmailKey = "USEREMAILKEY";

  //saving the data to shared
  static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn) async {
    final sf = await SharedPreferences.getInstance();
    return sf.setBool(userLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameSF(String userName) async {
    final sf = await SharedPreferences.getInstance();
    return sf.setString(userNameKey, userName);
  }

  static Future<bool> saveUserEmailSF(String userEmail) async {
    final sf = await SharedPreferences.getInstance();
    return sf.setString(userEmailKey, userEmail);
  }

  //getting the data from shared
  static Future<bool?> getUserLoggedInStatus() async {
    final sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }

  static Future<String?> getUserEmailFromSF() async {
    final sf = await SharedPreferences.getInstance();
    return sf.getString(userEmailKey);
  }

  static Future<String?> getUserNameFromSF() async {
    final sf = await SharedPreferences.getInstance();
    return sf.getString(userNameKey);
  }
}
