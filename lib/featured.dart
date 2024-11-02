import 'package:flutter/material.dart';

class featured extends StatelessWidget {
  const featured({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Featured"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(color: Colors.blueAccent),
                margin: EdgeInsets.only(right: 30),
              ),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(color: Colors.blueAccent),
              )
            ],
          ),
        ),
      ],
    );
  }
}
