import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.text,
  }) : super(key: key);

  final double percentage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: defaultDuration,
          builder: (context, double value, child) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        (value * 100).toInt().toString() + "%",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                  SizedBox(height: defaultPadding / 2),
                  LinearProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                ],
              )),
    );
  }
}
