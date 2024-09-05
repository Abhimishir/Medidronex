// import 'package:flutter/material.dart';

// import '../fitness_app_theme.dart';
// class AreaListView extends StatefulWidget {
//   const AreaListView(
//       {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
//       : super(key: key);

//   final AnimationController? mainScreenAnimationController;
//   final Animation<double>? mainScreenAnimation;

//   @override
//   _AreaListViewState createState() => _AreaListViewState();
// }

// class _AreaListViewState extends State<AreaListView>
//     with TickerProviderStateMixin {
//   AnimationController? animationController;
//   List<Area> areaListData = <Area>[
//     Area(imagePath: 'assets/emar.png', title: 'Medkit & Emergency', route: '/medkit'),
//     Area(imagePath: 'assets/vol.jpg', title: 'Volunteer', route: '/volunteer'),
//     Area(imagePath: 'assets/nursing.png', title: 'Shelter Location', route: '/shelter'),
//     Area(imagePath: 'assets/foodsup.png', title: 'Food & Supplies', route: '/food_supplies'),
//   ];

//   @override
//   void initState() {
//     animationController = AnimationController(
//         duration: const Duration(milliseconds: 2000), vsync: this);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     animationController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: widget.mainScreenAnimationController!,
//       builder: (BuildContext context, Widget? child) {
//         return FadeTransition(
//           opacity: widget.mainScreenAnimation!,
//           child: Transform(
//             transform: Matrix4.translationValues(
//                 0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
//             child: AspectRatio(
//               aspectRatio: 1.0,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 8.0, right: 8),
//                 child: GridView(
//                   padding: const EdgeInsets.only(
//                       left: 16, right: 16, top: 16, bottom: 16),
//                   physics: const BouncingScrollPhysics(),
//                   scrollDirection: Axis.vertical,
//                   children: List<Widget>.generate(
//                     areaListData.length,
//                     (int index) {
//                       final int count = areaListData.length;
//                       final Animation<double> animation =
//                           Tween<double>(begin: 0.0, end: 1.0).animate(
//                         CurvedAnimation(
//                           parent: animationController!,
//                           curve: Interval((1 / count) * index, 1.0,
//                               curve: Curves.fastOutSlowIn),
//                         ),
//                       );
//                       animationController?.forward();
//                       return AreaView(
//                         area: areaListData[index],
//                         animation: animation,
//                         animationController: animationController!,
//                       );
//                     },
//                   ),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 24.0,
//                     crossAxisSpacing: 24.0,
//                     childAspectRatio: 1.0,
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

// class AreaView extends StatelessWidget {
//   const AreaView({
//     Key? key,
//     this.area,
//     this.animationController,
//     this.animation,
//   }) : super(key: key);

//   final Area? area;
//   final AnimationController? animationController;
//   final Animation<double>? animation;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: animationController!,
//       builder: (BuildContext context, Widget? child) {
//         return FadeTransition(
//           opacity: animation!,
//           child: Transform(
//             transform: Matrix4.translationValues(
//                 0.0, 50 * (1.0 - animation!.value), 0.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: FitnessAppTheme.white,
//                 borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(8.0),
//                     bottomLeft: Radius.circular(8.0),
//                     bottomRight: Radius.circular(8.0),
//                     topRight: Radius.circular(8.0)),
//                 boxShadow: <BoxShadow>[
//                   BoxShadow(
//                       color: FitnessAppTheme.grey.withOpacity(0.4),
//                       offset: const Offset(1.1, 1.1),
//                       blurRadius: 10.0),
//                 ],
//               ),
//               child: Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   focusColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   hoverColor: Colors.transparent,
//                   borderRadius: const BorderRadius.all(Radius.circular(8.0)),
//                   splashColor: FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
//                   onTap: () {
//                     Navigator.pushNamed(context, area!.route);
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(top: 0, left: 16, right: 16,bottom: 15),
//                         child: SizedBox(  width: 85.0, 
//                           height: 90.0, 
//                             child: Image.asset(area!.imagePath),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 8.0),
//                         child: Text(
//                           area!.title,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                             color: FitnessAppTheme.nearlyDarkBlue,
//                           ),
//                         ),
//                       ),
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

// class Area {
//   Area({required this.imagePath, required this.title, required this.route});

//   final String imagePath;
//   final String title;
//   final String route;
// }




import 'package:flutter/material.dart';
import 'package:meddronexx/FoodSuppliesScreen.dart';
import 'package:meddronexx/ShelterLocationScreen.dart';
import 'package:meddronexx/VolunteerScreen.dart';
import 'package:meddronexx/src/fitness_app_theme.dart';
import 'package:meddronexx/src/ui_view/MedkitScreen.dart';

class AreaListView extends StatefulWidget {
  const AreaListView(
      {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;

  @override
  _AreaListViewState createState() => _AreaListViewState();
}

class _AreaListViewState extends State<AreaListView>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<Area> areaListData = <Area>[
    Area(imagePath: 'assets/emar.png', title: 'Medkit & Emergency', destination: MedkitScreen()),
    Area(imagePath: 'assets/vol.jpg', title: 'Volunteer', destination: VolunteerScreen()),
    Area(imagePath: 'assets/nursing.png', title: 'Shelter Location', destination: ShelterLocationScreen()),
    Area(imagePath: 'assets/foodsup.png', title: 'Food & Supplies', destination: FoodSuppliesScreen()),
  ];

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.mainScreenAnimationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: widget.mainScreenAnimation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: GridView(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 16),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: List<Widget>.generate(
                    areaListData.length,
                    (int index) {
                      final int count = areaListData.length;
                      final Animation<double> animation =
                          Tween<double>(begin: 0.0, end: 1.0).animate(
                        CurvedAnimation(
                          parent: animationController!,
                          curve: Interval((1 / count) * index, 1.0,
                              curve: Curves.fastOutSlowIn),
                        ),
                      );
                      animationController?.forward();
                      return AreaView(
                        area: areaListData[index],
                        animation: animation,
                        animationController: animationController!,
                      );
                    },
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 24.0,
                    crossAxisSpacing: 24.0,
                    childAspectRatio: 1.0,
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

class AreaView extends StatelessWidget {
  const AreaView({
    Key? key,
    this.area,
    this.animationController,
    this.animation,
  }) : super(key: key);

  final Area? area;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation!.value), 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: FitnessAppTheme.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: FitnessAppTheme.grey.withOpacity(0.4),
                      offset: const Offset(1.1, 1.1),
                      blurRadius: 10.0),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  splashColor: FitnessAppTheme.nearlyDarkBlue.withOpacity(0.2),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => area!.destination),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 15),
                        child: SizedBox(
                          width: 85.0,
                          height: 90.0,
                          child: Image.asset(area!.imagePath),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          area!.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: FitnessAppTheme.nearlyDarkBlue,
                          ),
                        ),
                      ),
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

class Area {
  Area({
    required this.imagePath,
    required this.title,
    required this.destination,
  });

  final String imagePath;
  final String title;
  final Widget destination;
}
