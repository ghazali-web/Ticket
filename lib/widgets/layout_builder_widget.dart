import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/app_layout.dart';

class LayoutBuilserWidget extends StatelessWidget {
  final bool? iscolor;
  final int section;
  final double width;
  const LayoutBuilserWidget(
      {super.key, this.iscolor, required this.section, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / 15).floor(),
              (index) => SizedBox(
                  width: width,
                  height: AppLayout.getHeight(1),
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                    color:
                        iscolor == true ? Colors.white : Colors.grey.shade300,
                  )))));
    });
  }
}
