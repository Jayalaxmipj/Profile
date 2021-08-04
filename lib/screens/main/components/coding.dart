import 'package:responsive/components/animated_linear_progress_indicator.dart';
import 'package:flutter/material.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          text: "C Language",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.4,
          text: "C ++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          text: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          text: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          text: "JAVA",
        )
      ],
    );
  }
}
