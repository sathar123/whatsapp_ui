import 'package:flutter/material.dart';
import 'package:whatsapp_ui/camera.dart';
import 'package:whatsapp_ui/chat_view.dart';
import 'package:whatsapp_ui/status_view.dart';

import 'calls_view.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double cameraWidth = Width/24;
    double yourWidth = (Width - cameraWidth)/5;
    yourWidth =95;

    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Colors.teal,
            title: Text('Whatsapp'),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              PopupMenuButton(


                // add icon, by default "3 dot" icon
                // icon: Icon(Icons.book)
                  itemBuilder: (context) {
                    return  [

                      PopupMenuItem<int>(

                        child: Text("New group"),
                      ),

                      PopupMenuItem<int>(

                        child: Text("New broadcast"),
                      ),
                      PopupMenuItem<int>(

                        child: Text("Starred messages"),
                      ),
                      PopupMenuItem<int>(

                        child: Text("Payments"),
                      ),
                      PopupMenuItem<int>(

                        child: Text("Settings"),
                      ),
                    ];

                  }),
            ],
            bottom: TabBar(

                labelPadding: EdgeInsets.symmetric(horizontal:(Width - ( cameraWidth + yourWidth*3))/8),

                isScrollable: true,
                tabs: [
                  Container(
                    child: Tab(icon: Icon(Icons.groups,size: 30,)),
                    width: 25,
                  ),
                  Container(
                    child: Tab(
                      text: "CHATS",
                    ),
                    width: yourWidth,
                  ),
                  Container(
                    child: Tab(
                      text: "STATUS",
                    ),
                    width: yourWidth,
                  ),
                  Container(
                    child: Tab(
                      text: "CALL",
                    ),
                    width: yourWidth,
                  ),


                ]
            ),

          ),
        ];

      }, body: TabBarView(children: [
      Camera_view(),
      Chat_view(),
      Status_view(),
      Calls_view(),
    ]),

        )


    );
  }
}
