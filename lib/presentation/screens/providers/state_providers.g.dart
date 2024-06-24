// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'b43f7c18c5389c537100fd61fa83ba6d1aa0df33';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = NotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = Notifier<int>;
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
String _$generateNameHash() => r'cf83b75f6259acd279a89f7fe384b20febc594f5';

/// 2. Username => String
///   Default: 'UN NAME'
///   changeName( String name )
///   usernameProvider.notifier.changeName( RandomGenerator.getRandomName() )
///
/// Copied from [GenerateName].
@ProviderFor(GenerateName)
final generateNameProvider = NotifierProvider<GenerateName, String>.internal(
  GenerateName.new,
  name: r'generateNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$generateNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GenerateName = Notifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
