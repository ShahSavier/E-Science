import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes2point5 extends StatefulWidget {
  @override
  _Notes2point5State createState() => _Notes2point5State();
}

class _Notes2point5State extends State<Notes2point5> {
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
          "Pertukaran gas dalam daun semasa fotosintesis",
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
      Padding(
        padding: const EdgeInsets.all(50.0),
        child: Image.asset("assets/nota/sel.png"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
            "• Apabila karbon dioksida digunakan dalam proses fotosintesis, kepekatan karbon dioksida dalam sel menjadi lebih rendah berbanding ruang udara antara sel\n\n"
            "• Perbezaan kepekatan membolehkan karbon dioksida meresap dari ruang udara antara sel ke dalam sel\n\n"
            "• Kepekatan karbon dioksida dalam ruang udara antara sel lebih rendah berbanding di luar stoma\n\n"
            "• Gas karbon dioksida dari atmosfera meresap ke dalam ruang udara antara sel melalui liang stoma\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Stoma daun",
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
        child: Image.asset("assets/nota/stoma.png"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "• Stoma adalah liang seni pada epidermis daun\n\n"
          "• Stoma membolehkan pertukaran gas berlaku dan membenarkan wap air dibebaskan daripada tumbuhan\n\n"
          "• Sel pengawal mengawal pembukaan dan penutupan liang stoma\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Stoma terbuka dan tertutup",
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
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Image.asset("assets/nota/stoma2.png"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
            "• Stoma terbuka menjalankan proses fotosintesis apabila ada cahaya\n\n"
            "• Stoma tertutup berlaku ketika gelap dan tumbuhan akan kehilangan banyak air ketika panas\n"),
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
