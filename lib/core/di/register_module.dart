import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: ApiConstants.baseURL,
          receiveDataWhenStatusError: true,
        ),
      );

  @preResolve
  Future<SharedPreferences> get sharedPref => SharedPreferences.getInstance();
}
