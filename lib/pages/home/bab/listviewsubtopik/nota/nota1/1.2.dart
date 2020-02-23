import 'package:flutter/material.dart';
import 'package:sains/theme/designCourseAppTheme.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes1point2 extends StatefulWidget {
  @override
  _Notes1point2State createState() => _Notes1point2State();
}

class _Notes1point2State extends State<Notes1point2> {
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
          "Organ deria: Mata",
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
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/nota/mata.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Bahagian Mata dan Fungsinya\n",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
        subtitle: Text("• Iris mengawal saiz pupil\n\n"
            "• Kanta mata memfokuskan cahaya ke retina\n\n"
            "• Otot silia mengubah ketebalan kanta mata\n\n"
            "• Sklera melindungi dan memberi bentuk kepada mata\n\n"
            "• Kornea membiaskan dan memfokuskan cahaya ke atas retina\n\n"
            "• Pupil mengawal kuantiti cahaya yang masuk ke dalam retina\n\n"
            "• Ligamen penggantung memegang kanta mata pada kedudukannya\n\n"
            "• Konjunktiva membran lutsinar yang melindungi bahagian hadapan sklera\n\n"
            "• Saraf optik menghantar impuls saraf dari retina ke otak untuk ditafsirkan\n\n"
            "• Bintik kuning paling peka kepada cahaya kerana mengandungi banyak fotoreseptor\n\n"
            "• Gelemair dan gelemaca mengekalkan bentuk mata dan mefokuskan cahaya ke atas retina\n\n"
            "• Koroid mencegah pantulan cahaya dan membekalkan nutrien dan oksigen kepada sel-sel mata\n\n"
            "• Retina mengandungi fotoreseptor yang mengesan rangsangan cahaya dan menghasilkan impuls saraf\n\n"
            "• Bintik buta tidak peka terhadap cahaya kerana tiada fotoreseptor dan merupakan tempat keluar bagi semua gentian saraf optik\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Organ deria: Telinga",
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
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/nota/ear.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "3 Bahagian utama telinga, antaranya :-",
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
          "Telinga luar:\n",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
        subtitle: Text(
            "• Salur telinga -> Menghantar gelombang bunyi ke gegendang telinga\n\n"
            "• Cuping telinga -> Mengumpul dan menyalurkan gelombang bunyi ke salur telinga\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Telinga tengah:\n",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
        subtitle: Text(
            "• Jendela bujur -> Memindahkan getaran dari osikel ke koklea\n\n"
            "• Osikel -> Memperkuat getaran bunyi dan menghantarnya ke jendela bujur\n\n"
            "• Tiub Eustachio -> Mengimbangkan tekanan udara pada kedua-dua belah gegendang telinga\n\n"
            "• Gegendang telinga -> Bergetar apabila gelombang bunyi mengenainya dan memindahkan getaran ke osikel\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Telinga dalam:\n",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
        subtitle: Text(
            "• Koklea -> Mengesan dan menukar getaran bunyi kepada impuls saraf\n\n"
            "• Saraf auditori -> Menghantar impuls saraf dari koklea ke otak untuk ditafsirkan\n\n"
            "• Salur separuh bulat -> Mengesan kedudukan kepala dan mengawal keseimbangan badan\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Organ deria: Hidung",
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
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/nota/nose.png"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "• Fungsi sel deria bau untuk menghasilkan impuls saraf\n\n"
          "• Fungsi lapisan mukus untuk melarutkan bahan kimia dalam udara dan merangsang sel deria bau\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Organ deria: Lidah",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
        ),
      ),
    ),);

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/nota/lidah.png"),
      ),
    );

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset("assets/nota/lidah1.png"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
            "• Bintik kecil pada lidah adalah papila yang dilapisi beratus tunas rasa.\n\n"
            "• Reseptor berfungsi mengesan 5 jenis rasa iaitu manis,masin,masam,pahit dan umami.\n\n"
            "• Air liur membantu lidah untuk merangsang reseptor rasa melalui bahan kimia pada makanan yang dilarutkan.\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "Organ deria: Kulit",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,
        ),
      ),
    ),);

    listViews.add(
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/nota/kulit.png"),
      ),
    );

    listViews.add(
      ListTile(
        subtitle: Text(
          "• Reseptor haba mengesan rangsangan panas\n\n"
          "• Reseptor sentuhan mengesan rangsangan sentuhan\n\n"
          "• Reseptor sejuk mengesan rangsangan sejuk\n\n"
          "• Reseptor sakit mengesan rangsangan sakit\n\n"
          "• Reseptor tekanan mengesan rangsangan tekanan\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Terdapat dua lapisan utama kulit:\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            color: DesignCourseAppTheme.darkerText,),),
        subtitle: Text(
          "• Epidermis\n\n"
          "• Dermis\n\n"),
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
