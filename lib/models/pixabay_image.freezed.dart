// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pixabay_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PixabayImage _$PixabayImageFromJson(Map<String, dynamic> json) {
  return _PixabayImage.fromJson(json);
}

/// @nodoc
mixin _$PixabayImage {
// このコンストラクタに渡す引数の名前は HTTP レスポンスで返ってくる JSON データの
// key の名前と一致させる必要がある。
  String get previewURL => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PixabayImageCopyWith<PixabayImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixabayImageCopyWith<$Res> {
  factory $PixabayImageCopyWith(
          PixabayImage value, $Res Function(PixabayImage) then) =
      _$PixabayImageCopyWithImpl<$Res>;
  $Res call({String previewURL, String user, int likes});
}

/// @nodoc
class _$PixabayImageCopyWithImpl<$Res> implements $PixabayImageCopyWith<$Res> {
  _$PixabayImageCopyWithImpl(this._value, this._then);

  final PixabayImage _value;
  // ignore: unused_field
  final $Res Function(PixabayImage) _then;

  @override
  $Res call({
    Object? previewURL = freezed,
    Object? user = freezed,
    Object? likes = freezed,
  }) {
    return _then(_value.copyWith(
      previewURL: previewURL == freezed
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PixabayImageCopyWith<$Res>
    implements $PixabayImageCopyWith<$Res> {
  factory _$$_PixabayImageCopyWith(
          _$_PixabayImage value, $Res Function(_$_PixabayImage) then) =
      __$$_PixabayImageCopyWithImpl<$Res>;
  @override
  $Res call({String previewURL, String user, int likes});
}

/// @nodoc
class __$$_PixabayImageCopyWithImpl<$Res>
    extends _$PixabayImageCopyWithImpl<$Res>
    implements _$$_PixabayImageCopyWith<$Res> {
  __$$_PixabayImageCopyWithImpl(
      _$_PixabayImage _value, $Res Function(_$_PixabayImage) _then)
      : super(_value, (v) => _then(v as _$_PixabayImage));

  @override
  _$_PixabayImage get _value => super._value as _$_PixabayImage;

  @override
  $Res call({
    Object? previewURL = freezed,
    Object? user = freezed,
    Object? likes = freezed,
  }) {
    return _then(_$_PixabayImage(
      previewURL: previewURL == freezed
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PixabayImage implements _PixabayImage {
  _$_PixabayImage({this.previewURL = '', this.user = '', this.likes = 0});

  factory _$_PixabayImage.fromJson(Map<String, dynamic> json) =>
      _$$_PixabayImageFromJson(json);

// このコンストラクタに渡す引数の名前は HTTP レスポンスで返ってくる JSON データの
// key の名前と一致させる必要がある。
  @override
  @JsonKey()
  final String previewURL;
  @override
  @JsonKey()
  final String user;
  @override
  @JsonKey()
  final int likes;

  @override
  String toString() {
    return 'PixabayImage(previewURL: $previewURL, user: $user, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PixabayImage &&
            const DeepCollectionEquality()
                .equals(other.previewURL, previewURL) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.likes, likes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(previewURL),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(likes));

  @JsonKey(ignore: true)
  @override
  _$$_PixabayImageCopyWith<_$_PixabayImage> get copyWith =>
      __$$_PixabayImageCopyWithImpl<_$_PixabayImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PixabayImageToJson(
      this,
    );
  }
}

abstract class _PixabayImage implements PixabayImage {
  factory _PixabayImage(
      {final String previewURL,
      final String user,
      final int likes}) = _$_PixabayImage;

  factory _PixabayImage.fromJson(Map<String, dynamic> json) =
      _$_PixabayImage.fromJson;

  @override // このコンストラクタに渡す引数の名前は HTTP レスポンスで返ってくる JSON データの
// key の名前と一致させる必要がある。
  String get previewURL;
  @override
  String get user;
  @override
  int get likes;
  @override
  @JsonKey(ignore: true)
  _$$_PixabayImageCopyWith<_$_PixabayImage> get copyWith =>
      throw _privateConstructorUsedError;
}
