import 'package:flutter/material.dart';
import 'package:recipe_app/body.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("Good Morning"),
            Text("Nipun Dilshan"),
          ],
        ),
      ),
      body: home_body(),
    );
  }
}
