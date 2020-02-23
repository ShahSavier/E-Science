import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes8point4 extends StatefulWidget {
  @override
  _Notes8point4State createState() => _Notes8point4State();
}

class _Notes8point4State extends State<Notes8point4> {
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
          "Jenis sinaran",
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
        title: Text("Sinaran mengion"),
        subtitle: Text(
          "• Sinaran yang menghasilkan ion positif dan ion negatif apabila melintasi udara\n",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            letterSpacing: 0.27,
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
            "• Perindustrian : Sinar beta digunakan untuk mengawal ketebalan kepingan logam\n\n"
            "• Arkeologi : Karbon-14 digunakan untuk menentukan anggaran usia objek atau bahan purba\n\n"
            "• Pertanian : Fosforus-32 digunakan untuk menentukan kadar penyerapan baja fosfat dalam tumbuhan\n\n"
            "• Pertahanan : Bahan radioaktif digunakan untuk menghasilkan senjata nuklear seperti bom nuklear\n\n"
            "• Pengawetan makanan : Sinar gama digunakan untuk membunuh bakteria dalam makanan sebelum dibungkus dan ditinkan\n\n"
            "• Perubatan : Kobalt-60 digunakan untuk membunuh sel=sel kanser dan membasmi kuman\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Cara kendalikan bahan radioaktif"),
        subtitle: Text(
          "• Simpan bahan radioaktif di dalam bekas plumbum tebal\n\n"
          "• Pakai pakaian perlindungan khas untuk melindungi bahan\n",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            letterSpacing: 0.27,
          ),
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
