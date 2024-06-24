// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoCurrentFilterHash() => r'f709ad79fb4230defff80ee6a062ece2099a01dc';

/// See also [TodoCurrentFilter].
@ProviderFor(TodoCurrentFilter)
final todoCurrentFilterProvider =
    AutoDisposeNotifierProvider<TodoCurrentFilter, FilterType>.internal(
  TodoCurrentFilter.new,
  name: r'todoCurrentFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoCurrentFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoCurrentFilter = AutoDisposeNotifier<FilterType>;
String _$todosListHash() => r'fb60c41f689ba9a168fd78f12a29469ba1fe8a77';

/// See also [TodosList].
@ProviderFor(TodosList)
final todosListProvider =
    AutoDisposeNotifierProvider<TodosList, List<Todo>>.internal(
  TodosList.new,
  name: r'todosListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodosList = AutoDisposeNotifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
