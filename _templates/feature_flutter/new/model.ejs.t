---
to: lib/features/<%= h.changeCase.snake(featureName) %>/models/<%= h.changeCase.snake(featureName) %>.dart
---
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inkya/utils/type/app_type.dart';

part '<%= h.changeCase.snake(featureName) %>.freezed.dart';
part '<%= h.changeCase.snake(featureName) %>.g.dart';

@freezed
class <%= h.changeCase.pascal(featureName) %> with _$<%= h.changeCase.pascal(featureName) %> {
  const factory <%= h.changeCase.pascal(featureName) %>({
    required String name,
  }) = _<%= h.changeCase.pascal(featureName) %>;

  factory <%= h.changeCase.pascal(featureName) %>.fromJson(JsonMap json) => _$<%= h.changeCase.pascal(featureName) %>FromJson(json);
}



