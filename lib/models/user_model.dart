import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    required String token,
    required String message,
    required String status,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}

@freezed
class UserError with _$UserError {
  factory UserError({
    required String message,
    String? status,
  }) = _UserError;

  factory UserError.fromJson(Map<String, dynamic> json) =>
      _$UserErrorFromJson(json);
}

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required bool isLoding,
    UserState? data,
    UserError? error,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
