


import 'package:flutter/material.dart';
import 'package:meddronexx/organ/screens/home_screen.dart';
import 'package:meddronexx/src/models/tabIcon_data.dart';
import 'package:meddronexx/src/training/training_screen.dart';
import 'bottom_navigation_view/bottom_bar_view.dart';
import 'fitness_app_theme.dart';
import 'my_diary/my_diary_screen.dart';

class Meddronex extends StatefulWidget {
  @override
  _MeddronexState createState() => _MeddronexState();
}

class _MeddronexState extends State<Meddronex> with TickerProviderStateMixin {
  late AnimationController animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: FitnessAppTheme.background,
  );

  @override
  void initState() {
    super.initState();

    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);

    tabBody = MyDiaryScreen(animationController: animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FitnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          changeIndex: (int index) {
            if (index == 0) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) return;
                setState(() {
                  tabBody = MyDiaryScreen(animationController: animationController);
                });
              });
            }
             else if (index == 1) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) return;
                setState(() {
                  tabBody = TrainingScreen(animationController: animationController);
                });
              });
            } 
            else if (index == 2) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) return;
                setState(() {
                  tabBody = OrganListScreen();
                });
              });
            }
          },
        ),
      ],
    );
  }
}
