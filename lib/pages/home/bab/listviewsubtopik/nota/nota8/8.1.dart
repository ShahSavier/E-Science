import 'package:flutter/material.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes8point1 extends StatefulWidget {
  @override
  _Notes8point1State createState() => _Notes8point1State();
}

class _Notes8point1State extends State<Notes8point1> {
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
          "Wilhelm Conrad Roentgen ",
        ),
        subtitle: Text(
          "• Menemukan sinar-X\n\n",
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
          "Antoine Henri Becquerel",
        ),
        subtitle: Text(
          "• Menemukan keradioaktifan melalui penyiasatan terhadap uranium\n\n"
          "• Menghasilkan pancaran yang menghitamkan plat fotografi\n\n",
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
          "Marie dan Pierre Curie",
        ),
        subtitle: Text(
          "• Mengesan pancaran radioaktif melalui kuasa pengionannya\n\n"
          "• Mengestrak elemen polonium dan radium daripada bijih uranium\n\n",
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
            "• Maksud keradioaktifan adalah proses pereputan secara spontan bagi nukleus yang tidak stabil dengan memancarkan sinaran radioaktif\n"
            ),
      ),
    );

   listViews.add(
      ListTile(
        title: Text(
          "Contoh bahan radioaktif"
        ),
        subtitle: Text(
          "• Karbon-14\n\n"
          "• Torium-234\n\n"
          "• Uranium-235\n\n"
          "• Radon-222\n",
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
        child: Image.asset("assets/nota/prosesx.png"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
            "Proses X : Pereputan radioaktif\n"
            ),
      ),
    );

    listViews.add(
      ListTile(
        title: Text(
          "3 jenis sinaran radioaktif yang terpancar dari proses X :"
        ),
        subtitle: Text(
          "• Sinar alfa, α\n\n"
          "• Sinar gama, γ\n\n"
          "• Sinar beta, β\n",
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
