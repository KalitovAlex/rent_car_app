// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'users_model.freezed.dart';
part 'users_model.g.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

@freezed
class User with _$User {
    const factory User({
        @JsonKey(name: "username")
        required String username,
        @JsonKey(name: "name")
        required String name,
        @JsonKey(name: "phone_number")
        required String phoneNumber,
        @JsonKey(name: "email")
        required String email,
        @JsonKey(name: "password")
        required String password,
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

class JsonKey {
  const JsonKey({required String name});
}

