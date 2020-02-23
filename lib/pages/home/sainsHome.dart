import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:sains/pages/home/bab/bab1.dart';
import 'package:sains/pages/home/bab/bab10.dart';
import 'package:sains/pages/home/bab/bab2.dart';
import 'package:sains/pages/home/bab/bab3.dart';
import 'package:sains/pages/home/bab/bab4.dart';
import 'package:sains/pages/home/bab/bab5.dart';
import 'package:sains/pages/home/bab/bab6.dart';
import 'package:sains/pages/home/bab/bab7.dart';
import 'package:sains/pages/home/bab/bab8.dart';
import 'package:sains/pages/home/bab/bab9.dart';
import 'package:sains/theme/designCourseAppTheme.dart';

class DesignCourseHomeScreen extends StatefulWidget {
  @override
  _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
}

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen>
    with TickerProviderStateMixin {
  Animation animation, delayedAnimation, muchDelayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Curves.fastOutSlowIn, parent: animationController));

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Interval(0.2, 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController));
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        Widget imageSliderCarousel = Container(
          height: 130, //height carousel
          child: Transform(
            transform: Matrix4.translationValues(
                delayedAnimation.value * width, 0.0, 0.0),
            child: Carousel(
              boxFit: BoxFit.contain,
              images: [
                AssetImage('assets/design_course/research.png'),
                AssetImage('assets/design_course/chemistry.png'),
                AssetImage('assets/design_course/satellite.png'),
                AssetImage('assets/design_course/heart.png'),
              ],
              dotSize: 4.0,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(seconds: 1),
              indicatorBgPadding: 6.0,
              borderRadius: true,
            ),
          ),
        );
        return WillPopScope(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).padding.top,
                ),
                getAppBarUI(),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        imageSliderCarousel,
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            child: Transform(
                          transform: Matrix4.translationValues(
                              animation.value * width, 0.0, 0.0),
                          child: GridView.count(
                            physics: BouncingScrollPhysics(),
                            crossAxisCount: 2,
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab1()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/scared.png'),
                                          fit: BoxFit.fitHeight),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 68),
                                        child: Text("Bab 1",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab2()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/breathe.png'),
                                          fit: BoxFit.fitHeight),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 68),
                                        child: Text("Bab 2",
                                        style: TextStyle(
                                          fontWeight:FontWeight.w700,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab3()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/blood.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 65),
                                        child: Text("Bab 3",
                                        style: TextStyle(
                                          fontWeight:FontWeight.w700,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab4()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/metal.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 68),
                                        child: Text("Bab 4",
                                        style: TextStyle(
                                          fontWeight:FontWeight.w700,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab5()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/thermometer.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 65),
                                        child: Text("Bab 5",
                                        style: TextStyle(
                                          fontWeight:FontWeight.w700,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab6()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/solar.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 65),
                                        child: Text("Bab 6",
                                        style: TextStyle(
                                          fontWeight:FontWeight.w700,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab7()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/gravity.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 68),
                                        child: Text("Bab 7",
                                        style: TextStyle(
                                          fontWeight:FontWeight.w700,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab8()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/fusion.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 65),
                                        child: Text("Bab 8",
                                        style: TextStyle(
                                          fontWeight:FontWeight.w700,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab9()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/orbit.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 68),
                                        child: Text("Bab 9",
                                        style: TextStyle(
                                          fontWeight:FontWeight.w700,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bab10()));
                                },
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/iconbab/gps.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Transform.translate(
                                      offset: Offset(50, -50),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 50, vertical: 68),
                                        child: Text("Bab 10",
                                        style: TextStyle(
                                          fontWeight:FontWeight.w700,
                                          fontSize: 16,
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          onWillPop: () => showDialog<bool>(
            context: context,
            builder: (c) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              title: Text('Keluar dari aplikasi ini'),
              content: Text('Adik pasti?'),
              actions: [
                FlatButton(
                  child: Text(
                    'Tidak',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () => Navigator.pop(c, false),
                ),
                FlatButton(
                  child: Text(
                    'Ya',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () => SystemNavigator.pop(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget getAppBarUI() {
    final double width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Transform(
                  transform: Matrix4.translationValues(
                      animation.value * width, 0.0, 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Selamat Datang",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          letterSpacing: 0.25,
                          color: DesignCourseAppTheme.darkerText,
                        ),
                      ),Text(
                        "Nota Sains Tingkatan 3",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          letterSpacing: 0.27,
                          //color: DesignCourseAppTheme.darkerText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(
                    animation.value * width, 0.0, 0.0),
                child: Container(
                  width: 40,
                  height: 40,
                  child: Image.asset('assets/icons/smkay.png'),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}