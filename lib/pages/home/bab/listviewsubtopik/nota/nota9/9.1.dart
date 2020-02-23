import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes9point1 extends StatefulWidget {
  @override
  _Notes9point1State createState() => _Notes9point1State();
}

class _Notes9point1State extends State<Notes9point1> {
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
          "Ciri-ciri dan struktur Matahari",
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
          "• Matahari merupakan bebola gas yang membara\n\n"
          "• Matahari mengandungi plasma yang mengalirkan arus elektrik\n\n"
          "• Lapisan kromosfera dan korona hanya boleh dilihat pada waktu gerhana matahri penuh\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Fenomena di permukaan Matahari",
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
        child: Image.asset("assets/nota/granul.png", height: 250),
        
      ),
    );

    listViews.add(
      ListTile(
        title: Text("\nCiri-ciri Granul (Granules)\n\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
        subtitle: Text(
          "• Kelihatan berbutir\n\n"
          "• Plasma yang sangat panas dengan suhu setinggi 5800°C\n\n"
          "• Diameter purata bagi granul ialah lebih kurang 1000 kilometer\n\n"
          "• Bahagian atas zon perolakan\n\n",
      ),
    ),);

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/tompok.png", height: 250),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("\nCiri-ciri Tompok Matahari (Sunspots)\n\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
        subtitle: Text(
          "• Kawasan gelap yang kelihatan pada permukaan Matahari\n\n"
          "• Kawasan ini lebih sejuk berbanding dengan kawasan di sekelilingnya yang terdiri daripada granul\n\n"
          "• Merupakan lokasi letupan yang amat besar di fotosfera\n\n"
          "• Wujud dan lenyap mengikut pusingan 11 tahun yang dikenali sebagai kitaran suria\n",
        ),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/semarak.png", height: 250),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("\nCiri-ciri Semarak Suria (Prominences)\n\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
        subtitle: Text(
          "• Berbentuk gelungan yang sangat besar atau lajur melengkung\n\n"
          "• Terdiri daripada gas menyala di sebelah atas tompok Matahari\n\n"
          "• Dapat mencapai ketinggian beratus-ratus ribu kilometer\n\n"
          "• Kekal selama beberapa hari atau beberapa bulan\n",
          ),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/suria.png", height: 250),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("\nCiri-ciri Nyalaan Suria (Solar Flare)\n\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
        subtitle: Text(
          "• Berbentuk lajur yang terdiri daripada gas bercas yang banyak meletus daripada Matahari\n\n"
          "• Kerap berlaku berdekatan dengan tompok Matahari\n\n"
          "• Merupakan letusan gas yang kuat dan hebat\n\n"
          "• Menghasilkan cahaya warna-warni di langit di kawasam kutub yang dikenali sebagai aurora\n"
        ),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/korona.png", height: 250),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("\nCiri-ciri Lentingan Jisim Korona \n(Coronal Mass Ejections)\n\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
        subtitle: Text(
          "• Berbentuk awan yang besar yang terdiri daripada plasma\n\n"
          "• Merupakan letusan zarah gas yang bermagnet\n\n"
          "• Kerap berlaku bersama dengan nyalaan suria yang besar\n\n"
          "• Mampu sampai ke Bumi dalam masa tiga hari\n"
        ),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/angin.png", height: 250),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("\nCiri-ciri Angin Suria (Solar Wind)\n\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
        subtitle: Text(
          "• Terdiri daripada zaraah-zarah dalam plasma seperti elektron, proton dan zarah alfa yang meletus dari Matahari ke angkasa lepas bergerak bersama-sama dengan kelajuan yang tinggi\n\n"
          "• Membawa bersama medan magnet antara planet. Kelajuannya adalah supersonik dengan nilai antara 250km s-1 hingga 750km s-1\n\n"
          "• Kelajuan, suhu dan ketumpatanmya berubah-ubah sepanjang lintasan pergerakannya\n\n"
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
