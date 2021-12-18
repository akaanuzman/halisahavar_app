// ignore_for_file: implementation_imports

import 'dart:io';

import 'package:dio/src/dio.dart';
import '../model/match_model.dart';

import 'IMatchService.dart';
import 'match_service_end_points.dart';

class MatchService extends IMatchService {
  MatchService(Dio dio) : super(dio);

  @override
  Future<MatchModel> fetchAllMatch() async {
    final response =
        await dio.get(MatchServiceEndPoints.MATCH.rawValue());
    if (response.statusCode == HttpStatus.ok) {
      return MatchModel.fromJson(response.data);
    }
    return MatchModel();
  }
  
}