import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/constants.dart';
import 'package:whatsapp_clone/shared/customText.dart';
import 'package:whatsapp_clone/views/Calls/callScreen.dart';
import 'package:whatsapp_clone/views/Chat/chatScreen.dart';
import 'package:whatsapp_clone/views/Status/status.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Builder(builder: (BuildContext context) {
        final int index = DefaultTabController.of(context).index;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: semiDark,
            bottom: const TabBar(
              indicatorColor: brand,
              indicatorWeight: 4,
              tabs: [
                Tab(
                  child: CustomText(
                    text: "CHATS",
                    size: 14,
                    color: Colors.white60,
                    weight: FontWeight.bold,
                  ),
                ),
                Tab(
                  child: CustomText(
                    text: "STATUS",
                    size: 14,
                    color: Colors.white60,
                    weight: FontWeight.bold,
                  ),
                ),
                Tab(
                  child: CustomText(
                    text: "CALLS",
                    size: 14,
                    color: Colors.white60,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            title: const CustomText(
              text: "WhatsApp",
              size: 20,
              color: white,
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search, color: white.withOpacity(0.7)),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert, color: white.withOpacity(0.7)),
                onPressed: () {},
              )
            ],
          ),
          body: const TabBarView(
            children: [
              ChatWidget(),
              Statuswidget(),
              CallWidget(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: brand,
              onPressed: () {},
              child: index == 0
                  ? Icon(
                      Icons.message,
                      color: white,
                    )
                  : Icon(
                      Icons.wallet_giftcard,
                      color: white,
                    )),
        );
      }),
    );
  }
}
