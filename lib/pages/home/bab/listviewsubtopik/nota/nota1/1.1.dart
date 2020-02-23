import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes1 extends StatefulWidget {
  @override
  _Notes1State createState() => _Notes1State();
}

class _Notes1State extends State<Notes1> {
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
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: 1.2,
          child: Image.asset("assets/nota/usus.png"),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Fungsi setiap komponen dalam sistem saraf\n",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
        subtitle: Text(
          "- Otak mengawal semua aktiviti badan\n\n"
          "- Sistem saraf bertindak sebagai pusat kawalan\n\n"
          "- Saraf tunjang mengawal tindakan refleks seperti menarik tangan apabila tersentuh objek panas\n\n"
          "- Sistem saraf periferi menghantar impuls dari organ deria atau reseptor melalui sistem saraf pusat kepada otot atau kelenjar\n"),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListTile(
          title: Text(
            "Tindakan terkawal dan tindakan luar kawal",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Tindakan terkawal\n"),
        subtitle: Text(
            "- Dikawal oleh otak\n\n"
            "- Tindakan yang disedari dan dilakukan mengikut kehendak sendiri\n\n"
            "- Kadar kelajuan penghantaran impuls boleh dilambatkan atau dipercepatkan\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Tindakan luar kawal\n"),
        subtitle: Text(
            "- Dikawal oleh saraf tunjang\n\n"
            "- Tindakan automatik yang berlaku tanpa disedari\n\n"
            "- Kadar kelajuan penghantaran impuls adalah cepat"),
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
