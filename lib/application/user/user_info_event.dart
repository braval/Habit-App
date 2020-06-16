part of 'user_info_bloc.dart';

@freezed
abstract class UserInfoEvent with _$UserInfoEvent {
  const factory UserInfoEvent.populateUserInfo() = PopulateUserInfo;
}
