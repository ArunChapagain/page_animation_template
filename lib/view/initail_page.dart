import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:self_care/view/home.dart';
import 'package:self_care/widget/animation_route.dart';
import 'package:self_care/widget/orbit_item.dart';

class AstrologyAnimation extends StatefulWidget {
  const AstrologyAnimation({super.key});

  @override
  AstrologyAnimationState createState() => AstrologyAnimationState();
}

class AstrologyAnimationState extends State<AstrologyAnimation>
    with TickerProviderStateMixin {
  // Controllers
  late AnimationController _controller;
  late AnimationController _orbitController;
  // Animation
  late Animation<double> _blueCircleAnimation;
  late Animation<double> _rotationAnimation;
  late Animation<double> _orbit1Animation;
  late Animation<double> _orbit2Animation;
  late Animation<double> _orbit3Animation;
  late Animation<double> _orbit4Animation;
  late Animation<double> _opacityAnimation;
  late AnimationController _transitionController;
  late Animation<double> _circleToRectWidthAnimation;
  late Animation<double> _circleToRectHeightAnimation;
  late Animation<double> _borderRadiusAnimation;
  late Animation<double> _leftPositionAnimation;
  late Animation<double> _topPositionAnimation;

  bool _isClicked = false;
  @override
  void initState() {
    super.initState();

    // Initialize the controller for animation
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _orbitController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _transitionController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _blueCircleAnimation = Tween<double>(begin: -240.w, end: -77).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeInOut),
      ),
    );

    // Define opacity animation
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _orbitController,
        curve: const Interval(0.2, 0.5, curve: Curves.easeInOut),
      ),
    );

    // Initialize other orbit animations
    _orbit1Animation = Tween<double>(begin: -351.85, end: -150.91).animate(
      CurvedAnimation(
        parent: _orbitController,
        curve: const Interval(0, 0.4, curve: Curves.easeInOut),
      ),
    );

    _orbit2Animation = Tween<double>(begin: -495.03, end: -233).animate(
      CurvedAnimation(
        parent: _orbitController,
        curve: const Interval(0, 0.4, curve: Curves.easeInOut),
      ),
    );

    _orbit3Animation = Tween<double>(begin: -630.63, end: -280.05).animate(
      CurvedAnimation(
        parent: _orbitController,
        curve: const Interval(0, 0.4, curve: Curves.easeInOut),
      ),
    );

    _orbit4Animation = Tween<double>(begin: -755.93, end: -303.64).animate(
      CurvedAnimation(
        parent: _orbitController,
        curve: const Interval(0, 0.4, curve: Curves.easeInOut),
      ),
    );

    _rotationAnimation =
        Tween<double>(begin: -0.2, end: 0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0, 0.3, curve: Curves.easeInOut),
    ));

// Start the animations
    _controller.forward();
    _orbitController.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _circleToRectWidthAnimation =
        Tween<double>(begin: 237.w, end: MediaQuery.of(context).size.width)
            .animate(
      CurvedAnimation(
        parent: _transitionController,
        curve: Curves.easeInOut,
      ),
    );

    _circleToRectHeightAnimation = Tween<double>(
            begin: 216.45665961945033, end: MediaQuery.of(context).size.height)
        .animate(
      CurvedAnimation(
        parent: _transitionController,
        curve: Curves.easeInOut,
      ),
    );

    _borderRadiusAnimation = Tween<double>(begin: 1000.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _transitionController,
        curve: Curves.easeInOut,
      ),
    );

    _leftPositionAnimation = Tween<double>(begin: -77.w, end: 0.0).animate(
      CurvedAnimation(
        parent: _transitionController,
        curve: Curves.easeInOut,
      ),
    );

    _topPositionAnimation = Tween<double>(
            begin: MediaQuery.of(context).size.height / 2 - 130, end: 0)
        .animate(
      CurvedAnimation(
        parent: _transitionController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    setState(() {
      _isClicked = true;
    });

    _transitionController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1F2E),
      body: SafeArea(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: _rotationAnimation.value,
              child: Stack(
                children: [
                  _buildBlueCircle(),
                  _buildOrbits(),
                  _buildItems(), // Items will fade in
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBlueCircle() {
    return AnimatedBuilder(
      animation: _transitionController,
      builder: (context, child) {
        // If _isClicked is false, show the static circle
        if (!_isClicked) {
          return Positioned(
            left: _blueCircleAnimation.value,
            top: MediaQuery.of(context).size.height / 2 - 130,
            child: Container(
              width: 237.w,
              height: 216.45665961945033,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(1000),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF7495E8),
                    Color(0xFF0C359E),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Positioned(
            left: _leftPositionAnimation
                .value, // Keeps the original horizontal animation
            top: _topPositionAnimation.value, // Initial positioning
            child: Container(
              width: _circleToRectWidthAnimation
                  .value, // Animates the width from circle size to full width
              height: _circleToRectHeightAnimation
                  .value, // Animates the height from circle size to full height
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(_borderRadiusAnimation
                      .value), // Animates border radius from circular to rectangle
                ),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF7495E8),
                    Color(0xFF0C359E),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }

  Widget _buildOrbits() {
    return AnimatedBuilder(
      animation: _orbitController, // Listens to the orbitController
      builder: (context, child) {
        return Stack(
          children: [
            _orbit(351.85, 256, 150.91, 7.45, 1, const Color(0x4DCAD9FF),
                _orbit1Animation),
            _orbit(755.93, 26.7, 303.64, 7.45, 2, const Color(0x4DCAD9FF),
                _orbit4Animation),
            _orbit(630.63, 145.71, 280.05, 7.45, 1, const Color(0x4DCAD9FF),
                _orbit3Animation),
            _orbit(495.03, 180.59, 233, 7.45, 1, const Color(0xFF7495E8),
                _orbit2Animation),
          ],
        );
      },
    );
  }

  // Widget _buildOrbits() {
  //   return Stack(
  //     children: [
  //       _orbit(351.85, 256, 150.91, 7.45, 1, const Color(0x4DCAD9FF),
  //           _orbit1Animation),
  //       _orbit(755.93, 26.7, 303.64, 7.45, 2, const Color(0x4DCAD9FF),
  //           _orbit4Animation),
  //       _orbit(630.63, 145.71, 280.05, 7.45, 1, const Color(0x4DCAD9FF),
  //           _orbit3Animation),
  //       _orbit(495.03, 180.59, 233, 7.45, 1, const Color(0xFF7495E8),
  //           _orbit2Animation),
  //     ],
  //   );
  // }

  Widget _orbit(double height, double top, double left, double angle,
      double borderWidth, Color color, Animation orbitAnimation) {
    return Positioned(
      top: top.h,
      left: orbitAnimation.value,
      child: Transform.rotate(
        angle: angle * (pi / 180),
        child: Container(
          width: height.w,
          height: height.h,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(1000),
            ),
            border: Border.all(width: borderWidth, color: color),
          ),
        ),
      ),
    );
  }

  Widget _buildItems() {
    final items = [
      ('Business', 150.59, 5),
      ('Career', 240.3475, 140),
      ('Marriage', 414.105, 190),
      ('Family', 560.8625, 130),
      ('Health', 640.62, 5),
    ];

    return AnimatedBuilder(
      animation: _orbitController, // Listens to the orbitController
      builder: (context, child) {
        return Stack(
          children: items
              .map((item) => _buildOrbitItem(
                    item.$1,
                    item.$2,
                    item.$3.toDouble(),
                    () => _onItemTap(item.$1),
                  ))
              .toList(),
        );
      },
    );
  }

  Widget _buildOrbitItem(
      String text, double top, double left, VoidCallback onTap) {
    return Positioned(
        left: left.w,
        top: top.h,
        child: Opacity(
          opacity: _opacityAnimation.value, // Gradually increases the opacity
          child: OrbitItem(
            onTap: onTap,
            image: text,
            title: text,
          ),
        ));
  }

  void _onItemTap(String item) {
    setState(() {
      _orbitController.reverse(from: 0.2);
    });
    _startAnimation();
    // Start the circle-to-rectangle transition
    Future.delayed(
      const Duration(milliseconds: 400),
      () {
        Navigator.of(context).push(
          AnimatedRoute(
            HomePage(
              reverseAnimation: () {
                _transitionController.reverse();
                _orbitController.forward();
              },
            ),
          ),
        );
      },
    );
    // Navigate to HomePage after the animation completes
  }
}
