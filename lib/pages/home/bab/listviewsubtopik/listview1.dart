import 'package:sains/main.dart';
import 'package:sains/pages/home/bab/listviewsubtopik/nota/nota1/1.1.dart';
import 'package:sains/pages/home/bab/listviewsubtopik/nota/nota1/1.2.dart';
import 'package:sains/pages/home/bab/listviewsubtopik/nota/nota1/1.3.dart';
import 'package:sains/pages/home/bab/listviewsubtopik/nota/nota1/1.4.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:flutter/material.dart';

class Listview1 extends StatefulWidget {
  @override
  _Listview1State createState() => _Listview1State();
}

class _Listview1State extends State<Listview1> with TickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        height: 134,
        width: double.infinity,
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return SizedBox();
            } else {
              return ListView(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 0, right: 16, left: 16),
                scrollDirection: Axis.horizontal,
               
                children: <Widget>[
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Notes1()));
                    },
                    child: SizedBox(
                      width: 280,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 48,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: new BoxDecoration(
                                      color: HexColor("#F8FAFB"),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0)),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 48 + 24.0,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 16),
                                                  child: Text(
                                                    "1.1\nSistem Saraf Manusia",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      letterSpacing: 0.27,
                                                      color:
                                                          DesignCourseAppTheme
                                                              .darkText,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SizedBox(),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 16, bottom: 8),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 24, left: 16),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                            "assets/design_course/interFace1.png")),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Notes1point2()));
                    },
                    child: SizedBox(
                      width: 280,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 48,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: new BoxDecoration(
                                      color: HexColor("#F8FAFB"),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0)),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 48 + 24.0,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 16),
                                                  child: Text(
                                                    "1.2\nRangsangan dan Gerak Balas Dalam Manusia",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      letterSpacing: 0.27,
                                                      color:
                                                          DesignCourseAppTheme
                                                              .darkText,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SizedBox(),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 16, bottom: 8),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 24, left: 16),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                            "assets/design_course/interFace1.png")),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Notes1point3()));
                    },
                    child: SizedBox(
                      width: 280,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 48,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: new BoxDecoration(
                                      color: HexColor("#F8FAFB"),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0)),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 48 + 24.0,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 16),
                                                  child: Text(
                                                    "1.3\nRangsangan dan Gerak Balas Dalam Tumbuhan",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      letterSpacing: 0.27,
                                                      color:
                                                          DesignCourseAppTheme
                                                              .darkText,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SizedBox(),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 16, bottom: 8),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 24, left: 16),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                            "assets/design_course/interFace1.png")),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Notes1point4()));
                    },
                    child: SizedBox(
                      width: 280,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 48,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: new BoxDecoration(
                                      color: HexColor("#F8FAFB"),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0)),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 48 + 24.0,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 16),
                                                  child: Text(
                                                    "1.4\nKepentingan Gerak Balas Terhadap Rangsangan Dalam Haiwan Lain",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      letterSpacing: 0.27,
                                                      color:
                                                          DesignCourseAppTheme
                                                              .darkText,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: SizedBox(),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 16, bottom: 8),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, bottom: 24, left: 16),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    child: AspectRatio(
                                        aspectRatio: 1.0,
                                        child: Image.asset(
                                            "assets/design_course/interFace1.png")),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
  
}
