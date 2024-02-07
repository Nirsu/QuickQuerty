// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuoteModel _$QuoteModelFromJson(Map<String, dynamic> json) {
  return _QuoteModel.fromJson(json);
}

/// @nodoc
mixin _$QuoteModel {
// ignore: invalid_annotation_target, this is a bug du to the freezed package with json_serializable -> https://github.com/rrousselGit/freezed/issues/488
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get authorSlug => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get dateAdded => throw _privateConstructorUsedError;
  String get dateModified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteModelCopyWith<QuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteModelCopyWith<$Res> {
  factory $QuoteModelCopyWith(
          QuoteModel value, $Res Function(QuoteModel) then) =
      _$QuoteModelCopyWithImpl<$Res, QuoteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String content,
      String author,
      List<String> tags,
      String authorSlug,
      int length,
      String dateAdded,
      String dateModified});
}

/// @nodoc
class _$QuoteModelCopyWithImpl<$Res, $Val extends QuoteModel>
    implements $QuoteModelCopyWith<$Res> {
  _$QuoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? author = null,
    Object? tags = null,
    Object? authorSlug = null,
    Object? length = null,
    Object? dateAdded = null,
    Object? dateModified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authorSlug: null == authorSlug
          ? _value.authorSlug
          : authorSlug // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String,
      dateModified: null == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteModelImplCopyWith<$Res>
    implements $QuoteModelCopyWith<$Res> {
  factory _$$QuoteModelImplCopyWith(
          _$QuoteModelImpl value, $Res Function(_$QuoteModelImpl) then) =
      __$$QuoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String content,
      String author,
      List<String> tags,
      String authorSlug,
      int length,
      String dateAdded,
      String dateModified});
}

/// @nodoc
class __$$QuoteModelImplCopyWithImpl<$Res>
    extends _$QuoteModelCopyWithImpl<$Res, _$QuoteModelImpl>
    implements _$$QuoteModelImplCopyWith<$Res> {
  __$$QuoteModelImplCopyWithImpl(
      _$QuoteModelImpl _value, $Res Function(_$QuoteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? author = null,
    Object? tags = null,
    Object? authorSlug = null,
    Object? length = null,
    Object? dateAdded = null,
    Object? dateModified = null,
  }) {
    return _then(_$QuoteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authorSlug: null == authorSlug
          ? _value.authorSlug
          : authorSlug // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String,
      dateModified: null == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteModelImpl implements _QuoteModel {
  const _$QuoteModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.content,
      required this.author,
      required final List<String> tags,
      required this.authorSlug,
      required this.length,
      required this.dateAdded,
      required this.dateModified})
      : _tags = tags;

  factory _$QuoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteModelImplFromJson(json);

// ignore: invalid_annotation_target, this is a bug du to the freezed package with json_serializable -> https://github.com/rrousselGit/freezed/issues/488
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String content;
  @override
  final String author;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String authorSlug;
  @override
  final int length;
  @override
  final String dateAdded;
  @override
  final String dateModified;

  @override
  String toString() {
    return 'QuoteModel(id: $id, content: $content, author: $author, tags: $tags, authorSlug: $authorSlug, length: $length, dateAdded: $dateAdded, dateModified: $dateModified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.authorSlug, authorSlug) ||
                other.authorSlug == authorSlug) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      author,
      const DeepCollectionEquality().hash(_tags),
      authorSlug,
      length,
      dateAdded,
      dateModified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteModelImplCopyWith<_$QuoteModelImpl> get copyWith =>
      __$$QuoteModelImplCopyWithImpl<_$QuoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteModelImplToJson(
      this,
    );
  }
}

abstract class _QuoteModel implements QuoteModel {
  const factory _QuoteModel(
      {@JsonKey(name: '_id') required final String id,
      required final String content,
      required final String author,
      required final List<String> tags,
      required final String authorSlug,
      required final int length,
      required final String dateAdded,
      required final String dateModified}) = _$QuoteModelImpl;

  factory _QuoteModel.fromJson(Map<String, dynamic> json) =
      _$QuoteModelImpl.fromJson;

  @override // ignore: invalid_annotation_target, this is a bug du to the freezed package with json_serializable -> https://github.com/rrousselGit/freezed/issues/488
  @JsonKey(name: '_id')
  String get id;
  @override
  String get content;
  @override
  String get author;
  @override
  List<String> get tags;
  @override
  String get authorSlug;
  @override
  int get length;
  @override
  String get dateAdded;
  @override
  String get dateModified;
  @override
  @JsonKey(ignore: true)
  _$$QuoteModelImplCopyWith<_$QuoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
