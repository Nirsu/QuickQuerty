import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_model.freezed.dart';
part 'quote_model.g.dart';

/// This model represents a quote.
@freezed
class QuoteModel with _$QuoteModel {
  /// Default constructor for the [QuoteModel].
  const factory QuoteModel({
    // ignore: invalid_annotation_target, this is a bug du to the freezed package with json_serializable -> https://github.com/rrousselGit/freezed/issues/488
    @JsonKey(name: '_id') required String id,
    required String content,
    required String author,
    required List<String> tags,
    required String authorSlug,
    required int length,
    required String dateAdded,
    required String dateModified,
  }) = _QuoteModel;

  /// Create a [QuoteModel] from a json map.
  factory QuoteModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteModelFromJson(json);
}
