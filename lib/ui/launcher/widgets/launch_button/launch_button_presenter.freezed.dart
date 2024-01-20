// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_button_presenter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaunchButtonModel {
  String get buttonText => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  String get gamePath => throw _privateConstructorUsedError;
  bool get launchPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaunchButtonModelCopyWith<LaunchButtonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchButtonModelCopyWith<$Res> {
  factory $LaunchButtonModelCopyWith(
          LaunchButtonModel value, $Res Function(LaunchButtonModel) then) =
      _$LaunchButtonModelCopyWithImpl<$Res, LaunchButtonModel>;
  @useResult
  $Res call(
      {String buttonText, bool isEnabled, String gamePath, bool launchPressed});
}

/// @nodoc
class _$LaunchButtonModelCopyWithImpl<$Res, $Val extends LaunchButtonModel>
    implements $LaunchButtonModelCopyWith<$Res> {
  _$LaunchButtonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonText = null,
    Object? isEnabled = null,
    Object? gamePath = null,
    Object? launchPressed = null,
  }) {
    return _then(_value.copyWith(
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      gamePath: null == gamePath
          ? _value.gamePath
          : gamePath // ignore: cast_nullable_to_non_nullable
              as String,
      launchPressed: null == launchPressed
          ? _value.launchPressed
          : launchPressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaunchButtonModelImplCopyWith<$Res>
    implements $LaunchButtonModelCopyWith<$Res> {
  factory _$$LaunchButtonModelImplCopyWith(_$LaunchButtonModelImpl value,
          $Res Function(_$LaunchButtonModelImpl) then) =
      __$$LaunchButtonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String buttonText, bool isEnabled, String gamePath, bool launchPressed});
}

/// @nodoc
class __$$LaunchButtonModelImplCopyWithImpl<$Res>
    extends _$LaunchButtonModelCopyWithImpl<$Res, _$LaunchButtonModelImpl>
    implements _$$LaunchButtonModelImplCopyWith<$Res> {
  __$$LaunchButtonModelImplCopyWithImpl(_$LaunchButtonModelImpl _value,
      $Res Function(_$LaunchButtonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonText = null,
    Object? isEnabled = null,
    Object? gamePath = null,
    Object? launchPressed = null,
  }) {
    return _then(_$LaunchButtonModelImpl(
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      gamePath: null == gamePath
          ? _value.gamePath
          : gamePath // ignore: cast_nullable_to_non_nullable
              as String,
      launchPressed: null == launchPressed
          ? _value.launchPressed
          : launchPressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LaunchButtonModelImpl
    with DiagnosticableTreeMixin
    implements _LaunchButtonModel {
  const _$LaunchButtonModelImpl(
      {required this.buttonText,
      required this.isEnabled,
      required this.gamePath,
      required this.launchPressed});

  @override
  final String buttonText;
  @override
  final bool isEnabled;
  @override
  final String gamePath;
  @override
  final bool launchPressed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LaunchButtonModel(buttonText: $buttonText, isEnabled: $isEnabled, gamePath: $gamePath, launchPressed: $launchPressed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LaunchButtonModel'))
      ..add(DiagnosticsProperty('buttonText', buttonText))
      ..add(DiagnosticsProperty('isEnabled', isEnabled))
      ..add(DiagnosticsProperty('gamePath', gamePath))
      ..add(DiagnosticsProperty('launchPressed', launchPressed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchButtonModelImpl &&
            (identical(other.buttonText, buttonText) ||
                other.buttonText == buttonText) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.gamePath, gamePath) ||
                other.gamePath == gamePath) &&
            (identical(other.launchPressed, launchPressed) ||
                other.launchPressed == launchPressed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, buttonText, isEnabled, gamePath, launchPressed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchButtonModelImplCopyWith<_$LaunchButtonModelImpl> get copyWith =>
      __$$LaunchButtonModelImplCopyWithImpl<_$LaunchButtonModelImpl>(
          this, _$identity);
}

abstract class _LaunchButtonModel implements LaunchButtonModel {
  const factory _LaunchButtonModel(
      {required final String buttonText,
      required final bool isEnabled,
      required final String gamePath,
      required final bool launchPressed}) = _$LaunchButtonModelImpl;

  @override
  String get buttonText;
  @override
  bool get isEnabled;
  @override
  String get gamePath;
  @override
  bool get launchPressed;
  @override
  @JsonKey(ignore: true)
  _$$LaunchButtonModelImplCopyWith<_$LaunchButtonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
