// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_viewer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageViewerResponse _$ImageViewerResponseFromJson(Map<String, dynamic> json) {
  return _ImageViewerResponse.fromJson(json);
}

/// @nodoc
mixin _$ImageViewerResponse {
  int? get total => throw _privateConstructorUsedError;
  int? get totalHits => throw _privateConstructorUsedError;
  List<HitResponse>? get hits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageViewerResponseCopyWith<ImageViewerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageViewerResponseCopyWith<$Res> {
  factory $ImageViewerResponseCopyWith(
          ImageViewerResponse value, $Res Function(ImageViewerResponse) then) =
      _$ImageViewerResponseCopyWithImpl<$Res, ImageViewerResponse>;
  @useResult
  $Res call({int? total, int? totalHits, List<HitResponse>? hits});
}

/// @nodoc
class _$ImageViewerResponseCopyWithImpl<$Res, $Val extends ImageViewerResponse>
    implements $ImageViewerResponseCopyWith<$Res> {
  _$ImageViewerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHits: freezed == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int?,
      hits: freezed == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<HitResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageViewerResponseImplCopyWith<$Res>
    implements $ImageViewerResponseCopyWith<$Res> {
  factory _$$ImageViewerResponseImplCopyWith(_$ImageViewerResponseImpl value,
          $Res Function(_$ImageViewerResponseImpl) then) =
      __$$ImageViewerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, int? totalHits, List<HitResponse>? hits});
}

/// @nodoc
class __$$ImageViewerResponseImplCopyWithImpl<$Res>
    extends _$ImageViewerResponseCopyWithImpl<$Res, _$ImageViewerResponseImpl>
    implements _$$ImageViewerResponseImplCopyWith<$Res> {
  __$$ImageViewerResponseImplCopyWithImpl(_$ImageViewerResponseImpl _value,
      $Res Function(_$ImageViewerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_$ImageViewerResponseImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHits: freezed == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int?,
      hits: freezed == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<HitResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageViewerResponseImpl extends _ImageViewerResponse {
  const _$ImageViewerResponseImpl(
      {this.total, this.totalHits, final List<HitResponse>? hits})
      : _hits = hits,
        super._();

  factory _$ImageViewerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageViewerResponseImplFromJson(json);

  @override
  final int? total;
  @override
  final int? totalHits;
  final List<HitResponse>? _hits;
  @override
  List<HitResponse>? get hits {
    final value = _hits;
    if (value == null) return null;
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImageViewerResponse(total: $total, totalHits: $totalHits, hits: $hits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageViewerResponseImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalHits, totalHits) ||
                other.totalHits == totalHits) &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalHits,
      const DeepCollectionEquality().hash(_hits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageViewerResponseImplCopyWith<_$ImageViewerResponseImpl> get copyWith =>
      __$$ImageViewerResponseImplCopyWithImpl<_$ImageViewerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageViewerResponseImplToJson(
      this,
    );
  }
}

abstract class _ImageViewerResponse extends ImageViewerResponse {
  const factory _ImageViewerResponse(
      {final int? total,
      final int? totalHits,
      final List<HitResponse>? hits}) = _$ImageViewerResponseImpl;
  const _ImageViewerResponse._() : super._();

  factory _ImageViewerResponse.fromJson(Map<String, dynamic> json) =
      _$ImageViewerResponseImpl.fromJson;

  @override
  int? get total;
  @override
  int? get totalHits;
  @override
  List<HitResponse>? get hits;
  @override
  @JsonKey(ignore: true)
  _$$ImageViewerResponseImplCopyWith<_$ImageViewerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HitResponse _$HitResponseFromJson(Map<String, dynamic> json) {
  return _HitResponse.fromJson(json);
}

/// @nodoc
mixin _$HitResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "pageURL")
  String? get pageUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "previewURL")
  String? get previewUrl => throw _privateConstructorUsedError;
  int? get previewWidth => throw _privateConstructorUsedError;
  int? get previewHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "webformatURL")
  String? get webformatUrl => throw _privateConstructorUsedError;
  int? get webformatWidth => throw _privateConstructorUsedError;
  int? get webformatHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "largeImageURL")
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
  @JsonKey(name: "userImageURL")
  String? get userImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitResponseCopyWith<HitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitResponseCopyWith<$Res> {
  factory $HitResponseCopyWith(
          HitResponse value, $Res Function(HitResponse) then) =
      _$HitResponseCopyWithImpl<$Res, HitResponse>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "pageURL") String? pageUrl,
      String? type,
      String? tags,
      @JsonKey(name: "previewURL") String? previewUrl,
      int? previewWidth,
      int? previewHeight,
      @JsonKey(name: "webformatURL") String? webformatUrl,
      int? webformatWidth,
      int? webformatHeight,
      @JsonKey(name: "largeImageURL") String? largeImageUrl,
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
      @JsonKey(name: "userImageURL") String? userImageUrl});
}

/// @nodoc
class _$HitResponseCopyWithImpl<$Res, $Val extends HitResponse>
    implements $HitResponseCopyWith<$Res> {
  _$HitResponseCopyWithImpl(this._value, this._then);

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
    Object? previewWidth = freezed,
    Object? previewHeight = freezed,
    Object? webformatUrl = freezed,
    Object? webformatWidth = freezed,
    Object? webformatHeight = freezed,
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
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewWidth: freezed == previewWidth
          ? _value.previewWidth
          : previewWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      previewHeight: freezed == previewHeight
          ? _value.previewHeight
          : previewHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatUrl: freezed == webformatUrl
          ? _value.webformatUrl
          : webformatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      webformatWidth: freezed == webformatWidth
          ? _value.webformatWidth
          : webformatWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatHeight: freezed == webformatHeight
          ? _value.webformatHeight
          : webformatHeight // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$HitResponseImplCopyWith<$Res>
    implements $HitResponseCopyWith<$Res> {
  factory _$$HitResponseImplCopyWith(
          _$HitResponseImpl value, $Res Function(_$HitResponseImpl) then) =
      __$$HitResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "pageURL") String? pageUrl,
      String? type,
      String? tags,
      @JsonKey(name: "previewURL") String? previewUrl,
      int? previewWidth,
      int? previewHeight,
      @JsonKey(name: "webformatURL") String? webformatUrl,
      int? webformatWidth,
      int? webformatHeight,
      @JsonKey(name: "largeImageURL") String? largeImageUrl,
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
      @JsonKey(name: "userImageURL") String? userImageUrl});
}

/// @nodoc
class __$$HitResponseImplCopyWithImpl<$Res>
    extends _$HitResponseCopyWithImpl<$Res, _$HitResponseImpl>
    implements _$$HitResponseImplCopyWith<$Res> {
  __$$HitResponseImplCopyWithImpl(
      _$HitResponseImpl _value, $Res Function(_$HitResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageUrl = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewUrl = freezed,
    Object? previewWidth = freezed,
    Object? previewHeight = freezed,
    Object? webformatUrl = freezed,
    Object? webformatWidth = freezed,
    Object? webformatHeight = freezed,
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
    return _then(_$HitResponseImpl(
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
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewWidth: freezed == previewWidth
          ? _value.previewWidth
          : previewWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      previewHeight: freezed == previewHeight
          ? _value.previewHeight
          : previewHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatUrl: freezed == webformatUrl
          ? _value.webformatUrl
          : webformatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      webformatWidth: freezed == webformatWidth
          ? _value.webformatWidth
          : webformatWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatHeight: freezed == webformatHeight
          ? _value.webformatHeight
          : webformatHeight // ignore: cast_nullable_to_non_nullable
              as int?,
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
@JsonSerializable()
class _$HitResponseImpl implements _HitResponse {
  const _$HitResponseImpl(
      {this.id,
      @JsonKey(name: "pageURL") this.pageUrl,
      this.type,
      this.tags,
      @JsonKey(name: "previewURL") this.previewUrl,
      this.previewWidth,
      this.previewHeight,
      @JsonKey(name: "webformatURL") this.webformatUrl,
      this.webformatWidth,
      this.webformatHeight,
      @JsonKey(name: "largeImageURL") this.largeImageUrl,
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
      @JsonKey(name: "userImageURL") this.userImageUrl});

  factory _$HitResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitResponseImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "pageURL")
  final String? pageUrl;
  @override
  final String? type;
  @override
  final String? tags;
  @override
  @JsonKey(name: "previewURL")
  final String? previewUrl;
  @override
  final int? previewWidth;
  @override
  final int? previewHeight;
  @override
  @JsonKey(name: "webformatURL")
  final String? webformatUrl;
  @override
  final int? webformatWidth;
  @override
  final int? webformatHeight;
  @override
  @JsonKey(name: "largeImageURL")
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
  @JsonKey(name: "userImageURL")
  final String? userImageUrl;

  @override
  String toString() {
    return 'HitResponse(id: $id, pageUrl: $pageUrl, type: $type, tags: $tags, previewUrl: $previewUrl, previewWidth: $previewWidth, previewHeight: $previewHeight, webformatUrl: $webformatUrl, webformatWidth: $webformatWidth, webformatHeight: $webformatHeight, largeImageUrl: $largeImageUrl, imageWidth: $imageWidth, imageHeight: $imageHeight, imageSize: $imageSize, views: $views, downloads: $downloads, collections: $collections, likes: $likes, comments: $comments, userId: $userId, user: $user, userImageUrl: $userImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageUrl, pageUrl) || other.pageUrl == pageUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.previewWidth, previewWidth) ||
                other.previewWidth == previewWidth) &&
            (identical(other.previewHeight, previewHeight) ||
                other.previewHeight == previewHeight) &&
            (identical(other.webformatUrl, webformatUrl) ||
                other.webformatUrl == webformatUrl) &&
            (identical(other.webformatWidth, webformatWidth) ||
                other.webformatWidth == webformatWidth) &&
            (identical(other.webformatHeight, webformatHeight) ||
                other.webformatHeight == webformatHeight) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        pageUrl,
        type,
        tags,
        previewUrl,
        previewWidth,
        previewHeight,
        webformatUrl,
        webformatWidth,
        webformatHeight,
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
        userImageUrl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitResponseImplCopyWith<_$HitResponseImpl> get copyWith =>
      __$$HitResponseImplCopyWithImpl<_$HitResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitResponseImplToJson(
      this,
    );
  }
}

abstract class _HitResponse implements HitResponse {
  const factory _HitResponse(
          {final int? id,
          @JsonKey(name: "pageURL") final String? pageUrl,
          final String? type,
          final String? tags,
          @JsonKey(name: "previewURL") final String? previewUrl,
          final int? previewWidth,
          final int? previewHeight,
          @JsonKey(name: "webformatURL") final String? webformatUrl,
          final int? webformatWidth,
          final int? webformatHeight,
          @JsonKey(name: "largeImageURL") final String? largeImageUrl,
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
          @JsonKey(name: "userImageURL") final String? userImageUrl}) =
      _$HitResponseImpl;

  factory _HitResponse.fromJson(Map<String, dynamic> json) =
      _$HitResponseImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "pageURL")
  String? get pageUrl;
  @override
  String? get type;
  @override
  String? get tags;
  @override
  @JsonKey(name: "previewURL")
  String? get previewUrl;
  @override
  int? get previewWidth;
  @override
  int? get previewHeight;
  @override
  @JsonKey(name: "webformatURL")
  String? get webformatUrl;
  @override
  int? get webformatWidth;
  @override
  int? get webformatHeight;
  @override
  @JsonKey(name: "largeImageURL")
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
  @JsonKey(name: "userImageURL")
  String? get userImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$HitResponseImplCopyWith<_$HitResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
