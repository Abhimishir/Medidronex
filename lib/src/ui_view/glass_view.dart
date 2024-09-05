import 'package:flutter/material.dart';

import '../fitness_app_theme.dart';

class GlassView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const GlassView({Key? key, this.animationController, this.animation})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation!.value), 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 0, bottom: 24),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor("#D7E0F9"),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(8.0)),
                            // boxShadow: <BoxShadow>[
                            //   BoxShadow(
                            //       color: FitnessAppTheme.grey.withOpacity(0.2),
                            //       offset: Offset(1.1, 1.1),
                            //       blurRadius: 10.0),
                            // ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 105, bottom: 12, right: 2, top: 12),
                                child: Text(
                                  'Your health, our priority. Stay positive!',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: FitnessAppTheme.fontName,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    color: FitnessAppTheme.nearlyDarkBlue
                                        .withOpacity(0.6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -12,
                        left: -50,
                        child: SizedBox(
                          width: 180,
                          height: 180,
                          child: Image.asset("assets/organdel.png"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


class HexColor extends Color {
  // Constructor to create a Color object from a hex color string
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  // Static method to convert hex string to integer color value
  static int _getColorFromHex(String hexColor) {
    final buffer = StringBuffer();
    if (hexColor.length == 6 || hexColor.length == 7) {
      buffer.write('FF'); // Default alpha value if not provided
      buffer.write(hexColor.replaceFirst('#', ''));
    } else if (hexColor.length == 9 || hexColor.length == 10) {
      buffer.write(hexColor.replaceFirst('#', ''));
    }
    return int.parse(buffer.toString(), radix: 16);
  }
}
