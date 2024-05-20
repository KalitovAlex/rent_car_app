// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsersModel _$UsersModelFromJson(Map<String, dynamic> json) {
  return _UsersModel.fromJson(json);
}

/// @nodoc
mixin _$UsersModel {
  @JsonKey(name: "username")
  dynamic get username => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  dynamic get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  dynamic get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  dynamic get email => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  dynamic get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersModelCopyWith<UsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersModelCopyWith<$Res> {
  factory $UsersModelCopyWith(
          UsersModel value, $Res Function(UsersModel) then) =
      _$UsersModelCopyWithImpl<$Res, UsersModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") dynamic username,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "phone_number") dynamic phoneNumber,
      @JsonKey(name: "email") dynamic email,
      @JsonKey(name: "password") dynamic password});
}

/// @nodoc
class _$UsersModelCopyWithImpl<$Res, $Val extends UsersModel>
    implements $UsersModelCopyWith<$Res> {
  _$UsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersModelImplCopyWith<$Res>
    implements $UsersModelCopyWith<$Res> {
  factory _$$UsersModelImplCopyWith(
          _$UsersModelImpl value, $Res Function(_$UsersModelImpl) then) =
      __$$UsersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") dynamic username,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "phone_number") dynamic phoneNumber,
      @JsonKey(name: "email") dynamic email,
      @JsonKey(name: "password") dynamic password});
}

/// @nodoc
class __$$UsersModelImplCopyWithImpl<$Res>
    extends _$UsersModelCopyWithImpl<$Res, _$UsersModelImpl>
    implements _$$UsersModelImplCopyWith<$Res> {
  __$$UsersModelImplCopyWithImpl(
      _$UsersModelImpl _value, $Res Function(_$UsersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$UsersModelImpl(
      username: freezed == username ? _value.username! : username,
      name: freezed == name ? _value.name! : name,
      phoneNumber: freezed == phoneNumber ? _value.phoneNumber! : phoneNumber,
      email: freezed == email ? _value.email! : email,
      password: freezed == password ? _value.password! : password,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersModelImpl implements _UsersModel {
  _$UsersModelImpl(
      {@JsonKey(name: "username") this.username = null,
      @JsonKey(name: "name") this.name = null,
      @JsonKey(name: "phone_number") this.phoneNumber = null,
      @JsonKey(name: "email") this.email = null,
      @JsonKey(name: "password") this.password = null});

  factory _$UsersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersModelImplFromJson(json);

  @override
  @JsonKey(name: "username")
  final dynamic username;
  @override
  @JsonKey(name: "name")
  final dynamic name;
  @override
  @JsonKey(name: "phone_number")
  final dynamic phoneNumber;
  @override
  @JsonKey(name: "email")
  final dynamic email;
  @override
  @JsonKey(name: "password")
  final dynamic password;

  @override
  String toString() {
    return 'UsersModel(username: $username, name: $name, phoneNumber: $phoneNumber, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersModelImpl &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersModelImplCopyWith<_$UsersModelImpl> get copyWith =>
      __$$UsersModelImplCopyWithImpl<_$UsersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersModelImplToJson(
      this,
    );
  }
}

abstract class _UsersModel implements UsersModel {
  factory _UsersModel(
      {@JsonKey(name: "username") final dynamic username,
      @JsonKey(name: "name") final dynamic name,
      @JsonKey(name: "phone_number") final dynamic phoneNumber,
      @JsonKey(name: "email") final dynamic email,
      @JsonKey(name: "password") final dynamic password}) = _$UsersModelImpl;

  factory _UsersModel.fromJson(Map<String, dynamic> json) =
      _$UsersModelImpl.fromJson;

  @override
  @JsonKey(name: "username")
  dynamic get username;
  @override
  @JsonKey(name: "name")
  dynamic get name;
  @override
  @JsonKey(name: "phone_number")
  dynamic get phoneNumber;
  @override
  @JsonKey(name: "email")
  dynamic get email;
  @override
  @JsonKey(name: "password")
  dynamic get password;
  @override
  @JsonKey(ignore: true)
  _$$UsersModelImplCopyWith<_$UsersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
