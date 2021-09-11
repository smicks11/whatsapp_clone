import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helper/data.dart';
import 'package:whatsapp_clone/shared/constants.dart';
import 'package:whatsapp_clone/shared/customText.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({Key key}) : super(key: key);

  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: brandBody,
        child: SingleChildScrollView(
          child: Container(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: chatContents.length,
              itemBuilder: (_, int index) {
                return _buildChatList(
                    index: index,
                    image: chatContents[index].image,
                    name: chatContents[index].name,
                    message: chatContents[index].message,
                    notification: chatContents[index].notification,
                    time: chatContents[index].time);
              },
            ),
          ),
        ));
  }

  Widget _buildChatList(
      {int index,
      String name,
      String message,
      String notification,
      String time,
      String image}) {
    return Container(
      height: 85,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/$image"),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 14,),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: name, size: 18, color: white),
                          SizedBox(
                            height: 2,
                          ),
                          CustomText(
                              text: message,
                              size: 14,
                              color: white.withOpacity(0.7))
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(text: time, size: 12, color: brand),
                        SizedBox(
                          height: 2,
                        ),
                        CircleAvatar(
                          backgroundColor: brand,
                          radius: 10,
                          child: CustomText(
                              text: notification, size: 10, color: black),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: white.withOpacity(0.7),
                  thickness: 0.1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
