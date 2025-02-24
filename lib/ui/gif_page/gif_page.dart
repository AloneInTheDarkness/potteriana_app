import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class GifPage extends StatelessWidget {
  const GifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("WIKI users are subhumans"),
      ),
      body: Center(
        child: Image.asset('assets/images/happyLittleTriangle.gif'),
      )
    );
  }
}
