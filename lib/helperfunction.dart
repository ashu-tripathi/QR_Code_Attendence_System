import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  static String sharedPreferenceUserLoggedInKey = "ISLOGGEDIN";
  static String sharedPreferenceUserNameKey = "USERNAMEKEY";
  static String sharedPreferenceUserEmailKey = "USEREMAILKEY";
  static String sharedPreferenceUserPhotoUrlKey = "PHOTOURLKEY";
  static String sharedPreferenceChatRoomIdKey = "CHATROOMIDKEY";
  static String sharedPreferenceChatRoleKey = "ROLEKEY";
  static String sharedPreferenceUserFeedbackKey = "FEEDBACK";

  /// saving data to sharedpreference
  static Future<bool> saveUserLoggedInSharedPreference(
      bool isUserLoggedIn) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(
        sharedPreferenceUserLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameSharedPreference(String userName) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceUserNameKey, userName);
  }

  static Future<bool> saveUserEmailSharedPreference(String userEmail) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceUserEmailKey, userEmail);
  }

  static Future<bool> saveUserPhotoUrlSharedPreference(String userPhoto) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(
        sharedPreferenceUserPhotoUrlKey, userPhoto);
  }

  // static Future<bool> saveChatRoomIdSharedPreference(String chatRoomId) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   return await preferences.setString(
  //       sharedPreferenceChatRoomIdKey, chatRoomId);
  // }

  // static Future<bool> saveUserRoleSharedPreference(String role) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   return await preferences.setString(sharedPreferenceChatRoleKey, role);
  // }

  // static Future<bool> saveUserFeedbackSharedPreference(String feedback) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   return await preferences.setString(
  //       sharedPreferenceUserFeedbackKey, feedback);
  // }

  /// fetching data from sharedpreference
  static Future<bool> getUserLoggedInSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getBool(sharedPreferenceUserLoggedInKey);
  }

  static Future<String> getUserNameSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(sharedPreferenceUserNameKey);
  }

  static Future<String> getUserEmailSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(sharedPreferenceUserEmailKey);
  }

  // static Future<String> getUserRoleSharedPreference() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   return await preferences.getString(sharedPreferenceChatRoleKey);
  // }

  static Future<String> getUserPhotoUrlSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(sharedPreferenceUserPhotoUrlKey);
  }

  // static Future<String> getChatRoomIdSharedPreference() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   return await preferences.getString(sharedPreferenceChatRoomIdKey);
  // }

  // static Future<String> getUserFeedbackSharedPreference() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   return await preferences.getString(sharedPreferenceUserFeedbackKey);
  // }
}
