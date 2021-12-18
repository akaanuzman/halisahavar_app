//* kod tekrarını engellemek için oluşturduğum singleton network manager sınıfı

import 'package:dio/dio.dart';
import 'package:halisahavar_app/core/constants/app/application_constants.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager? get instance {
    if (_instance != null) {
      return _instance;
    } else {
      _instance = NetworkManager.init();
      return _instance!;
    }
  }

  late final Dio dio;

  String baseUrl = ApplicationConstants.instance!.baseUrl;

  NetworkManager.init() {
    dio = Dio(BaseOptions(baseUrl: baseUrl));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          handler.next(options);
        },
      ),
    );
  }
}
