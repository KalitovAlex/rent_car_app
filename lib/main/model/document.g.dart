// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      name: json['name'] as String? ?? '',
      birthDate: json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
      dateOfIssue: json['date_of_issue'] == null
          ? null
          : DateTime.parse(json['date_of_issue'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      issuedBy: json['issued_by'] as String? ?? '',
      number: json['number'] as String? ?? '',
      whereIssued: json['where_issued'] as String? ?? '',
      categories: json['categories'] as String? ?? '',
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birth_date': instance.birthDate?.toIso8601String(),
      'date_of_issue': instance.dateOfIssue?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'issued_by': instance.issuedBy,
      'number': instance.number,
      'where_issued': instance.whereIssued,
      'categories': instance.categories,
      'user_id': instance.userId,
    };
