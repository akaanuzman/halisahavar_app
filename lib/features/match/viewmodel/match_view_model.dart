import '../../../core/manager/network_manager.dart';
import '../model/match_model.dart';
import '../service/IMatchService.dart';
import '../service/match_service.dart';
import 'package:mobx/mobx.dart';
part 'match_view_model.g.dart';

class MatchViewModel = _MatchViewModelBase with _$MatchViewModel;

abstract class _MatchViewModelBase with Store {
  late IMatchService matchService;

  @observable
  MatchModel items = MatchModel();

  _MatchViewModelBase() {
    matchService = MatchService(NetworkManager.instance!.dio);
  }

  @action
  Future<void> fetchItems() async => items = await matchService.fetchAllMatch();
}
