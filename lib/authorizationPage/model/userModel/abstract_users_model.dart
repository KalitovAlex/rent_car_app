import 'package:freezed_annotation/freezed_annotation.dart';

part 'abstract_users_model.freezed.dart';
part 'abstract_users_model.g.dart';

@freezed
class AbstractUsersModel with _$AbstractUsersModel {
        factory AbstractUsersModel({
        @JsonKey(name: "username")
        @Default('') String username,
        @JsonKey(name: "name")
        @Default('') String name,
        @JsonKey(name: "phone_number")
        @Default('') String phoneNumber,
        @JsonKey(name: "email")
        @Default('') String email,
        @JsonKey(name: "password")
        @Default('') String password,
    }) = _AbstractUsersModel;

    factory AbstractUsersModel.fromJson(Map<String, dynamic> json) => _$AbstractUsersModelFromJson(json);
}


