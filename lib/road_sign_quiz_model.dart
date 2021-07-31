import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'road_sign_quiz_model.freezed.dart';

@freezed
class RoadSignQuizState with _$RoadSignQuizState {
  const factory RoadSignQuizState({
    int? quizTotalNumber,
    int? quizCorrectNumber,
  }) = _RoadSignQuizState;
}

class RoadSignQuizController extends StateNotifier<RoadSignQuizState> {
  RoadSignQuizController()
      : super(RoadSignQuizState(quizTotalNumber: 0, quizCorrectNumber: 0));

  void addTotalNumber() {
    state = state.copyWith(quizTotalNumber: state.quizTotalNumber! + 1);
  }

  void addCorrectNumber() {
    state = state.copyWith(quizCorrectNumber: state.quizCorrectNumber! + 1);
  }

  void resetAll() {
    state = state.copyWith(quizTotalNumber: 0);
    state = state.copyWith(quizCorrectNumber: 0);
  }

  double? calcCorrectRatio() {
    return state.quizCorrectNumber! / state.quizTotalNumber! * 100;
  }
}
