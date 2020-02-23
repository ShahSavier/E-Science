import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes2point1 extends StatefulWidget {
  @override
  _Notes2point1State createState() => _Notes2point1State();
}

class _Notes2point1State extends State<Notes2point1> {
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
          "Struktur respirasi manusia",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
        ),
      ),
    ),);

    listViews.add(
      ListTile(
        subtitle: Text(
            "• Pernafasan adalah proses menarik nafas dan menghembus nafas\n\n"
            "• Proses ini dilakukan oleh sistem respirasi manusia\n",
            style: TextStyle(letterSpacing: 0.07),),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset("assets/nota/respirasi.png"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "• Alveolus adalah tempat pertukaran gas berlaku\n\n"
          "• Diafragma mengubah tekanan udara melalui penambahan dan pengurangan isi padu toraks\n\n"
          "• Kapilari darah membawa darah beroksigen dari alveolus dan darah terdeoksigen ke alveolus\n\n"
          "• Rongga hidung memanaskan,melembapkan dan menapis udara yang memasuki tubuh sebelum sampai ke peparu\n\n"
          "• Otot interkostal menaikkan dan menurunkan sangkar rusuk semasa pernafasan\n\n"
          "• Trakea membenarkan laluan udara ke peparu untuk pernafasan\n\n"
          "• Tulang rusuk melindungi peparu\n\n"
          ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Mekanisme pernafasan manusia",
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
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/mekanisme.png"),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset("assets/nota/menarik.png"),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset("assets/nota/menghembus.png"),
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
