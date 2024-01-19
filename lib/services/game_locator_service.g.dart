// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_locator_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameLocatorServiceHash() =>
    r'8360fd6c4315e9bdda8c7a25c9244ae9503e251a';

/// See also [gameLocatorService].
@ProviderFor(gameLocatorService)
final gameLocatorServiceProvider =
    AutoDisposeProvider<GameLocatorService>.internal(
  gameLocatorService,
  name: r'gameLocatorServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gameLocatorServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GameLocatorServiceRef = AutoDisposeProviderRef<GameLocatorService>;
String _$steamGameLocationHash() => r'934c4e332dd8609e54fc10f7c812df173cac95e7';

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

/// See also [steamGameLocation].
@ProviderFor(steamGameLocation)
const steamGameLocationProvider = SteamGameLocationFamily();

/// See also [steamGameLocation].
class SteamGameLocationFamily extends Family<AsyncValue<String>> {
  /// See also [steamGameLocation].
  const SteamGameLocationFamily();

  /// See also [steamGameLocation].
  SteamGameLocationProvider call(
    int steamId,
  ) {
    return SteamGameLocationProvider(
      steamId,
    );
  }

  @override
  SteamGameLocationProvider getProviderOverride(
    covariant SteamGameLocationProvider provider,
  ) {
    return call(
      provider.steamId,
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
  String? get name => r'steamGameLocationProvider';
}

/// See also [steamGameLocation].
class SteamGameLocationProvider extends AutoDisposeFutureProvider<String> {
  /// See also [steamGameLocation].
  SteamGameLocationProvider(
    int steamId,
  ) : this._internal(
          (ref) => steamGameLocation(
            ref as SteamGameLocationRef,
            steamId,
          ),
          from: steamGameLocationProvider,
          name: r'steamGameLocationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$steamGameLocationHash,
          dependencies: SteamGameLocationFamily._dependencies,
          allTransitiveDependencies:
              SteamGameLocationFamily._allTransitiveDependencies,
          steamId: steamId,
        );

  SteamGameLocationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.steamId,
  }) : super.internal();

  final int steamId;

  @override
  Override overrideWith(
    FutureOr<String> Function(SteamGameLocationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SteamGameLocationProvider._internal(
        (ref) => create(ref as SteamGameLocationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        steamId: steamId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _SteamGameLocationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SteamGameLocationProvider && other.steamId == steamId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, steamId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SteamGameLocationRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `steamId` of this provider.
  int get steamId;
}

class _SteamGameLocationProviderElement
    extends AutoDisposeFutureProviderElement<String> with SteamGameLocationRef {
  _SteamGameLocationProviderElement(super.provider);

  @override
  int get steamId => (origin as SteamGameLocationProvider).steamId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
