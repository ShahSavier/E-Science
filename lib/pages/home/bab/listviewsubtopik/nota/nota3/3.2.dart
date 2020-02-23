import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes3point2 extends StatefulWidget {
  @override
  _Notes3point2State createState() => _Notes3point2State();
}

class _Notes3point2State extends State<Notes3point2> {
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
          "Sistem Peredaran Darah",
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
            "• Sistem pengangkutan khusus yang terdapat pada organisma kompleks adalah sistem peredaran darah\n\n"
            "• Sistem peredaran darah bagi semua haiwan vertebrata, darah sentiasa mengalir dalam salur darah\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Persamaan Sistem Peredaran Darah",
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
            "• Terdiri daripada satu sistem yang membolehkan darah sentiasa mengalir di dalam salur darah\n\n"
            "• Darah mengalir secara berterusan melalui jantung yang mengepam darah ke seluruh badan dan kembali ke jantung\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Perbezaan Sistem Peredaran Darah",
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
        child: Image.asset("assets/nota/peredaran.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("\n\nMamalia/Burung\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            ),),
        subtitle: Text(
          "• 2 bilangan atrium\n\n"
          "• 2 bilangan ventrikel\n\n"
          "• Sistem peredaran ganda dua lengkap\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("\nReptilia/Amfibia\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            ),),
        subtitle: Text(
          "• 2 bilangan atrium\n\n"
          "• 1 bilangan ventrikel\n\n"
          "• Sistem peredaran ganda dua tak lengkap\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("\nIkan\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            ),),
        subtitle: Text(
          "• 1 bilangan atrium\n\n"
          "• 1 bilangan ventrikel\n\n"
          "• Sistem peredaran tunggal\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Struktur Jantung",
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
        child: Image.asset("assets/nota/paru.jpg"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
            "\n• Aorta mengangkut darah beroksigen keluar dari ventrikel kiri ke semua bahagian badan\n\n"
            "• Vena kava mengangkut darah terdeoksigen dari badan ke atrium kanan\n\n"
            "• Arteri pulmonari mengangkut darah terdeoksigen dari ventrikel kanan ke peparu\n\n"
            "• Vena pulmonari mengangkut darah beroksigen dari peparu ke atrium kiri\n\n"
            "• Ventrikel kanan mengepam darah terdeoksigen ke peparu\n\n"
            "• Ventrikel kiri mengepam darah beroksigen ke aorta dan seluruh badan\n\n"
            "• Atrium kanan menerima darah terdeoksigen dari seluruh badan kecuali peparu\n\n"
            "• Atrium kiri menerima darah beroksigen daripada peparu\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Fungsi Arteri, Vena & Kapilari Darah\n\n",
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
        title: Text(
          "Arteri\n",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/paru.jpg"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
            "\n• Membawa darah beroksigen keluar dari jantung ke seluruh badan kecuali arteri pulmonari\n\n"
            "• Dinding yang tebal dan kurang berotot untuk menampung tekanan darah yang tinggi\n\n"
            "• Saiz lumen yang kecil\n\n"
            "• Tiada injap\n\n"
            "• Mempunyai denyutan nadi\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Vena\n",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/paru.jpg"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
            "\n• Membawa darah terdeoksigen kembali ke jantung dari seluruh badan kecuali vena pulmonari\n\n"
            "• Dinding yang nipis, kurang kenyal dan kurang berotot untuk menampung tekanan darah yang rendah\n\n"
            "• Saiz lumen yang besar\n\n"
            "• Ada injap\n\n"
            "• Tiada denyutan nadi\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Kapilari\n",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/paru.jpg"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "\n• Membawa darah dari arteri ke vena\n\n"
          "• Dinding yang setebal satu sel\n\n"
          "• Saiz lumen yang sangat kecil\n\n"
          "• Tiada injap\n\n"
          "• Tiada denyutan nadi\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Sistem Peredaran Darah Manusia",
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
        child: Image.asset("assets/nota/paru.jpg"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
            "Terdapat 2 jenis sistem peredaran darah:\n",
            style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
            "• Sistem peredaran pulmonari\n",
            style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
        subtitle: Text(
          "- Sistem peredaran pulmonari membawa darah terdeoksigen dari jantung ke peparu dan mengembalikan darah beroksigen kembali ke jantung\n\n"
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
            "• Sistem peredaran sistemik\n",
            style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
        subtitle: Text(
          "- Sistem peredaran sistemik membawa darah beroksigen dari jantung ke bahagian badan dan mengembalikan darah terdeoksigen kembali ke jantung\n\n"
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
