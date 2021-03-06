import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'signup_manager.g.dart';

class SignUpManager = _SignUpManagerBase with _$SignUpManager;

abstract class _SignUpManagerBase with Store {
   @observable
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
    viewportFraction: 1,
  );
  @observable
  int pageChanged = 0;

  @action
  Future<void> nextPage() async {
   await pageController.nextPage(
      duration: const Duration(microseconds: 400),
      curve: Curves.easeIn,
    );
  }

  @action
    Future<void> backPage() async {
      await pageController.previousPage(
        duration: const Duration(microseconds: 400),
        curve: Curves.easeIn,
      );
    }

  @observable
  bool loading = false;
  
}