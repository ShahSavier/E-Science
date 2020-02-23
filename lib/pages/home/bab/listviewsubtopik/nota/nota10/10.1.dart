import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes10point1 extends StatefulWidget {
  @override
  _Notes10point1State createState() => _Notes10point1State();
}

class _Notes10point1State extends State<Notes10point1> {
  List<Widget> listViews = List<Widget>();
  var scrollController = ScrollController();
  double topBarOpacity = 0.0;

  @override
  void initState() {
    addAllListData();

    scrollController.addListener(() {
      if (scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          setState(() {
            topBarOpacity = 1.0;
          });
        }
      } else if (scrollController.offset <= 24 &&
          scrollController.offset >= 0) {
        if (topBarOpacity != scrollController.offset / 24) {
          setState(() {
            topBarOpacity = scrollController.offset / 24;
          });
        }
      } else if (scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          setState(() {
            topBarOpacity = 0.0;
          });
        }
      }
    });
    super.initState();
  }

  void addAllListData() {
    listViews.add(
      ListTile(
        title: Text(
          "Perkembangan sejarah model Sistem Suria",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
            "• Ptolemy merupaka seorang ahli astronomi, astrologi dan geografi Yunani yang mmebina model geosentrik\n\n"
            "• Copernicus membina model heliosentrik dengan Matahri pada pusat dan orbit yang membulat\n\n"
            "• Model yang dibina oleh Copernicus telah diubah suai oleh Kepler dengan menggnakan Hukum Kepler\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Model Geosentrik",
        textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/geosentrik.png", height: 200),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "• Bumi sebagai pusat Sistem Suria\n\n"
          "• Bumi berkeadaan pegun manakala Matahari dan planet lain mengorbit mengelilingi Bumi dalam orbit yang membulat\n\n"
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Model Heliosentrik",
        textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/heliosentrik.png", height: 200),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "• Matahari sebagai pusat Sistem Suria\n\n"
          "• Bumi berputar pada paksinya dan beredar mengelilingi Matahri dalam orbit membulat\n\n"
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Model Kepler",
        textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/kepler.png", height: 200),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "• Model heliosentrik yang diubah suai dengan Hukum Kepler.\n\n"
          "• Mengubah suai model heliosentrik dengan Matahari pada titik fokus sepunya pada orbit elips planet mengikut Hukum Kepler.\n"
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FintnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            getMainListViewUI(),
            getAppBarUI(),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            )
          ],
        ),
      ),
    );
  }

  Widget getMainListViewUI() {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SizedBox();
        } else {
          return ListView.builder(
              controller: scrollController,
              padding: EdgeInsets.only(
                top: AppBar().preferredSize.height +
                    MediaQuery.of(context).padding.top +
                    24,
                bottom: 62 + MediaQuery.of(context).padding.bottom,
              ),
              itemCount: listViews.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return listViews[index];
              });
        }
      },
    );
  }

  Widget getAppBarUI() {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: FintnessAppTheme.white.withOpacity(topBarOpacity),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32.0),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: FintnessAppTheme.grey.withOpacity(0.4 * topBarOpacity),
                  offset: Offset(1.1, 1.1),
                  blurRadius: 10.0)
            ],
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 10,
                    right: 16,
                    top: 16 - 8.0 * topBarOpacity,
                    bottom: 12 - 8.0 * topBarOpacity),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 38,
                      width: 38,
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: FintnessAppTheme.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
