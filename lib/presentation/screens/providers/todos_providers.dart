import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../config/helpers/random_generator.dart';
import '../../../domain/domain.dart';

part 'todos_providers.g.dart';

const uuid = Uuid();
enum FilterType { all, completed, pending }

@Riverpod(keepAlive: true)
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() => FilterType.all;

  void changeCurrentFilter ( FilterType newFilter ){
    state = newFilter;
  }
}

@Riverpod(keepAlive: true)
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

  void toggleTodo(String id){
    state = state.map((todo){

      if(todo.id == id){
        todo = todo.copyWith(
          completedAt: todo.done ? null : DateTime.now()
        );
      }

      return todo;
    }).toList();
  }

  void createTodo( String description ){
    state = [
      ...state,
      Todo(id: uuid.v4(), description: description, completedAt: null)
    ];
  }
}

@riverpod
List<Todo> filteredTodos(FilteredTodosRef ref) {
  final currentFilter = ref.watch(todoCurrentFilterProvider);
  final todosList = ref.watch(todosListProvider);

  switch(currentFilter){
    
    case FilterType.all:
      return todosList;

    case FilterType.completed:
      return todosList.where((todo) => todo.done).toList();

    case FilterType.pending:
      return todosList.where((todo) => !todo.done).toList();
  }
}