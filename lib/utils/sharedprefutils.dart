import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  /// Instantiation of the SharedPreferences Instances
  static final String _onBordingVisibility = "onBordingVisibility";
  static final String _isLogin = "isLogin";

  /// Method that returns the onBoarding screen visibility
  static Future<bool> getOnBoardScreen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getBool(_onBordingVisibility) == null) {
      prefs.setBool(_onBordingVisibility, true);
    }
    return prefs.getBool(_onBordingVisibility);
  }

  /// Method that set the  onBoarding screen visibility
  static Future<bool> setOnBoardScreen(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setBool(_onBordingVisibility, value);
  }

  /// Method that set the  onBoarding screen visibility
  static Future<bool> setLogin(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setBool(_isLogin, value);
  }

  /// Method that returns the onBoarding screen visibility
  static Future<bool> getLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool(_isLogin) == null) {
      prefs.setBool(_isLogin, false);
    }
    return prefs.getBool(_isLogin) ?? false;
  }
}
