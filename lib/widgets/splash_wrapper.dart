import 'package:flutter/material.dart';
import '../views/splash_view.dart';

class SplashWrapper extends StatefulWidget {
  final Widget child;
  final int duration;

  const SplashWrapper({
    super.key,
    required this.child,
    this.duration = 20,
  });

  @override
  State<SplashWrapper> createState() => _SplashWrapperState();
}

class _SplashWrapperState extends State<SplashWrapper> {
  bool _showSplash = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: widget.duration), () {
      if (mounted) {
        setState(() {
          _showSplash = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showSplash ? const SplashView() : widget.child;
  }
}