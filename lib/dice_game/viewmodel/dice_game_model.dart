import 'package:mobx/mobx.dart';
part 'dice_game_model.g.dart';

class DiceGameViewModel = _DiceGameViewModelBase with _$DiceGameViewModel;

abstract class _DiceGameViewModelBase with Store {}
