import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../config/helpers/random_generator.dart';
import '../../../domain/domain.dart';

part 'todos_providers.g.dart';

const uuid = Uuid();
enum FilterType { all, completed, pending }

@riverpod
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() => FilterType.all;

  void changeCurrentFilter ( FilterType newFilter ){
    state = newFilter;
  }
}

@riverpod
class TodosList extends _$TodosList {
  @override
  List<Todo> build() => [
    Todo(
      id: uuid.v4(), 
      description: RandomGenerator.getRandomName(), 
      completedAt: null
    ),
    Todo(
      id: uuid.v4(), 
      description: RandomGenerator.getRandomName(), 
      completedAt: DateTime.now()
    ),
    Todo(
      id: uuid.v4(), 
      description: RandomGenerator.getRandomName(), 
      completedAt: null
    ),
    Todo(
      id: uuid.v4(), 
      description: RandomGenerator.getRandomName(), 
      completedAt: DateTime.now()
    )
  ];

  void createTodo( String description ){
    state = [
      ...state,
      Todo(id: uuid.v4(), description: description, completedAt: null)
    ];
  }
}