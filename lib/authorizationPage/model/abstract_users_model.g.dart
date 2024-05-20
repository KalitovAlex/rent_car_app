// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abstract_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbstractusersModelImpl _$$AbstractusersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AbstractusersModelImpl(
      username: json['username'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phoneNumber: json['phone_number'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$AbstractusersModelImplToJson(
        _$AbstractusersModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'password': instance.password,
    };
