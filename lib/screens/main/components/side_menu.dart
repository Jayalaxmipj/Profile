import 'package:flutter/material.dart';

import 'package:responsive/constants.dart';
import 'package:responsive/screens/main/components/skills.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledge_of.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                AreaInfoText(title: "Residence", text: "India"),
                AreaInfoText(title: "City", text: "Gadag"),
                AreaInfoText(title: "Age", text: "23"),
                Skills(),
                SizedBox(height: defaultPadding),
                Coding(),
                KnowledgeOf(),
                Divider(),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "Download CV",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                        ),
                        SizedBox(width: defaultPadding / 2),
                        Icon(Icons.download)
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFF24242E),
                  child: Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.link))
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
