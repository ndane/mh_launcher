// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Preferences {
  bool get isReshadeEnabled => throw _privateConstructorUsedError;
  bool get isAutoLaunchEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreferencesCopyWith<Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesCopyWith<$Res> {
  factory $PreferencesCopyWith(
          Preferences value, $Res Function(Preferences) then) =
      _$PreferencesCopyWithImpl<$Res, Preferences>;
  @useResult
  $Res call({bool isReshadeEnabled, bool isAutoLaunchEnabled});
}

/// @nodoc
class _$PreferencesCopyWithImpl<$Res, $Val extends Preferences>
    implements $PreferencesCopyWith<$Res> {
  _$PreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReshadeEnabled = null,
    Object? isAutoLaunchEnabled = null,
  }) {
    return _then(_value.copyWith(
      isReshadeEnabled: null == isReshadeEnabled
          ? _value.isReshadeEnabled
          : isReshadeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoLaunchEnabled: null == isAutoLaunchEnabled
          ? _value.isAutoLaunchEnabled
          : isAutoLaunchEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferencesImplCopyWith<$Res>
    implements $PreferencesCopyWith<$Res> {
  factory _$$PreferencesImplCopyWith(
          _$PreferencesImpl value, $Res Function(_$PreferencesImpl) then) =
      __$$PreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isReshadeEnabled, bool isAutoLaunchEnabled});
}

/// @nodoc
class __$$PreferencesImplCopyWithImpl<$Res>
    extends _$PreferencesCopyWithImpl<$Res, _$PreferencesImpl>
    implements _$$PreferencesImplCopyWith<$Res> {
  __$$PreferencesImplCopyWithImpl(
      _$PreferencesImpl _value, $Res Function(_$PreferencesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReshadeEnabled = null,
    Object? isAutoLaunchEnabled = null,
  }) {
    return _then(_$PreferencesImpl(
      isReshadeEnabled: null == isReshadeEnabled
          ? _value.isReshadeEnabled
          : isReshadeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoLaunchEnabled: null == isAutoLaunchEnabled
          ? _value.isAutoLaunchEnabled
          : isAutoLaunchEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PreferencesImpl implements _Preferences {
  const _$PreferencesImpl(
      {required this.isReshadeEnabled, required this.isAutoLaunchEnabled});

  @override
  final bool isReshadeEnabled;
  @override
  final bool isAutoLaunchEnabled;

  @override
  String toString() {
    return 'Preferences(isReshadeEnabled: $isReshadeEnabled, isAutoLaunchEnabled: $isAutoLaunchEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesImpl &&
            (identical(other.isReshadeEnabled, isReshadeEnabled) ||
                other.isReshadeEnabled == isReshadeEnabled) &&
            (identical(other.isAutoLaunchEnabled, isAutoLaunchEnabled) ||
                other.isAutoLaunchEnabled == isAutoLaunchEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isReshadeEnabled, isAutoLaunchEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesImplCopyWith<_$PreferencesImpl> get copyWith =>
      __$$PreferencesImplCopyWithImpl<_$PreferencesImpl>(this, _$identity);
}

abstract class _Preferences implements Preferences {
  const factory _Preferences(
      {required final bool isReshadeEnabled,
      required final bool isAutoLaunchEnabled}) = _$PreferencesImpl;

  @override
  bool get isReshadeEnabled;
  @override
  bool get isAutoLaunchEnabled;
  @override
  @JsonKey(ignore: true)
  _$$PreferencesImplCopyWith<_$PreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
