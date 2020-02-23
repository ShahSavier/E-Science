import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes10point2 extends StatefulWidget {
  @override
  _Notes10point2State createState() => _Notes10point2State();
}

class _Notes10point2State extends State<Notes10point2> {
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
          "Perkembangan dalam penerokaan angkasa lepas",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 19,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(ListTile(
      title: Text(
        "Abad ke-11\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- China mencipta serbuk letupan dan menggunakan roket primitif dalam pertempuran\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 1609\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Teleskop pertama digunakan dalam bidang astronomi oleh Galileo Galilei\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 1957\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Satelit pertama dilancarkan USSR Sputnik\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 1961\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Manusia pertama di orbit, Yuran Gagarin dalam USSR Vostok 1\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 1969\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Manusia pertama tiba di Bulan, Neil Armstrong menggunakan US Apollo 11\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 1973\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Penerbangan pertama ke Musytari menggunakan US Pioneer 10\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 1981\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Penerbangan pertama kapal angkasa ulang alik US-Columbia\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 1989\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Penerbangan pertama ke Neptun-US Voyager 2\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 1990\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- US melancarkan Teleskop Angkasa Lepas Hubble dari kapal angkasa ulang alik Discovery\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 1996\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Satelit Malaysia iaitu Measat 1 dan Measat 2 dilancarkan\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 2000\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Mikrosatelit Malaysia yang pertama iaitu TiungSAT-1 dilancarkan\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 2002\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Agensi Angkasa Negara (ANGKASA) ditubuhkan\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(ListTile(
      title: Text(
        "Tahun 2011\n",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.darkerText,
        ),
      ),
      subtitle: Text(
        "- Stesen Antarabangsa Angkasa Lepas (ISS) telah siap dibina dengan lengkap\n\n",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    ));

    listViews.add(
      ListTile(
        title: Text(
          "Aplikasi teknologi dalam penerokaan angkasa lepas\n\n",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 19,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "• Sekstan astronomi mengukur altitud bintang\n\n"
          "• Teleskop angkasa Spitzer mengesan aktiviti dalam angkasa lepas yang sangat jauh\n\n"
          "• Teleskop radio mengesan gelombang radio dari angkasa lepas\n",
          style: TextStyle(
            fontSize: 15
            ),
        ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Pelancaran roket",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 19,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),),
        subtitle: Text(
          "• Objek yang dilancarkan oleh roket ke angkasa lepas adalah kapal angkasa, kuar angkasa dan satelit\n\n"
          "• Apabila bahan api dalam roket terbakar, gas yang panas dibebaskan pada kelajuan yang tinggi melalui bahagian bawah roket tersebut\n\n"
          "• Pembebasan gas ini menghasilkan daya yang menolak roket ke atas"
          "• Dua contoh roket yang pernah digunakan untuk menghantar manusia ke angkasa lepas adalah Falco 9 dan Angara 5P\n",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            letterSpacing: 0.27,
          ),
        ),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/satelit.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Satelit"),
        subtitle: Text(
          "• Fungsi satelit untuk mengumpul maklumat cuaca angkasa, keadaan angkasa lepas, penderiaan jauh, telekomunikasi dan pertahanan\n",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            letterSpacing: 0.27,
          ),
        ),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("assets/nota/kuar.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Kuar angkasa"),
        subtitle: Text(
          "• Mengumpulkan maklumat mengenai jasad angkasa yang jauh lalu menghantarnya kembali ke Bumi\n",
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
          "Bidang yang menggunakan teknologi penderiaan jauh untuk mengumpul maklumat",
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
            "• Bidang pertanian untuk mengesan kawasan pembangunan pertanian yang bersesuaian\n\n"
            "• Bidang pertahanan untuk mengesan pencerobohan kapal, pesawat udara dan kenderaan musuh\n\n"
            "• Bidang Geologi mengesan lokasi sumber mineral,susutan jisim dan susutan darat\n\n"
            "• Tahun 1961, manusia pertama di orbit, Yuran Gagarin dalam USSR Vostok 1\n\n"
            "• Tahun 1969, manusia pertama tiba di Bulan, Neil Armstrong menggunakan US Apollo 11\n\n"
            "• Tahun 1973, penerbangan pertama ke Musytari menggunakan US Pioneer 10\n\n"
            "• Tahun 1981, penerbangan pertama kapal angkasa ulang alik US-Columbia\n\n"
            "• Tahun 1989, penerbangan pertama ke Neptun-US Voyager 2\n\n"
            "• Tahun 1990, US melancarkan Teleskop Angkasa Lepas Hubble dari kapal angkasa ulang alik Discovery\n\n"
            "• Tahun 1996, satelit Malaysia iaitu Measat 1 dan Measat 2 dilancarkan\n\n"
            "• Tahun 2000, Mikrosatelit Malaysia yang pertama iaitu TiungSAT-1 dilancarkan\n\n"
            "• Tahun 2002, Agensi Angkasa Negara (ANGKASA) ditubuhkan\n\n"
            "• Tahun 2011, Stesen Antarabangsa Angkasa Lepas (ISS) telah siap dibina dengan lengkap\n\n"),
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
