import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive/constants.dart';
import 'package:responsive/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AspectRatio(
            aspectRatio: 3,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  "https://wc.wallpaperuse.com/wallp/27-272324_s.jpg",
                  fit: BoxFit.cover,
                ),
                Container(
                  color: darkColor.withOpacity(0.66),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Discover my Amazing \n Art Space!",
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                      DefaultTextStyle(
                        style: Theme.of(context).textTheme.subtitle1!,
                        child: Row(
                          children: [
                            Text.rich(TextSpan(
                              text: "<",
                              children: [
                                TextSpan(
                                  text: "Flutter",
                                  style: TextStyle(color: primaryColor),
                                ),
                              ],
                            )),
                            Text("I Build"),
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                    "responsive web and mobile app."),
                                TyperAnimatedText("Complete e-commerce app UI"),
                                TyperAnimatedText(
                                    "Chat app with dark & Light theme."),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
