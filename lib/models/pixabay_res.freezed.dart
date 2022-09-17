// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pixabay_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PixabayRes {
  int get total => throw _privateConstructorUsedError;
  int get totalHits => throw _privateConstructorUsedError;
  List<PixabayData> get hits => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PixabayResCopyWith<PixabayRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixabayResCopyWith<$Res> {
  factory $PixabayResCopyWith(
          PixabayRes value, $Res Function(PixabayRes) then) =
      _$PixabayResCopyWithImpl<$Res>;
  $Res call({int total, int totalHits, List<PixabayData> hits});
}

/// @nodoc
class _$PixabayResCopyWithImpl<$Res> implements $PixabayResCopyWith<$Res> {
  _$PixabayResCopyWithImpl(this._value, this._then);

  final PixabayRes _value;
  // ignore: unused_field
  final $Res Function(PixabayRes) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalHits: totalHits == freezed
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int,
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<PixabayData>,
    ));
  }
}

/// @nodoc
abstract class _$$_PixabayResCopyWith<$Res>
    implements $PixabayResCopyWith<$Res> {
  factory _$$_PixabayResCopyWith(
          _$_PixabayRes value, $Res Function(_$_PixabayRes) then) =
      __$$_PixabayResCopyWithImpl<$Res>;
  @override
  $Res call({int total, int totalHits, List<PixabayData> hits});
}

/// @nodoc
class __$$_PixabayResCopyWithImpl<$Res> extends _$PixabayResCopyWithImpl<$Res>
    implements _$$_PixabayResCopyWith<$Res> {
  __$$_PixabayResCopyWithImpl(
      _$_PixabayRes _value, $Res Function(_$_PixabayRes) _then)
      : super(_value, (v) => _then(v as _$_PixabayRes));

  @override
  _$_PixabayRes get _value => super._value as _$_PixabayRes;

  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_$_PixabayRes(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalHits: totalHits == freezed
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int,
      hits: hits == freezed
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<PixabayData>,
    ));
  }
}

/// @nodoc

class _$_PixabayRes implements _PixabayRes {
  _$_PixabayRes(
      {this.total = 0,
      this.totalHits = 0,
      final List<PixabayData> hits = const <PixabayData>[]})
      : _hits = hits;

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int totalHits;
  final List<PixabayData> _hits;
  @override
  @JsonKey()
  List<PixabayData> get hits {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hits);
  }

  @override
  String toString() {
    return 'PixabayRes(total: $total, totalHits: $totalHits, hits: $hits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PixabayRes &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.totalHits, totalHits) &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(totalHits),
      const DeepCollectionEquality().hash(_hits));

  @JsonKey(ignore: true)
  @override
  _$$_PixabayResCopyWith<_$_PixabayRes> get copyWith =>
      __$$_PixabayResCopyWithImpl<_$_PixabayRes>(this, _$identity);
}

abstract class _PixabayRes implements PixabayRes {
  factory _PixabayRes(
      {final int total,
      final int totalHits,
      final List<PixabayData> hits}) = _$_PixabayRes;

  @override
  int get total;
  @override
  int get totalHits;
  @override
  List<PixabayData> get hits;
  @override
  @JsonKey(ignore: true)
  _$$_PixabayResCopyWith<_$_PixabayRes> get copyWith =>
      throw _privateConstructorUsedError;
}
