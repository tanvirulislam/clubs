// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tecHash() => r'a4b91d4a60d09135c69699a6d2335caa7cd3622a';

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

abstract class _$Tec
    extends BuildlessAutoDisposeNotifier<TextEditingController> {
  late final String arg;

  TextEditingController build(String arg);
}

/// See also [Tec].
@ProviderFor(Tec)
const tecProvider = TecFamily();

/// See also [Tec].
class TecFamily extends Family<TextEditingController> {
  /// See also [Tec].
  const TecFamily();

  /// See also [Tec].
  TecProvider call(String arg) {
    return TecProvider(arg);
  }

  @override
  TecProvider getProviderOverride(covariant TecProvider provider) {
    return call(provider.arg);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tecProvider';
}

/// See also [Tec].
class TecProvider
    extends AutoDisposeNotifierProviderImpl<Tec, TextEditingController> {
  /// See also [Tec].
  TecProvider(String arg)
    : this._internal(
        () => Tec()..arg = arg,
        from: tecProvider,
        name: r'tecProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$tecHash,
        dependencies: TecFamily._dependencies,
        allTransitiveDependencies: TecFamily._allTransitiveDependencies,
        arg: arg,
      );

  TecProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.arg,
  }) : super.internal();

  final String arg;

  @override
  TextEditingController runNotifierBuild(covariant Tec notifier) {
    return notifier.build(arg);
  }

  @override
  Override overrideWith(Tec Function() create) {
    return ProviderOverride(
      origin: this,
      override: TecProvider._internal(
        () => create()..arg = arg,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        arg: arg,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Tec, TextEditingController>
  createElement() {
    return _TecProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TecProvider && other.arg == arg;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, arg.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TecRef on AutoDisposeNotifierProviderRef<TextEditingController> {
  /// The parameter `arg` of this provider.
  String get arg;
}

class _TecProviderElement
    extends AutoDisposeNotifierProviderElement<Tec, TextEditingController>
    with TecRef {
  _TecProviderElement(super.provider);

  @override
  String get arg => (origin as TecProvider).arg;
}

String _$boolHash() => r'b5279106d31f8ba7026f3ea19d8aa50363e7b9ed';

abstract class _$Bool extends BuildlessAutoDisposeNotifier<bool?> {
  late final String? arg;

  bool? build(String? arg);
}

/// See also [Bool].
@ProviderFor(Bool)
const boolProvider = BoolFamily();

/// See also [Bool].
class BoolFamily extends Family<bool?> {
  /// See also [Bool].
  const BoolFamily();

  /// See also [Bool].
  BoolProvider call(String? arg) {
    return BoolProvider(arg);
  }

  @override
  BoolProvider getProviderOverride(covariant BoolProvider provider) {
    return call(provider.arg);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'boolProvider';
}

/// See also [Bool].
class BoolProvider extends AutoDisposeNotifierProviderImpl<Bool, bool?> {
  /// See also [Bool].
  BoolProvider(String? arg)
    : this._internal(
        () => Bool()..arg = arg,
        from: boolProvider,
        name: r'boolProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$boolHash,
        dependencies: BoolFamily._dependencies,
        allTransitiveDependencies: BoolFamily._allTransitiveDependencies,
        arg: arg,
      );

  BoolProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.arg,
  }) : super.internal();

  final String? arg;

  @override
  bool? runNotifierBuild(covariant Bool notifier) {
    return notifier.build(arg);
  }

  @override
  Override overrideWith(Bool Function() create) {
    return ProviderOverride(
      origin: this,
      override: BoolProvider._internal(
        () => create()..arg = arg,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        arg: arg,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<Bool, bool?> createElement() {
    return _BoolProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BoolProvider && other.arg == arg;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, arg.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BoolRef on AutoDisposeNotifierProviderRef<bool?> {
  /// The parameter `arg` of this provider.
  String? get arg;
}

class _BoolProviderElement
    extends AutoDisposeNotifierProviderElement<Bool, bool?>
    with BoolRef {
  _BoolProviderElement(super.provider);

  @override
  String? get arg => (origin as BoolProvider).arg;
}

String _$clubColorSelectionHash() =>
    r'a06a9747cf9e06103322ab6d3b01b1dc68a11059';

/// See also [ClubColorSelection].
@ProviderFor(ClubColorSelection)
final clubColorSelectionProvider =
    AutoDisposeNotifierProvider<ClubColorSelection, List<ClubColor>?>.internal(
      ClubColorSelection.new,
      name: r'clubColorSelectionProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$clubColorSelectionHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ClubColorSelection = AutoDisposeNotifier<List<ClubColor>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
