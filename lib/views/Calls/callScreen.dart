import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helper/data.dart';
import 'package:whatsapp_clone/shared/constants.dart';
import 'package:whatsapp_clone/shared/customText.dart';

class CallWidget extends StatefulWidget {
  const CallWidget({Key key}) : super(key: key);

  @override
  _CallWidgetState createState() => _CallWidgetState();
}

class _CallWidgetState extends State<CallWidget> {
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
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: call.length,
                  itemBuilder: (_, int index) {
                    return _buildCallList(
                      index: index,
                      image: call[index].image,
                      name: call[index].name,
                      time: call[index].time,
                      leftIcon: call[index].leftIcon,
                      rightIcon: call[index].rightIcon,
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildCallList(
      {int index,
      String name,
      IconData leftIcon,
      IconData rightIcon,
      String time,
      String image}) {
    return Container(
      height: 90,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: brand,
                radius: 30,
              ),
              Positioned(
                top: 4,
                left: 4,
                right: 4,
                bottom: 4,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/$image"),
                  radius: 30,
                ),
              )
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 14,
                ),
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
                          Row(
                            children: [
                              Icon(leftIcon, color: Colors.red, size: 12,),
                              SizedBox(width: 2,),
                              CustomText(
                                  text: time,
                                  size: 14,
                                  color: white.withOpacity(0.7)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Icon(rightIcon, color: white.withOpacity(0.7),),
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
