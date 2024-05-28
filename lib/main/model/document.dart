import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
class Document with _$Document {
    factory Document({
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "birth_date")
        DateTime? birthDate,
        @JsonKey(name: "date_of_issue")
        DateTime? dateOfIssue,
        @JsonKey(name: "end_date")
        DateTime? endDate,
        @JsonKey(name: "issued_by")
        String? issuedBy,
        @JsonKey(name: "number")
        String? number,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "where_issued")
        String? whereIssued,
        @JsonKey(name: "categories")
        String? categories,
        @JsonKey(name: "user_id")
        int? userId,
    }) = _Document;

    factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);
}
