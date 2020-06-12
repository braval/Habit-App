import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
    @required Name firstName,
    @required Name lastName,
  }) = _User;
}
