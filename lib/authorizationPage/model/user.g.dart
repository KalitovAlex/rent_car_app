// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      username: json['user_name'] as String?,
      name: json['user_login'] as String?,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'user_name': instance.username,
      'user_login': instance.name,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'password': instance.password,
      'uid': instance.uid,
    };
