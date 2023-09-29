// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserState _$$_UserStateFromJson(Map<String, dynamic> json) => _$_UserState(
      token: json['token'] as String,
      message: json['message'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_UserStateToJson(_$_UserState instance) =>
    <String, dynamic>{
      'token': instance.token,
      'message': instance.message,
      'status': instance.status,
    };

_$_UserError _$$_UserErrorFromJson(Map<String, dynamic> json) => _$_UserError(
      message: json['message'] as String,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_UserErrorToJson(_$_UserError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => _$_AuthState(
      isLoding: json['isLoding'] as bool,
      data: json['data'] == null
          ? null
          : UserState.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : UserError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'isLoding': instance.isLoding,
      'data': instance.data,
      'error': instance.error,
    };
