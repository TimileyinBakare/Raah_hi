import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;

  final Function()? onclick;
  const AppContainer({
    super.key,
    this.height,
    this.width,
    required this.child,
    this.onclick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Container(
        height: height ?? 60,
        width: width ?? 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 243, 241, 242).withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: child,
      ),
    );
  }
}