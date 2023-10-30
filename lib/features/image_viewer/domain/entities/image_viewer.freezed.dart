// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_viewer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageViewer {
  List<Hit> get hits => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageViewerCopyWith<ImageViewer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageViewerCopyWith<$Res> {
  factory $ImageViewerCopyWith(
          ImageViewer value, $Res Function(ImageViewer) then) =
      _$ImageViewerCopyWithImpl<$Res, ImageViewer>;
  @useResult
  $Res call({List<Hit> hits});
}

/// @nodoc
class _$ImageViewerCopyWithImpl<$Res, $Val extends ImageViewer>
    implements $ImageViewerCopyWith<$Res> {
  _$ImageViewerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hits = null,
  }) {
    return _then(_value.copyWith(
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Hit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageViewerImplCopyWith<$Res>
    implements $ImageViewerCopyWith<$Res> {
  factory _$$ImageViewerImplCopyWith(
          _$ImageViewerImpl value, $Res Function(_$ImageViewerImpl) then) =
      __$$ImageViewerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Hit> hits});
}

/// @nodoc
class __$$ImageViewerImplCopyWithImpl<$Res>
    extends _$ImageViewerCopyWithImpl<$Res, _$ImageViewerImpl>
    implements _$$ImageViewerImplCopyWith<$Res> {
  __$$ImageViewerImplCopyWithImpl(
      _$ImageViewerImpl _value, $Res Function(_$ImageViewerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hits = null,
  }) {
    return _then(_$ImageViewerImpl(
      hits: null == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Hit>,
    ));
  }
}

/// @nodoc

class _$ImageViewerImpl implements _ImageViewer {
  const _$ImageViewerImpl({required final List<Hit> hits}) : _hits = hits;

  final List<Hit> _hits;
  @override
  List<Hit> get hits {
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hits);
  }

  @override
  String toString() {
    return 'ImageViewer(hits: $hits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageViewerImpl &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageViewerImplCopyWith<_$ImageViewerImpl> get copyWith =>
      __$$ImageViewerImplCopyWithImpl<_$ImageViewerImpl>(this, _$identity);
}

abstract class _ImageViewer implements ImageViewer {
  const factory _ImageViewer({required final List<Hit> hits}) =
      _$ImageViewerImpl;

  @override
  List<Hit> get hits;
  @override
  @JsonKey(ignore: true)
  _$$ImageViewerImplCopyWith<_$ImageViewerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Hit {
  int? get id => throw _privateConstructorUsedError;
  String? get pageUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get previewUrl => throw _privateConstructorUsedError;
  String? get largeImageUrl => throw _privateConstructorUsedError;
  int? get imageWidth => throw _privateConstructorUsedError;
  int? get imageHeight => throw _privateConstructorUsedError;
  int? get imageSize => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  int? get downloads => throw _privateConstructorUsedError;
  int? get collections => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  int? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get userImageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HitCopyWith<Hit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitCopyWith<$Res> {
  factory $HitCopyWith(Hit value, $Res Function(Hit) then) =
      _$HitCopyWithImpl<$Res, Hit>;
  @useResult
  $Res call(
      {int? id,
      String? pageUrl,
      String? type,
      List<String>? tags,
      String? previewUrl,
      String? largeImageUrl,
      int? imageWidth,
      int? imageHeight,
      int? imageSize,
      int? views,
      int? downloads,
      int? collections,
      int? likes,
      int? comments,
      @JsonKey(name: "user_id") int? userId,
      String? user,
      String? userImageUrl});
}

/// @nodoc
class _$HitCopyWithImpl<$Res, $Val extends Hit> implements $HitCopyWith<$Res> {
  _$HitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageUrl = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewUrl = freezed,
    Object? largeImageUrl = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? imageSize = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
    Object? collections = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? userImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pageUrl: freezed == pageUrl
          ? _value.pageUrl
          : pageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWidth: freezed == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      imageHeight: freezed == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      collections: freezed == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      userImageUrl: freezed == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitImplCopyWith<$Res> implements $HitCopyWith<$Res> {
  factory _$$HitImplCopyWith(_$HitImpl value, $Res Function(_$HitImpl) then) =
      __$$HitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? pageUrl,
      String? type,
      List<String>? tags,
      String? previewUrl,
      String? largeImageUrl,
      int? imageWidth,
      int? imageHeight,
      int? imageSize,
      int? views,
      int? downloads,
      int? collections,
      int? likes,
      int? comments,
      @JsonKey(name: "user_id") int? userId,
      String? user,
      String? userImageUrl});
}

/// @nodoc
class __$$HitImplCopyWithImpl<$Res> extends _$HitCopyWithImpl<$Res, _$HitImpl>
    implements _$$HitImplCopyWith<$Res> {
  __$$HitImplCopyWithImpl(_$HitImpl _value, $Res Function(_$HitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageUrl = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewUrl = freezed,
    Object? largeImageUrl = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? imageSize = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
    Object? collections = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? userImageUrl = freezed,
  }) {
    return _then(_$HitImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pageUrl: freezed == pageUrl
          ? _value.pageUrl
          : pageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWidth: freezed == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      imageHeight: freezed == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      collections: freezed == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      userImageUrl: freezed == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HitImpl implements _Hit {
  const _$HitImpl(
      {this.id,
      this.pageUrl,
      this.type,
      final List<String>? tags,
      this.previewUrl,
      this.largeImageUrl,
      this.imageWidth,
      this.imageHeight,
      this.imageSize,
      this.views,
      this.downloads,
      this.collections,
      this.likes,
      this.comments,
      @JsonKey(name: "user_id") this.userId,
      this.user,
      this.userImageUrl})
      : _tags = tags;

  @override
  final int? id;
  @override
  final String? pageUrl;
  @override
  final String? type;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? previewUrl;
  @override
  final String? largeImageUrl;
  @override
  final int? imageWidth;
  @override
  final int? imageHeight;
  @override
  final int? imageSize;
  @override
  final int? views;
  @override
  final int? downloads;
  @override
  final int? collections;
  @override
  final int? likes;
  @override
  final int? comments;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  final String? user;
  @override
  final String? userImageUrl;

  @override
  String toString() {
    return 'Hit(id: $id, pageUrl: $pageUrl, type: $type, tags: $tags, previewUrl: $previewUrl, largeImageUrl: $largeImageUrl, imageWidth: $imageWidth, imageHeight: $imageHeight, imageSize: $imageSize, views: $views, downloads: $downloads, collections: $collections, likes: $likes, comments: $comments, userId: $userId, user: $user, userImageUrl: $userImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageUrl, pageUrl) || other.pageUrl == pageUrl) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.largeImageUrl, largeImageUrl) ||
                other.largeImageUrl == largeImageUrl) &&
            (identical(other.imageWidth, imageWidth) ||
                other.imageWidth == imageWidth) &&
            (identical(other.imageHeight, imageHeight) ||
                other.imageHeight == imageHeight) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads) &&
            (identical(other.collections, collections) ||
                other.collections == collections) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      pageUrl,
      type,
      const DeepCollectionEquality().hash(_tags),
      previewUrl,
      largeImageUrl,
      imageWidth,
      imageHeight,
      imageSize,
      views,
      downloads,
      collections,
      likes,
      comments,
      userId,
      user,
      userImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitImplCopyWith<_$HitImpl> get copyWith =>
      __$$HitImplCopyWithImpl<_$HitImpl>(this, _$identity);
}

abstract class _Hit implements Hit {
  const factory _Hit(
      {final int? id,
      final String? pageUrl,
      final String? type,
      final List<String>? tags,
      final String? previewUrl,
      final String? largeImageUrl,
      final int? imageWidth,
      final int? imageHeight,
      final int? imageSize,
      final int? views,
      final int? downloads,
      final int? collections,
      final int? likes,
      final int? comments,
      @JsonKey(name: "user_id") final int? userId,
      final String? user,
      final String? userImageUrl}) = _$HitImpl;

  @override
  int? get id;
  @override
  String? get pageUrl;
  @override
  String? get type;
  @override
  List<String>? get tags;
  @override
  String? get previewUrl;
  @override
  String? get largeImageUrl;
  @override
  int? get imageWidth;
  @override
  int? get imageHeight;
  @override
  int? get imageSize;
  @override
  int? get views;
  @override
  int? get downloads;
  @override
  int? get collections;
  @override
  int? get likes;
  @override
  int? get comments;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  String? get user;
  @override
  String? get userImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$HitImplCopyWith<_$HitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
