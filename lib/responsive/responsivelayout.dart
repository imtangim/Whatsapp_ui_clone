import 'package:flutter/material.dart';

class Responsivelayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const Responsivelayout({super.key, required this.mobileScreenLayout, required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints constraints) {
        if (constraints.maxWidth > 900) {
          //web
          return webScreenLayout;
        }
        //mobile
        return mobileScreenLayout;
      },
    );
  }
}
