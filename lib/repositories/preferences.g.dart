// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isReshadeEnabledHash() => r'5d1c2986c6cb8227da677f7a5cfb46f641f4d775';

/// See also [isReshadeEnabled].
@ProviderFor(isReshadeEnabled)
final isReshadeEnabledProvider = AutoDisposeProvider<bool>.internal(
  isReshadeEnabled,
  name: r'isReshadeEnabledProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isReshadeEnabledHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsReshadeEnabledRef = AutoDisposeProviderRef<bool>;
String _$preferencesRepositoryHash() =>
    r'c08cbda14b8092189d1a7d07c0a673b5566b3239';

/// See also [PreferencesRepository].
@ProviderFor(PreferencesRepository)
final preferencesRepositoryProvider = AutoDisposeAsyncNotifierProvider<
    PreferencesRepository, Preferences>.internal(
  PreferencesRepository.new,
  name: r'preferencesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$preferencesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PreferencesRepository = AutoDisposeAsyncNotifier<Preferences>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member