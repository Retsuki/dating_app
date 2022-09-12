import 'package:freezed_annotation/freezed_annotation.dart';

part 'worry_post_state.freezed.dart';

@freezed
class WorryPostState with _$WorryPostState {
  const factory WorryPostState({
    @Default(false) bool isPossibleSend,
  }) = _WorryPostState;
}
