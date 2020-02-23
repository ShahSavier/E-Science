import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes4point1 extends StatefulWidget {
  @override
  _Notes4point1State createState() => _Notes4point1State();
}

class _Notes4point1State extends State<Notes4point1> {
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
          "Kepelbagaian Bentuk Mineral Dalam Kerak Bumi\n",
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
            "• Wujud secara semula jadi dalam bentuk unsur atau sebatian pepejal\n\n"
            "• Mineral mempunyai struktur hablur dan komposisi kimia yang tertentu\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Mineral yang terdapat dalam kerak bumi",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Mineral unsur\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),),
        subtitle: Text("• Kuprum\n\n"
            "• Berlian\n\n"
            "• Emas\n\n"
            "• Perak\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Mineral sebatian\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),),
        subtitle: Text("• Bauksit\n\n"
            "• Galena\n\n"
            "• Hemit\n\n"
            "• Kasiterit\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Nama saintifik dan gabungan unsur",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Hematit\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),),
        subtitle: Text(
          "• Nama saintifik adalah Ferum(III) oksida\n\n"
          "• Gabungan unsur adalah ferum dan oksigen\n"),
      ),
    );

    listViews.add(ListTile(
      title: Text("Kasiterit\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),),
      subtitle: Text(
        "• Nama saintifik adalah Stanum(IV) oksida\n\n"
        "• Gabungan unsur adalah stanum dan oksigen\n"),
    ));

    listViews.add(
      ListTile(
        title: Text("Kuarza\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),),
        subtitle: Text(
          "• Nama saintifik adalah Silikon dioksida\n\n"
          "• Gabungan unsur adalah silikon dan oksigen\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Galena\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),),
        subtitle: Text(
          "• Nama saintifik adalah Plumbum(II) sulfida\n\n"
          "• Gabungan unsur adalah plumbum dan sulfur\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Kalsit\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),),
        subtitle: Text(
          "• Nama saintifik adalah Kalsium karbonat\n\n"
          "• Gabungan unsur adalah kalsium, karbon dan oksigen\n"),
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
