import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helper/data.dart';
import 'package:whatsapp_clone/shared/constants.dart';
import 'package:whatsapp_clone/shared/customText.dart';

class Statuswidget extends StatefulWidget {
  const Statuswidget({Key key}) : super(key: key);

  @override
  _StatuswidgetState createState() => _StatuswidgetState();
}

class _StatuswidgetState extends State<Statuswidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: brandBody,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 85,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/home_2.jpeg"),
                          radius: 30,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: brand,
                            child: Icon(Icons.add, color: white, size: 14,),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 12,),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // SizedBox(height: ,),
                          CustomText(text: "My status", size: 18, color: white),
                          SizedBox(
                            height: 2,
                          ),
                          CustomText(
                              text: "Tap to status update",
                              size: 14,
                              color: white.withOpacity(0.7)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: CustomText(
                      text: "Recent updates",
                      size: 14,
                      color: white.withOpacity(0.7))),
              SizedBox(
                height: 8,
              ),
              Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: status.length,
                  itemBuilder: (_, int index) {
                    return _buildChatList(
                        index: index,
                        image: status[index].image,
                        name: status[index].name,
                        time: status[index].time);
                  },
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildChatList({int index, String name, String time, String image}) {
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
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12,),
                CustomText(text: name, size: 18, color: white),
                SizedBox(
                  height: 2,
                ),
                CustomText(text: time, size: 14, color: white.withOpacity(0.7)),
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
