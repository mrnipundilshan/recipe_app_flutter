import 'package:flutter/material.dart';
import 'package:recipe_app/featured.dart';

class home_body extends StatelessWidget {
  const home_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            featured(),
          ],
        ),
      ),
    );
  }
}
