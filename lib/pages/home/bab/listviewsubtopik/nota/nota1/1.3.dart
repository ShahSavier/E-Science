import 'package:flutter/material.dart';
import 'package:sains/theme/sainsAppTheme.dart';

class Notes1point3 extends StatefulWidget {
  @override
  _Notes1point3State createState() => _Notes1point3State();
}

class _Notes1point3State extends State<Notes1point3> {
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
        title: Text("Apakah Tropisme ? \n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            letterSpacing: 0.27,
            ),),
        subtitle: Text(
            "• Tropisme ialah gerak balas terarah tumbuhan terhadap rangsangan\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Tropisme mempunyai 2 jenis:\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            ),),
        subtitle: Text(
          "• Tropisme positif\n\n"
          "• Tropisme negatif\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("Tropisme Positif\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: 0.27,
            ),),
        subtitle: Text(
            "• Tropisme positif adalah bahagian tumbuhan yang tumbuh ke arah rangsangan manakala tropisme negatif adalah bahagian tumbuhan yang tumbuh menjauhi rangsangan\n\n"),
      ),
    );

    listViews.add(
      ListTile(
        title: Text("3 jenis rangsangan bagi gerak balas nastik:\n",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.27,
            ),),
        subtitle: Text(
          "• Fotonastik\n\n"
          "• Termonastik\n\n"
          "• Seismonastik\n\n"
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
