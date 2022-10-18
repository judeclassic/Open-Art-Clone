import 'dart:async';
import 'package:flutter/material.dart';
import 'package:thestream/presentation/_resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(milliseconds: 2000), _next);
  }

  _next() {
    Navigator.pushReplacementNamed(context, Routes.homeRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Loading...')));
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
