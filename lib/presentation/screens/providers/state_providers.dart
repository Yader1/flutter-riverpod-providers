import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() {
    return 5;
  }

  void increaseByOne() {
    state++;
  }
}
//Tareas:
/// 1. DarkMode -> bool default: false
///   void toggleDarkMode()
@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() {
    return false;
  }

  void toggleDarkMode(){
    if(state){
      state = false;
    } else {
      state = true;
    }
  }
}


/// 2. Username => String
///   Default: 'UN NAME'
///   changeName( String name )
///   usernameProvider.notifier.changeName( RandomGenerator.getRandomName() )
@Riverpod(keepAlive: true)
class GenerateName extends _$GenerateName {
  @override
  String build() {
    return 'YADER MEJIA';
  }

  void changeName(String newName){
    state = newName;
  }
}