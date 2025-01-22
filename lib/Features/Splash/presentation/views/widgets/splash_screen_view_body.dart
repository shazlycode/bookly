import 'package:bookly/Core/utilis/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenViewBody extends StatefulWidget {
  const SplashScreenViewBody({super.key});

  @override
  State<SplashScreenViewBody> createState() => _SplashScreenViewBodyState();
}

class _SplashScreenViewBodyState extends State<SplashScreenViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingTransition;

  @override
  void initState() {
    super.initState();
    animationIitialization();
    navigatioToBookViewScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/logo.png",
        ),
        AnimatedBuilder(
            animation: slidingTransition,
            builder: (context, _) {
              return SlideTransition(
                position: slidingTransition,
                child: const Text(
                  "REED FREE BOOKS",
                  textAlign: TextAlign.center,
                ),
              );
            })
      ],
    );
  }

  void animationIitialization() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingTransition = Tween(begin: Offset(0, 4), end: Offset(0, 0))
        .animate(animationController);
    animationController.forward();
  }

  void navigatioToBookViewScreen(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kBookScreenViewPath);
    });
  }
}
