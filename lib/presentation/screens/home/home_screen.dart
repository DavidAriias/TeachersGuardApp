import 'package:flutter/material.dart';
import 'package:teachersguard/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static String name = 'home-screen';
  final Widget childView;

  const HomeScreen({super.key, required this.childView});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: childView,
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
