// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:halisahavar_app/features/match/model/match_model.dart';

abstract class IMatchService {
  final Dio dio;

  IMatchService(this.dio);

  Future<MatchModel> fetchAllMatch();
}
