// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.picker.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filePickersHash() => r'f964e5e2ffcd12edb9aa2c9ec48b9f8a34ea189e';

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

abstract class _$FilePickers
    extends BuildlessAutoDisposeNotifier<PlatformFile?> {
  late final dynamic arg;

  PlatformFile? build(dynamic arg);
}

/// See also [FilePickers].
@ProviderFor(FilePickers)
const filePickersProvider = FilePickersFamily();

/// See also [FilePickers].
class FilePickersFamily extends Family<PlatformFile?> {
  /// See also [FilePickers].
  const FilePickersFamily();

  /// See also [FilePickers].
  FilePickersProvider call(dynamic arg) {
    return FilePickersProvider(arg);
  }

  @override
  FilePickersProvider getProviderOverride(
    covariant FilePickersProvider provider,
  ) {
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
  String? get name => r'filePickersProvider';
}

/// See also [FilePickers].
class FilePickersProvider
    extends AutoDisposeNotifierProviderImpl<FilePickers, PlatformFile?> {
  /// See also [FilePickers].
  FilePickersProvider(dynamic arg)
    : this._internal(
        () => FilePickers()..arg = arg,
        from: filePickersProvider,
        name: r'filePickersProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$filePickersHash,
        dependencies: FilePickersFamily._dependencies,
        allTransitiveDependencies: FilePickersFamily._allTransitiveDependencies,
        arg: arg,
      );

  FilePickersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.arg,
  }) : super.internal();

  final dynamic arg;

  @override
  PlatformFile? runNotifierBuild(covariant FilePickers notifier) {
    return notifier.build(arg);
  }

  @override
  Override overrideWith(FilePickers Function() create) {
    return ProviderOverride(
      origin: this,
      override: FilePickersProvider._internal(
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
  AutoDisposeNotifierProviderElement<FilePickers, PlatformFile?>
  createElement() {
    return _FilePickersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilePickersProvider && other.arg == arg;
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
mixin FilePickersRef on AutoDisposeNotifierProviderRef<PlatformFile?> {
  /// The parameter `arg` of this provider.
  dynamic get arg;
}

class _FilePickersProviderElement
    extends AutoDisposeNotifierProviderElement<FilePickers, PlatformFile?>
    with FilePickersRef {
  _FilePickersProviderElement(super.provider);

  @override
  dynamic get arg => (origin as FilePickersProvider).arg;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
