// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_button_presenter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$launchButtonPresenterHash() =>
    r'9978a2b5f0070526e188c66b30be147da33349f5';

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

abstract class _$LaunchButtonPresenter
    extends BuildlessAutoDisposeAsyncNotifier<LaunchButtonModel> {
  late final WidgetRef widgetRef;

  FutureOr<LaunchButtonModel> build(
    WidgetRef widgetRef,
  );
}

/// See also [LaunchButtonPresenter].
@ProviderFor(LaunchButtonPresenter)
const launchButtonPresenterProvider = LaunchButtonPresenterFamily();

/// See also [LaunchButtonPresenter].
class LaunchButtonPresenterFamily
    extends Family<AsyncValue<LaunchButtonModel>> {
  /// See also [LaunchButtonPresenter].
  const LaunchButtonPresenterFamily();

  /// See also [LaunchButtonPresenter].
  LaunchButtonPresenterProvider call(
    WidgetRef widgetRef,
  ) {
    return LaunchButtonPresenterProvider(
      widgetRef,
    );
  }

  @override
  LaunchButtonPresenterProvider getProviderOverride(
    covariant LaunchButtonPresenterProvider provider,
  ) {
    return call(
      provider.widgetRef,
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
  String? get name => r'launchButtonPresenterProvider';
}

/// See also [LaunchButtonPresenter].
class LaunchButtonPresenterProvider
    extends AutoDisposeAsyncNotifierProviderImpl<LaunchButtonPresenter,
        LaunchButtonModel> {
  /// See also [LaunchButtonPresenter].
  LaunchButtonPresenterProvider(
    WidgetRef widgetRef,
  ) : this._internal(
          () => LaunchButtonPresenter()..widgetRef = widgetRef,
          from: launchButtonPresenterProvider,
          name: r'launchButtonPresenterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$launchButtonPresenterHash,
          dependencies: LaunchButtonPresenterFamily._dependencies,
          allTransitiveDependencies:
              LaunchButtonPresenterFamily._allTransitiveDependencies,
          widgetRef: widgetRef,
        );

  LaunchButtonPresenterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.widgetRef,
  }) : super.internal();

  final WidgetRef widgetRef;

  @override
  FutureOr<LaunchButtonModel> runNotifierBuild(
    covariant LaunchButtonPresenter notifier,
  ) {
    return notifier.build(
      widgetRef,
    );
  }

  @override
  Override overrideWith(LaunchButtonPresenter Function() create) {
    return ProviderOverride(
      origin: this,
      override: LaunchButtonPresenterProvider._internal(
        () => create()..widgetRef = widgetRef,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        widgetRef: widgetRef,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<LaunchButtonPresenter,
      LaunchButtonModel> createElement() {
    return _LaunchButtonPresenterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LaunchButtonPresenterProvider &&
        other.widgetRef == widgetRef;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, widgetRef.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LaunchButtonPresenterRef
    on AutoDisposeAsyncNotifierProviderRef<LaunchButtonModel> {
  /// The parameter `widgetRef` of this provider.
  WidgetRef get widgetRef;
}

class _LaunchButtonPresenterProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LaunchButtonPresenter,
        LaunchButtonModel> with LaunchButtonPresenterRef {
  _LaunchButtonPresenterProviderElement(super.provider);

  @override
  WidgetRef get widgetRef =>
      (origin as LaunchButtonPresenterProvider).widgetRef;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
