// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mtg_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MtgCard _$MtgCardFromJson(Map<String, dynamic> json) {
  return _MtgCard.fromJson(json);
}

/// @nodoc
mixin _$MtgCard {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get rarity => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  /// Serializes this MtgCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MtgCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MtgCardCopyWith<MtgCard> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MtgCardCopyWith<$Res> {
  factory $MtgCardCopyWith(MtgCard value, $Res Function(MtgCard) then) =
      _$MtgCardCopyWithImpl<$Res, MtgCard>;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      String rarity,
      String? imageUrl,
      String? text});
}

/// @nodoc
class _$MtgCardCopyWithImpl<$Res, $Val extends MtgCard>
    implements $MtgCardCopyWith<$Res> {
  _$MtgCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MtgCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? rarity = null,
    Object? imageUrl = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MtgCardImplCopyWith<$Res> implements $MtgCardCopyWith<$Res> {
  factory _$$MtgCardImplCopyWith(
          _$MtgCardImpl value, $Res Function(_$MtgCardImpl) then) =
      __$$MtgCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      String rarity,
      String? imageUrl,
      String? text});
}

/// @nodoc
class __$$MtgCardImplCopyWithImpl<$Res>
    extends _$MtgCardCopyWithImpl<$Res, _$MtgCardImpl>
    implements _$$MtgCardImplCopyWith<$Res> {
  __$$MtgCardImplCopyWithImpl(
      _$MtgCardImpl _value, $Res Function(_$MtgCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of MtgCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? rarity = null,
    Object? imageUrl = freezed,
    Object? text = freezed,
  }) {
    return _then(_$MtgCardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MtgCardImpl extends _MtgCard {
  const _$MtgCardImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.rarity,
      this.imageUrl,
      this.text})
      : super._();

  factory _$MtgCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MtgCardImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String rarity;
  @override
  final String? imageUrl;
  @override
  final String? text;

  @override
  String toString() {
    return 'MtgCard(id: $id, name: $name, type: $type, rarity: $rarity, imageUrl: $imageUrl, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MtgCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, type, rarity, imageUrl, text);

  /// Create a copy of MtgCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MtgCardImplCopyWith<_$MtgCardImpl> get copyWith =>
      __$$MtgCardImplCopyWithImpl<_$MtgCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MtgCardImplToJson(
      this,
    );
  }
}

abstract class _MtgCard extends MtgCard {
  const factory _MtgCard(
      {required final String id,
      required final String name,
      required final String type,
      required final String rarity,
      final String? imageUrl,
      final String? text}) = _$MtgCardImpl;
  const _MtgCard._() : super._();

  factory _MtgCard.fromJson(Map<String, dynamic> json) = _$MtgCardImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get rarity;
  @override
  String? get imageUrl;
  @override
  String? get text;

  /// Create a copy of MtgCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MtgCardImplCopyWith<_$MtgCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
