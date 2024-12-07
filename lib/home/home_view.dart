import 'package:devil/base/app_colors.dart';
import 'package:devil/base/app_font.dart';
import 'package:devil/base/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

var key1 = GlobalKey();
var key2 = GlobalKey();
var key3 = GlobalKey();
var key4 = GlobalKey();
var key5 = GlobalKey();
var key6 = GlobalKey();
bool onHover = false;

double aniContWidth = 0.0;
double aniContPosition = 0.0;

Supabase supabaseInstance = Supabase.instance;


class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      //List <FileObject> StoredList = await supabaseInstance.client.storage.from("resume").list(path: );
      print("StroredLIst : ${StoredList.length}");
    });




  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          leading: Text(
            "AR",
            style: TextStyle(
                color: AppColors.secondaryColor,
                fontSize: 30,
                fontWeight: FontWeight.w900,
                letterSpacing: 3),
          ),
          forceMaterialTransparency: false,
          backgroundColor: AppColors.primaryColor,
          flexibleSpace: Center(
            child: AppWidgets().AppBarWidget(),
          ),
        ),
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 8,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          AppWidgets().commonTemplate(
                              key: key1,
                              context: context,
                              childWidget: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                //crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Row(
                                    //crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Text("I'M",
                                            style: TextStyle(
                                              fontFamily:
                                                  AppFont.titilliumWebSemiBold,
                                              letterSpacing:
                                                  1, /*color: AppColors.appWhite*/
                                            )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Text(
                                          "PRAGATHISH AR",
                                          style: TextStyle(
                                              fontFamily:
                                                  AppFont.titilliumWebBlack,
                                              letterSpacing: 1,
                                              backgroundColor:
                                                  AppColors.secondaryColor,
                                              color: AppColors.primaryColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Mobile Application Developer",
                                          style: TextStyle(
                                              fontFamily:
                                                  AppFont.titilliumWebSemiBold,
                                              letterSpacing: 1,
                                              fontSize: 40,
                                              color: AppColors.appWhite)),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: AppWidgets().clickbleWidget(
                                        btnAction: () {},
                                        childWidget: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                              border: Border.all(
                                                  color:
                                                      AppColors.secondaryColor,
                                                  style: BorderStyle.solid,
                                              width: 2.5, ),
                                          borderRadius: BorderRadius.all(Radius.circular(5))),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:15.0, right: 15,top: 10, bottom: 10),
                                            child: Text("Resume",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 4,
                                                    color: AppColors
                                                        .secondaryColor)),
                                          ),
                                        )),
                                  )
                                ],
                              )),
                          AppWidgets().commonTemplate(
                            key: key2,
                            context: context,
                            childWidget: Text(
                              "About",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          AppWidgets().commonTemplate(
                            key: key3,
                            context: context,
                            childWidget: Text(
                              "Service",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 1, child: Container())
              ],
            ),

            ///NEED LOGO
            Visibility(
              visible: false,
              child: Positioned(
                  top: 20,
                  left: MediaQuery.of(context).size.width * 0.05,
                  child: Text(
                    "AR",
                    style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3),
                  )),
            ),

            ///APP BAR
            Visibility(
              visible: false,
              child: Positioned(
                top: 20,
                left: 0,
                right: 0,
                child: AppWidgets().AppBarWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*Column(
                                  children: [
                                    SizedBox(height: 100,),
                                    Padding(
                                      padding: const EdgeInsets.only(top:25.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [BoxShadow(blurRadius: 30, color: Colors.white, spreadRadius: 0)]),
                                            child: CircleAvatar(
                                                radius: 150,
                                                child: Image.asset("assets/png/me.png")
                                            ),
                                          )
                                        ],
                                      ),
                                    )

                                  ],
                                ),*/
