// import 'package:flutter/material.dart';
// import '../fitness_app_theme.dart';

// class WorkoutView extends StatelessWidget {
//   final AnimationController? animationController;
//   final Animation<double>? animation;

//   const WorkoutView({Key? key, this.animationController, this.animation})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: animationController!,
//       builder: (BuildContext context, Widget? child) {
//         return FadeTransition(
//           opacity: animation!,
//           child: new Transform(
//             transform: new Matrix4.translationValues(
//                 0.0, 30 * (1.0 - animation!.value), 0.0),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   left: 24, right: 24, top: 16, bottom: 18),
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     FitnessAppTheme.nearlyDarkBlue,
//                     HexColor("#6F56E8")
//                   ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(8.0),
//                       bottomLeft: Radius.circular(8.0),
//                       bottomRight: Radius.circular(8.0),
//                       topRight: Radius.circular(68.0)),
//                   boxShadow: <BoxShadow>[
//                     BoxShadow(
//                         color: FitnessAppTheme.grey.withOpacity(0.6),
//                         offset: Offset(1.1, 1.1),
//                         blurRadius: 10.0),
//                   ],
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         'Next workout',
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           fontFamily: FitnessAppTheme.fontName,
//                           fontWeight: FontWeight.normal,
//                           fontSize: 14,
//                           letterSpacing: 0.0,
//                           color: FitnessAppTheme.white,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 8.0),
//                         child: const Text(
//                           'Legs Toning and\nGlutes Workout at Home',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontFamily: FitnessAppTheme.fontName,
//                             fontWeight: FontWeight.normal,
//                             fontSize: 20,
//                             letterSpacing: 0.0,
//                             color: FitnessAppTheme.white,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 32,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 4),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Padding(
//                               padding: const EdgeInsets.only(left: 4),
//                               child: Icon(
//                                 Icons.timer,
//                                 color: FitnessAppTheme.white,
//                                 size: 16,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 4.0),
//                               child: const Text(
//                                 '68 min',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontFamily: FitnessAppTheme.fontName,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 14,
//                                   letterSpacing: 0.0,
//                                   color: FitnessAppTheme.white,
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               child: SizedBox(),
//                             ),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: FitnessAppTheme.nearlyWhite,
//                                 shape: BoxShape.circle,
//                                 boxShadow: <BoxShadow>[
//                                   BoxShadow(
//                                       color: FitnessAppTheme.nearlyBlack
//                                           .withOpacity(0.4),
//                                       offset: Offset(8.0, 8.0),
//                                       blurRadius: 8.0),
//                                 ],
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(0.0),
//                                 child: Icon(
//                                   Icons.arrow_right,
//                                   color: HexColor("#6F56E8"),
//                                   size: 44,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }


// class HexColor extends Color {
//   // Constructor to create a Color object from a hex color string
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

//   // Static method to convert hex string to integer color value
//   static int _getColorFromHex(String hexColor) {
//     final buffer = StringBuffer();
//     if (hexColor.length == 6 || hexColor.length == 7) {
//       buffer.write('FF'); // Default alpha value if not provided
//       buffer.write(hexColor.replaceFirst('#', ''));
//     } else if (hexColor.length == 9 || hexColor.length == 10) {
//       buffer.write(hexColor.replaceFirst('#', ''));
//     }
//     return int.parse(buffer.toString(), radix: 16);
//   }
// }


// import 'package:flutter/material.dart';
// import '../fitness_app_theme.dart';

// class DonationSupportView extends StatelessWidget {
//   final AnimationController? animationController;
//   final Animation<double>? animation;

//   const DonationSupportView({Key? key, this.animationController, this.animation})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: animationController!,
//       builder: (BuildContext context, Widget? child) {
//         return FadeTransition(
//           opacity: animation!,
//           child: Transform(
//             transform: Matrix4.translationValues(
//                 0.0, 30 * (1.0 - animation!.value), 0.0),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   left: 24, right: 24, top: 16, bottom: 18),
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     FitnessAppTheme.nearlyDarkBlue,
//                     HexColor("#6F56E8")
//                   ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(8.0),
//                       bottomLeft: Radius.circular(8.0),
//                       bottomRight: Radius.circular(8.0),
//                       topRight: Radius.circular(68.0)),
//                   boxShadow: <BoxShadow>[
//                     BoxShadow(
//                         color: FitnessAppTheme.grey.withOpacity(0.6),
//                         offset: Offset(1.1, 1.1),
//                         blurRadius: 10.0),
//                   ],
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         'Donation and Support',
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           fontFamily: FitnessAppTheme.fontName,
//                           fontWeight: FontWeight.normal,
//                           fontSize: 14,
//                           letterSpacing: 0.0,
//                           color: FitnessAppTheme.white,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 8.0),
//                         child: const Text(
//                           'Donation Platforms:\nLinks to donate to disaster relief organizations or fundraisers.',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontFamily: FitnessAppTheme.fontName,
//                             fontWeight: FontWeight.normal,
//                             fontSize: 20,
//                             letterSpacing: 0.0,
//                             color: FitnessAppTheme.white,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 32,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 4),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Padding(
//                               padding: const EdgeInsets.only(right: 4),
//                               child: Icon(
//                                 Icons.support_agent,
//                                 color: FitnessAppTheme.white,
//                                 size: 16,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(1),
//                               child: const Text(
//                                 'Support Services:\nInformation on psychological\n support and counseling \nduring and after a disaster.',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontFamily: FitnessAppTheme.fontName,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 14,
//                                   letterSpacing: 0.0,
//                                   color: FitnessAppTheme.white,
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               child: SizedBox(),
//                             ),
//                             Container(
//                               decoration: BoxDecoration(
//                                 color: FitnessAppTheme.nearlyWhite,
//                                 shape: BoxShape.circle,
//                                 boxShadow: <BoxShadow>[
//                                   BoxShadow(
//                                       color: FitnessAppTheme.nearlyBlack
//                                           .withOpacity(0.4),
//                                       offset: Offset(8.0, 8.0),
//                                       blurRadius: 8.0),
//                                 ],
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(0.0),
//                                 child: Icon(
//                                   Icons.medical_information,
//                                   color: HexColor("#6F56E8"),
//                                   size: 44,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }


// class HexColor extends Color {
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

//   static int _getColorFromHex(String hexColor) {
//     final buffer = StringBuffer();
//     if (hexColor.length == 6 || hexColor.length == 7) {
//       buffer.write('FF');
//       buffer.write(hexColor.replaceFirst('#', ''));
//     } else if (hexColor.length == 9 || hexColor.length == 10) {
//       buffer.write(hexColor.replaceFirst('#', ''));
//     }
//     return int.parse(buffer.toString(), radix: 16);
//   }
// }



import 'package:flutter/material.dart';
import 'package:meddronexx/src/ui_view/donationscreen.dart';
import '../fitness_app_theme.dart';

class DonationSupportView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const DonationSupportView({Key? key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - animation!.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 18),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    FitnessAppTheme.nearlyDarkBlue,
                    HexColor("#6F56E8")
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(68.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: FitnessAppTheme.grey.withOpacity(0.6),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Donation and Support',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: FitnessAppTheme.fontName,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          letterSpacing: 0.0,
                          color: FitnessAppTheme.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: const Text(
                          'Donation Platforms:\nLinks to donate to disaster relief organizations or fundraisers.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: FitnessAppTheme.fontName,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            letterSpacing: 0.0,
                            color: FitnessAppTheme.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Icon(
                                Icons.support_agent,
                                color: FitnessAppTheme.white,
                                size: 16,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1),
                              child: const Text(
                                'Support Services:\nInformation on psychological\nsupport and counseling\nduring and after a disaster.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: FitnessAppTheme.fontName,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: FitnessAppTheme.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DonationScreen(), // Replace with your donation screen widget
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FitnessAppTheme.nearlyWhite,
                                  shape: BoxShape.circle,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: FitnessAppTheme.nearlyBlack
                                            .withOpacity(0.4),
                                        offset: Offset(8.0, 8.0),
                                        blurRadius: 8.0),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Icon(
                                    Icons.medical_information,
                                    color: Color.fromARGB(255, 255, 85, 85),
                                    size: 44,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    final buffer = StringBuffer();
    if (hexColor.length == 6 || hexColor.length == 7) {
      buffer.write('FF');
      buffer.write(hexColor.replaceFirst('#', ''));
    } else if (hexColor.length == 9 || hexColor.length == 10) {
      buffer.write(hexColor.replaceFirst('#', ''));
    }
    return int.parse(buffer.toString(), radix: 16);
  }
}

// // Replace this with your actual donation screen widget
// class DonationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Donation"),
//       ),
//       body: Center(
//         child: Text("This is the donation screen"),
//       ),
//     );
//   }
// }
