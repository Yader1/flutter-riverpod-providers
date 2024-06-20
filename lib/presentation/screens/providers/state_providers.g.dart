// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'398264679d4af1936e22d759aed3c1b62ca4afb1';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = AutoDisposeNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<int>;
String _$darkModeHash() => r'94b4f1aeb7342dc00cd1419f68108c710a333c31';

/// 1. DarkMode -> bool default: false
///   void toggleDarkMode()
///
/// Copied from [DarkMode].
@ProviderFor(DarkMode)
final darkModeProvider = AutoDisposeNotifierProvider<DarkMode, bool>.internal(
  DarkMode.new,
  name: r'darkModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$darkModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DarkMode = AutoDisposeNotifier<bool>;
String _$generateNameHash() => r'ec7097ba0c6b5f76efad9a67a76629eba6d6b024';

/// 2. Username => String
///   Default: 'UN NAME'
///   changeName( String name )
///   usernameProvider.notifier.changeName( RandomGenerator.getRandomName() )
///
/// Copied from [GenerateName].
@ProviderFor(GenerateName)
final generateNameProvider =
    AutoDisposeNotifierProvider<GenerateName, String>.internal(
  GenerateName.new,
  name: r'generateNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$generateNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GenerateName = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
