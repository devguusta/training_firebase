import 'package:flutter/material.dart';

class ConditionalParentWidget extends StatelessWidget {
  final Widget child;
  final bool condition;
  final Widget Function(Widget child) conditionalBuilder;
  const ConditionalParentWidget({
    Key? key,
    required this.child,
    required this.condition,
    required this.conditionalBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return condition ? this.conditionalBuilder(this.child) : this.child;
  }
}
