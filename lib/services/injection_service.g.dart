// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injection_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$injectionServiceHash() => r'341037bb360df380cea36d80b020d4583ab0d07b';

/// See also [injectionService].
@ProviderFor(injectionService)
final injectionServiceProvider = AutoDisposeProvider<InjectionService>.internal(
  injectionService,
  name: r'injectionServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$injectionServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef InjectionServiceRef = AutoDisposeProviderRef<InjectionService>;
String _$launchAndInjectHash() => r'0fc8fe597c3c9c58aa2362b793144573c52226af';

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

/// See also [launchAndInject].
@ProviderFor(launchAndInject)
const launchAndInjectProvider = LaunchAndInjectFamily();

/// See also [launchAndInject].
class LaunchAndInjectFamily extends Family<AsyncValue<void>> {
  /// See also [launchAndInject].
  const LaunchAndInjectFamily();

  /// See also [launchAndInject].
  LaunchAndInjectProvider call(
    bool inject,
  ) {
    return LaunchAndInjectProvider(
      inject,
    );
  }

  @override
  LaunchAndInjectProvider getProviderOverride(
    covariant LaunchAndInjectProvider provider,
  ) {
    return call(
      provider.inject,
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
  String? get name => r'launchAndInjectProvider';
}

/// See also [launchAndInject].
class LaunchAndInjectProvider extends AutoDisposeFutureProvider<void> {
  /// See also [launchAndInject].
  LaunchAndInjectProvider(
    bool inject,
  ) : this._internal(
          (ref) => launchAndInject(
            ref as LaunchAndInjectRef,
            inject,
          ),
          from: launchAndInjectProvider,
          name: r'launchAndInjectProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$launchAndInjectHash,
          dependencies: LaunchAndInjectFamily._dependencies,
          allTransitiveDependencies:
              LaunchAndInjectFamily._allTransitiveDependencies,
          inject: inject,
        );

  LaunchAndInjectProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.inject,
  }) : super.internal();

  final bool inject;

  @override
  Override overrideWith(
    FutureOr<void> Function(LaunchAndInjectRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LaunchAndInjectProvider._internal(
        (ref) => create(ref as LaunchAndInjectRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        inject: inject,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _LaunchAndInjectProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LaunchAndInjectProvider && other.inject == inject;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, inject.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LaunchAndInjectRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `inject` of this provider.
  bool get inject;
}

class _LaunchAndInjectProviderElement
    extends AutoDisposeFutureProviderElement<void> with LaunchAndInjectRef {
  _LaunchAndInjectProviderElement(super.provider);

  @override
  bool get inject => (origin as LaunchAndInjectProvider).inject;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
