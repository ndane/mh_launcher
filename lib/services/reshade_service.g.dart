// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reshade_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reshadeServiceHash() => r'e4ab26d9557dde0b23c0d4b619a412981a098a0f';

/// See also [reshadeService].
@ProviderFor(reshadeService)
final reshadeServiceProvider = AutoDisposeProvider<ReshadeService>.internal(
  reshadeService,
  name: r'reshadeServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$reshadeServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReshadeServiceRef = AutoDisposeProviderRef<ReshadeService>;
String _$isReshadeInstalledHash() =>
    r'e4e67315f393f9a2f117bd8a43c6f6f69d346060';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [isReshadeInstalled].
@ProviderFor(isReshadeInstalled)
const isReshadeInstalledProvider = IsReshadeInstalledFamily();

/// See also [isReshadeInstalled].
class IsReshadeInstalledFamily extends Family<AsyncValue<bool>> {
  /// See also [isReshadeInstalled].
  const IsReshadeInstalledFamily();

  /// See also [isReshadeInstalled].
  IsReshadeInstalledProvider call(
    String path,
  ) {
    return IsReshadeInstalledProvider(
      path,
    );
  }

  @override
  IsReshadeInstalledProvider getProviderOverride(
    covariant IsReshadeInstalledProvider provider,
  ) {
    return call(
      provider.path,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'isReshadeInstalledProvider';
}

/// See also [isReshadeInstalled].
class IsReshadeInstalledProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [isReshadeInstalled].
  IsReshadeInstalledProvider(
    String path,
  ) : this._internal(
          (ref) => isReshadeInstalled(
            ref as IsReshadeInstalledRef,
            path,
          ),
          from: isReshadeInstalledProvider,
          name: r'isReshadeInstalledProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isReshadeInstalledHash,
          dependencies: IsReshadeInstalledFamily._dependencies,
          allTransitiveDependencies:
              IsReshadeInstalledFamily._allTransitiveDependencies,
          path: path,
        );

  IsReshadeInstalledProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
  }) : super.internal();

  final String path;

  @override
  Override overrideWith(
    FutureOr<bool> Function(IsReshadeInstalledRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsReshadeInstalledProvider._internal(
        (ref) => create(ref as IsReshadeInstalledRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _IsReshadeInstalledProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsReshadeInstalledProvider && other.path == path;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IsReshadeInstalledRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `path` of this provider.
  String get path;
}

class _IsReshadeInstalledProviderElement
    extends AutoDisposeFutureProviderElement<bool> with IsReshadeInstalledRef {
  _IsReshadeInstalledProviderElement(super.provider);

  @override
  String get path => (origin as IsReshadeInstalledProvider).path;
}

String _$installReshadeHash() => r'309898d8aa70ea20d2671e62fac2d7521ee807f1';

/// See also [installReshade].
@ProviderFor(installReshade)
const installReshadeProvider = InstallReshadeFamily();

/// See also [installReshade].
class InstallReshadeFamily extends Family<AsyncValue<void>> {
  /// See also [installReshade].
  const InstallReshadeFamily();

  /// See also [installReshade].
  InstallReshadeProvider call(
    String path,
    bool includeSettings,
  ) {
    return InstallReshadeProvider(
      path,
      includeSettings,
    );
  }

  @override
  InstallReshadeProvider getProviderOverride(
    covariant InstallReshadeProvider provider,
  ) {
    return call(
      provider.path,
      provider.includeSettings,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'installReshadeProvider';
}

/// See also [installReshade].
class InstallReshadeProvider extends AutoDisposeFutureProvider<void> {
  /// See also [installReshade].
  InstallReshadeProvider(
    String path,
    bool includeSettings,
  ) : this._internal(
          (ref) => installReshade(
            ref as InstallReshadeRef,
            path,
            includeSettings,
          ),
          from: installReshadeProvider,
          name: r'installReshadeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$installReshadeHash,
          dependencies: InstallReshadeFamily._dependencies,
          allTransitiveDependencies:
              InstallReshadeFamily._allTransitiveDependencies,
          path: path,
          includeSettings: includeSettings,
        );

  InstallReshadeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
    required this.includeSettings,
  }) : super.internal();

  final String path;
  final bool includeSettings;

  @override
  Override overrideWith(
    FutureOr<void> Function(InstallReshadeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InstallReshadeProvider._internal(
        (ref) => create(ref as InstallReshadeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
        includeSettings: includeSettings,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InstallReshadeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InstallReshadeProvider &&
        other.path == path &&
        other.includeSettings == includeSettings;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);
    hash = _SystemHash.combine(hash, includeSettings.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InstallReshadeRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `path` of this provider.
  String get path;

  /// The parameter `includeSettings` of this provider.
  bool get includeSettings;
}

class _InstallReshadeProviderElement
    extends AutoDisposeFutureProviderElement<void> with InstallReshadeRef {
  _InstallReshadeProviderElement(super.provider);

  @override
  String get path => (origin as InstallReshadeProvider).path;
  @override
  bool get includeSettings =>
      (origin as InstallReshadeProvider).includeSettings;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
