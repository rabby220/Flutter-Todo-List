import 'package:flutter/material.dart';

class ResponsiveUi extends StatelessWidget {
  final Widget child;
  const ResponsiveUi({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: child,
    );
  }
}
