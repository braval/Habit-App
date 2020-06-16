part of 'user_info_bloc.dart';

@freezed
abstract class UserInfoState with _$UserInfoState {
  const factory UserInfoState.initial() = Initial;
  const factory UserInfoState.busy() = Busy;
  const factory UserInfoState.userFetched(User user) = UserFetched;
  const factory UserInfoState.error(
      Option<Either<UserFailure, Unit>> userOption) = Error;
}
