// FLUTTER
import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_interfaces/src/route/modular_arguments.dart';

class AuthGuard implements RouteGuard {
  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) {
    return true;
  }

  @override
  FutureOr<ParallelRoute> pos(ModularRoute route, ModularArguments args) {
    return null;
  }

  @override
  FutureOr<ModularRoute> pre(ModularRoute route) {
    return null;
  }

  @override
  String get redirectTo => '/auth/';
}