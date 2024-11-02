import 'package:flutter/material.dart';
import 'package:recipe_app/featured.dart';

class home_body extends StatelessWidget {
  const home_body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            featured(),
            SizedBox(height: 20),
            Text("All Recipes"),
            Container(
              height: 600,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  NewWidget(),
                  NewWidget(),
                  NewWidget(),
                  NewWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 150,
      decoration: BoxDecoration(color: Colors.blueAccent),
      margin: EdgeInsets.only(right: 30, bottom: 30),
    );
  }
}
