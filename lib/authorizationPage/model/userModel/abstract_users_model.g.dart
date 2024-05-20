// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abstract_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbstractUsersModelImpl _$$AbstractUsersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AbstractUsersModelImpl(
      username: json['username'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phoneNumber: json['phone_number'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$AbstractUsersModelImplToJson(
        _$AbstractUsersModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'password': instance.password,
    };
