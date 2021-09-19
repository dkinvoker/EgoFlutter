import 'dart:async';

import 'package:ego_flutter/widgets/navigation_frame/navigation_command.dart';
import 'package:flutter/cupertino.dart';

class NavigationStream {
  final StreamController<dynamic> _streamController =
      StreamController<dynamic>();

  NavigationStream();

  void push(Widget navigationTarget) {
    _streamController.add(navigationTarget);
  }

  void goBack() {
    _streamController.add(GoBackCommand());
  }

  void clearNavigationStack() {
    _streamController.add(ClearNavigationStackCommand());
  }

  void set(Widget navigationTarget) {
    this.clearNavigationStack();
    this.push(navigationTarget);
  }

  Stream<dynamic> get rawStream => this._streamController.stream;
}
