import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes2point4 extends StatefulWidget {
  @override
  _Notes2point4State createState() => _Notes2point4State();
}

class _Notes2point4State extends State<Notes2point4> {
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
          "Respirasi dalam organisma lain",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Ciri-ciri struktur respirasi dalam organisma lain:\n",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
        subtitle: Text(
          "• Permukaan yang lembap\n\n"
          "• Struktur respirasi yang nipis\n\n"
          "• Luas permukaan struktur respirasi yang besar\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Kulit luar lembap - Amfibia\n",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset("assets/nota/katak.png"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "• Katak adalah amfibia\n\n"
          "• Pertukaran gas berlaku melalui kulit luar lembap dan peparu\n\n"
          "• Struktur respirasi yang lembap memudahkan gas respirasi melarut dan meresap\n\n"
          "• Jaringan kapilari darah yang padat meningkatkan kadar resapan gas antara kulit dengan kapilari darah\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Insang - Ikan",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset("assets/nota/ikan.png"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
            "• Ikan mempunyai struktur respirasi khusus iaitu insang\n\n"
            "• insang membolehkan pertukaran gas dilakukan di dalam air\n\n"
            "• Mempunyai bilangan filamen dan plat nipis yang dipanggil lamela\n\n"
            "• Fungsi lamela untuk menghasilkan luas permukaan yang besar dan memudahkan pertukaran gas berlaku\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Trakea - Serangga",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(50.0),
        child: Image.asset("assets/nota/belalang.png"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "• Sistem respirasi serangga ialah sistem trakea\n\n"
          "• Udara masuk atau keluar dari trakea melalui spirakel yang dikawal oleh injap\n\n"
          "• Trakea dibahagikan kepada trakeol yang mempunyai dinding yang nipis,lembap dan bilangan yang banyak\n"),
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
