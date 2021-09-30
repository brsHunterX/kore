import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  
  @observable
  int _counter = 0;

  String get counter => _counter.toString();

  @action
  void increment() {
    _counter++;
  }
}