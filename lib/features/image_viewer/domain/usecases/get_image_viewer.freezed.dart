// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_image_viewer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageViewerParams _$ImageViewerParamsFromJson(Map<String, dynamic> json) {
  return _ImageViewerParams.fromJson(json);
}

/// @nodoc
mixin _$ImageViewerParams {
  String? get key => throw _privateConstructorUsedError;
  String? get q => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageViewerParamsCopyWith<ImageViewerParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageViewerParamsCopyWith<$Res> {
  factory $ImageViewerParamsCopyWith(
          ImageViewerParams value, $Res Function(ImageViewerParams) then) =
      _$ImageViewerParamsCopyWithImpl<$Res, ImageViewerParams>;
  @useResult
  $Res call({String? key, String? q});
}

/// @nodoc
class _$ImageViewerParamsCopyWithImpl<$Res, $Val extends ImageViewerParams>
    implements $ImageViewerParamsCopyWith<$Res> {
  _$ImageViewerParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? q = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageViewerParamsImplCopyWith<$Res>
    implements $ImageViewerParamsCopyWith<$Res> {
  factory _$$ImageViewerParamsImplCopyWith(_$ImageViewerParamsImpl value,
          $Res Function(_$ImageViewerParamsImpl) then) =
      __$$ImageViewerParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? q});
}

/// @nodoc
class __$$ImageViewerParamsImplCopyWithImpl<$Res>
    extends _$ImageViewerParamsCopyWithImpl<$Res, _$ImageViewerParamsImpl>
    implements _$$ImageViewerParamsImplCopyWith<$Res> {
  __$$ImageViewerParamsImplCopyWithImpl(_$ImageViewerParamsImpl _value,
      $Res Function(_$ImageViewerParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? q = freezed,
  }) {
    return _then(_$ImageViewerParamsImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageViewerParamsImpl implements _ImageViewerParams {
  const _$ImageViewerParamsImpl({this.key, this.q});

  factory _$ImageViewerParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageViewerParamsImplFromJson(json);

  @override
  final String? key;
  @override
  final String? q;

  @override
  String toString() {
    return 'ImageViewerParams(key: $key, q: $q)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageViewerParamsImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.q, q) || other.q == q));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, q);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageViewerParamsImplCopyWith<_$ImageViewerParamsImpl> get copyWith =>
      __$$ImageViewerParamsImplCopyWithImpl<_$ImageViewerParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageViewerParamsImplToJson(
      this,
    );
  }
}

abstract class _ImageViewerParams implements ImageViewerParams {
  const factory _ImageViewerParams({final String? key, final String? q}) =
      _$ImageViewerParamsImpl;

  factory _ImageViewerParams.fromJson(Map<String, dynamic> json) =
      _$ImageViewerParamsImpl.fromJson;

  @override
  String? get key;
  @override
  String? get q;
  @override
  @JsonKey(ignore: true)
  _$$ImageViewerParamsImplCopyWith<_$ImageViewerParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
