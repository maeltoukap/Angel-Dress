import 'package:angel_dress/Functions/Splash_screen/const.dart';
import 'package:flutter/material.dart';

class DotDivider extends StatelessWidget {
  final double width;
  final double height;
  final double gap;
  final Color color;
  final double lineHeight;

  const DotDivider(
      {this.height = 2.0,
        this.color = firstColor,
        this.width = 3.0,
        this.gap = 2.0,
        this.lineHeight = 10.0});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = width;
        final dashHeight = height;
        final dashCount = (boxWidth / dashWidth).floor();
        return Container(
          height: (lineHeight * 2) + height,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: dashCount,
            itemBuilder: (BuildContext context, int index) => Center(
              child: Container(
                width: dashWidth,
                height: dashHeight,
                margin:
                EdgeInsets.symmetric(vertical: lineHeight, horizontal: gap),
                decoration: BoxDecoration(color: color),
                // child: Text("OU", style: TextStyle(color: firstColor),),
              ),
            ),
          ),
        );
      },
    );
  }
}