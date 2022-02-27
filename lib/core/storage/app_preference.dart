import 'package:shared_preferences/shared_preferences.dart';

class AppPrefernces {
  static final String LOGIN_PREF = "login";
  static final String TOKEN = "token";


  static AppPrefernces? _storageUtil;
  static SharedPreferences? _preferences;

  static final String YOUTUBE_ID = 'youtube';

  static final String INSTAGRAM_ID = 'insta';

  static final String USERID = 'userid';

  static final String CATEGORY_SET = "category";

  static final String INTRO = "intro";

  Future _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future clearall() async {
    await _preferences?.remove(getString(TOKEN));
  }

  static Future<AppPrefernces?> getInstance() async {
    if (_storageUtil == null) {
      // keep local instance till it is fully initialized.
      var secureStorage = AppPrefernces._();
      await secureStorage._init();
      _storageUtil = secureStorage;
    }
    return _storageUtil;
  }

  AppPrefernces._();

  // get string
  static String getString(String key, {String defValue = ''}) {
    if (_preferences == null) return defValue;
    return _preferences?.getString(key) ?? defValue;
  }

  // put string
  static Future<bool> putString(String key, String value) {
    if (_preferences != null);
    return _preferences!.setString(key, value);
  }

  static bool getboolen(String key, {bool defValue = false}) {
    if (_preferences == null) return false;
    return _preferences?.getBool(key) ?? defValue;
  }

  static Future<bool> putboolen(String key, bool value) {
    if (_preferences != null);
    return _preferences!.setBool(key, value);
  }

//
  static Future<Object?> getLoginPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(LOGIN_PREF);
  }

  static setLoginPref(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(LOGIN_PREF, value);
  }
}
