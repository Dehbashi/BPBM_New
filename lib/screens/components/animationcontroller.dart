import 'package:flutter/animation.dart';

class CustomAnimationController {
  late AnimationController _animationController;

  CustomAnimationController({required TickerProvider vsync}) {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: vsync,
    );
  }

  void dispose() {
    _animationController.dispose();
  }

  Animation<double> get animation => _animationController.view;

  void forward() {
    _animationController.forward();
  }

  void reverse() {
    _animationController.reverse();
  }
}
