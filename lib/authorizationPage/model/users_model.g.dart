// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersModelImpl _$$UsersModelImplFromJson(Map<String, dynamic> json) =>
    _$UsersModelImpl(
      username: json['username'] as String,
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UsersModelImplToJson(_$UsersModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'password': instance.password,
    };
