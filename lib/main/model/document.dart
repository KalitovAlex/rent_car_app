import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
class Document with _$Document {
    factory Document({
        @JsonKey(name: "name")
        @Default('') String name,
        @JsonKey(name: "birth_date")
        DateTime? birthDate,
        @JsonKey(name: "date_of_issue")
        DateTime? dateOfIssue,
        @JsonKey(name: "end_date")
        DateTime? endDate,
        @JsonKey(name: "issued_by")
        @Default('') String issuedBy,
        @JsonKey(name: "number")
        @Default('') String number,
        @JsonKey(name: "where_issued")
        @Default('') String whereIssued,
        @JsonKey(name: "categories")
        @Default('') String categories,
        @JsonKey(name: "user_id")
        @Default(0) int userId,
    }) = _Document;

    factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);
}
