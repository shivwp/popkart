import 'dart:io';

import 'package:dio/dio.dart';

import 'api_constants.dart';

class HeaderNetWorkConstant {
  static String token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiMWVkMGQwNzU5YTFiM2E3YTc3MzdjNTBkM2RiMDA1OTEwNWJhMzA3ZGZhOWE0ZmIwY2NkYTRjNDU5NzdjODhhMjVhZDNjZmY3MjVmOGRjMTAiLCJpYXQiOjE2NDU5MzczMjcsIm5iZiI6MTY0NTkzNzMyNywiZXhwIjoxNjc3NDczMzI3LCJzdWIiOiIxMTEiLCJzY29wZXMiOltdfQ.GUi1UnrJPUZc9ctUz80F2Oh720d0DtI7N6SfPtM9cgDmZG4DO1aJ8NsMHAxgtzT6Msut_sZPnOnW0FRpAqslXPt-sr6Iz9YgrQ-HHf_mmVLpKzykvmjKcp7yxS9rMAhNATr251KpTugh0iAv1d4S1T4jWQ6n728EizmpvDAfI9T7Jyen01ItczS-fATWN70i-hXVbNeDYK3qA8R97auKIhbnZXv1gxS4sGhiToV02vbr-F7Yy1Y1a4p2Tflanu4eg_Y86NXDEJKoAE327O9P45Wdvnw3MBzBGMoZ6NI8pEMTbp4V-qVelrEMn-xU2sz9Uwajpga3WStL-mLYrOfSk6thS6uzc9eAA1Ijhaah1g_O2N75LXMsDYUovGowArXYT4eYeYL1J2T1egEZQzAAsZ_68KqV5Jld2NcQb8EmqFCzomBamNamq3WXdinqohpq2M4NJHLGPTFlL6IPisqme94sX-nowXMJi_Rv4-PcnysqoVZadF4bcok0P2nPEXcIWv-Ppa8SNTZfcTxKiFghTgAlkbbbYfhm5upE5dMuDBtspqqsQ0mJZkuB7eRCIiy9bBhCBOhmp0jtquAJBTTNeRJVhrt-5Homd6cB_af3gzFlyFcnjPyAjBktWtP3rW23mwpnNqM85oDadOiRUivahZQjqcTG9EVb9xwrATzae-I";
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: ApiConstants.BASE_URL,
      connectTimeout: 20000,
      receiveTimeout: 20000,
      headers: {
        'Content-Type': 'application/json',
        'charset': 'utf-8',
        'accept': 'application/json'
      });

  //GETwithouttoken
  static Future<Options> getOptionsWithOutToken({
    String accept = 'application/json',
    int sendTimeout = 60000,
    int receiveTimeout = 60000,
  }) async {
    return Options(
        sendTimeout: sendTimeout,
        receiveTimeout: receiveTimeout,
        headers: {
          'accept': accept,
          'Content-Type': 'application/x-www-form-urlencoded',
        });
  }

  //GETwithouttoken
  static Future<Options> getOptionsWithToken({
    String accept = 'application/json',
    int sendTimeout = 60000,
    int receiveTimeout = 60000,
  }) async {
    return Options(
        sendTimeout: sendTimeout,
        receiveTimeout: receiveTimeout,
        headers: {
          'accept': accept,
          'Content-Type': 'application/x-www-form-urlencoded',
          HttpHeaders.authorizationHeader: 'Bearer $token'
        });
  }
}
