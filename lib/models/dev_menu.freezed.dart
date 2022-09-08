// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dev_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DevMenu {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DevMenuCopyWith<DevMenu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevMenuCopyWith<$Res> {
  factory $DevMenuCopyWith(DevMenu value, $Res Function(DevMenu) then) =
      _$DevMenuCopyWithImpl<$Res>;
  $Res call({String title, String description, Color color, String location});
}

/// @nodoc
class _$DevMenuCopyWithImpl<$Res> implements $DevMenuCopyWith<$Res> {
  _$DevMenuCopyWithImpl(this._value, this._then);

  final DevMenu _value;
  // ignore: unused_field
  final $Res Function(DevMenu) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DevMenuCopyWith<$Res> implements $DevMenuCopyWith<$Res> {
  factory _$$_DevMenuCopyWith(
          _$_DevMenu value, $Res Function(_$_DevMenu) then) =
      __$$_DevMenuCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, Color color, String location});
}

/// @nodoc
class __$$_DevMenuCopyWithImpl<$Res> extends _$DevMenuCopyWithImpl<$Res>
    implements _$$_DevMenuCopyWith<$Res> {
  __$$_DevMenuCopyWithImpl(_$_DevMenu _value, $Res Function(_$_DevMenu) _then)
      : super(_value, (v) => _then(v as _$_DevMenu));

  @override
  _$_DevMenu get _value => super._value as _$_DevMenu;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_DevMenu(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DevMenu implements _DevMenu {
  const _$_DevMenu(
      {this.title = 'title',
      this.description = 'description',
      this.color = Colors.lightGreen,
      required this.location});

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final Color color;
  @override
  final String location;

  @override
  String toString() {
    return 'DevMenu(title: $title, description: $description, color: $color, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DevMenu &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_DevMenuCopyWith<_$_DevMenu> get copyWith =>
      __$$_DevMenuCopyWithImpl<_$_DevMenu>(this, _$identity);
}

abstract class _DevMenu implements DevMenu {
  const factory _DevMenu(
      {final String title,
      final String description,
      final Color color,
      required final String location}) = _$_DevMenu;

  @override
  String get title;
  @override
  String get description;
  @override
  Color get color;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$_DevMenuCopyWith<_$_DevMenu> get copyWith =>
      throw _privateConstructorUsedError;
}
