// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'steam_library.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SteamLibrary {
  String get path => throw _privateConstructorUsedError;
  List<String> get apps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SteamLibraryCopyWith<SteamLibrary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SteamLibraryCopyWith<$Res> {
  factory $SteamLibraryCopyWith(
          SteamLibrary value, $Res Function(SteamLibrary) then) =
      _$SteamLibraryCopyWithImpl<$Res, SteamLibrary>;
  @useResult
  $Res call({String path, List<String> apps});
}

/// @nodoc
class _$SteamLibraryCopyWithImpl<$Res, $Val extends SteamLibrary>
    implements $SteamLibraryCopyWith<$Res> {
  _$SteamLibraryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? apps = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      apps: null == apps
          ? _value.apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SteamLibraryImplCopyWith<$Res>
    implements $SteamLibraryCopyWith<$Res> {
  factory _$$SteamLibraryImplCopyWith(
          _$SteamLibraryImpl value, $Res Function(_$SteamLibraryImpl) then) =
      __$$SteamLibraryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, List<String> apps});
}

/// @nodoc
class __$$SteamLibraryImplCopyWithImpl<$Res>
    extends _$SteamLibraryCopyWithImpl<$Res, _$SteamLibraryImpl>
    implements _$$SteamLibraryImplCopyWith<$Res> {
  __$$SteamLibraryImplCopyWithImpl(
      _$SteamLibraryImpl _value, $Res Function(_$SteamLibraryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? apps = null,
  }) {
    return _then(_$SteamLibraryImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      apps: null == apps
          ? _value._apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SteamLibraryImpl implements _SteamLibrary {
  const _$SteamLibraryImpl(
      {required this.path, required final List<String> apps})
      : _apps = apps;

  @override
  final String path;
  final List<String> _apps;
  @override
  List<String> get apps {
    if (_apps is EqualUnmodifiableListView) return _apps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apps);
  }

  @override
  String toString() {
    return 'SteamLibrary(path: $path, apps: $apps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SteamLibraryImpl &&
            (identical(other.path, path) || other.path == path) &&
            const DeepCollectionEquality().equals(other._apps, _apps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, path, const DeepCollectionEquality().hash(_apps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SteamLibraryImplCopyWith<_$SteamLibraryImpl> get copyWith =>
      __$$SteamLibraryImplCopyWithImpl<_$SteamLibraryImpl>(this, _$identity);
}

abstract class _SteamLibrary implements SteamLibrary {
  const factory _SteamLibrary(
      {required final String path,
      required final List<String> apps}) = _$SteamLibraryImpl;

  @override
  String get path;
  @override
  List<String> get apps;
  @override
  @JsonKey(ignore: true)
  _$$SteamLibraryImplCopyWith<_$SteamLibraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
