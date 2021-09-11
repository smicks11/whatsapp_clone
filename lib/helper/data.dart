import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/callModel.dart';
import 'package:whatsapp_clone/models/chatModelLayout.dart';
import 'package:whatsapp_clone/models/statusModel.dart';

List<ChatLayoutModel> chatContents = [
  ChatLayoutModel(
      name: "James",
      message: "Send it to me",
      notification: "4",
      time: "12:24",
      image: "home_2.jpeg"),
  ChatLayoutModel(
      name: "Titi 💙",
      message: "Ask him please",
      notification: "2",
      time: "12:24",
      image: "bg_smile.png"),
  ChatLayoutModel(
      name: "Olumide",
      message: "Can it get delievered?",
      notification: "4",
      time: "12:24",
      image: "james.jpeg"),
  ChatLayoutModel(
      name: "Tems 🥰",
      message: "💙",
      notification: "4",
      time: "12:24",
      image: "home_2.jpeg"),
  ChatLayoutModel(
      name: "James",
      message: "Ask him please",
      notification: "1",
      time: "12:24",
      image: "bg_smile.png"),
  ChatLayoutModel(
      name: "Olumide",
      message: "⚡🤲🔥",
      notification: "4",
      time: "12:24",
      image: "james.jpeg"),
  ChatLayoutModel(
      name: "Heke",
      message: "👆🙋‍♂️🤣",
      notification: "3",
      time: "12:24",
      image: "home_2.jpeg"),
  ChatLayoutModel(
      name: "James",
      message: "Ask him please",
      notification: "4",
      time: "12:24",
      image: "bg_smile.png"),
  ChatLayoutModel(
      name: "Olumide",
      message: "🙏",
      notification: "1",
      time: "12:24",
      image: "james.jpeg"),
  ChatLayoutModel(
      name: "James",
      message: "Send it to me",
      notification: "4",
      time: "12:24",
      image: "home_2.jpeg"),
  ChatLayoutModel(
      name: "James",
      message: "🙏🥰",
      notification: "4",
      time: "12:24",
      image: "bg_smile.png"),
  ChatLayoutModel(
      name: "Olumide",
      message: "Can it get delievered?",
      notification: "4",
      time: "12:24",
      image: "james.jpeg"),
  ChatLayoutModel(
      name: "James 🥰",
      message: "Send it to me",
      notification: "4",
      time: "12:24",
      image: "home_2.jpeg"),
  ChatLayoutModel(
      name: "James",
      message: "🙏🥰",
      notification: "4",
      time: "12:24",
      image: "bg_smile.png"),
  ChatLayoutModel(
      name: "Faith 🥰",
      message: "Can it get delievered?",
      notification: "4",
      time: "12:24",
      image: "james.jpeg"),
  ChatLayoutModel(
      name: "James",
      message: "🙏🥰",
      notification: "5",
      time: "12:24",
      image: "home_2.jpeg"),
  ChatLayoutModel(
      name: "James",
      message: "Ask him please",
      notification: "4",
      time: "12:24",
      image: "bg_smile.png"),
  ChatLayoutModel(
      name: "Olumide",
      message: "⚡🤲🔥",
      notification: "3",
      time: "12:24",
      image: "james.jpeg"),
  ChatLayoutModel(
      name: "Dennis",
      message: "Send it to me",
      notification: "4",
      time: "12:24",
      image: "home_2.jpeg"),
  ChatLayoutModel(
      name: "James",
      message: "😅",
      notification: "4",
      time: "12:24",
      image: "bg_smile.png"),
  ChatLayoutModel(
      name: "Inioluwa",
      message: "👆🙋‍♂️🤣",
      notification: "4",
      time: "12:24",
      image: "james.jpeg"),
  ChatLayoutModel(
      name: "James",
      message: "😅",
      notification: "9",
      time: "12:24",
      image: "home_2.jpeg"),
  ChatLayoutModel(
      name: "James",
      message: "Ask him please",
      notification: "1",
      time: "12:24",
      image: "bg_smile.png"),
  ChatLayoutModel(
      name: "Olumide",
      message: "Can it get delievered?",
      notification: "2",
      time: "12:24",
      image: "james.jpeg"),
];

///Data for Status Screen

List<StatusModel> status = [
  StatusModel(
    name: "Tems",
    time: "12 minutes ago",
    image: "james.jpeg",
  ),
  StatusModel(
    name: "Ini",
    time: "20 minutes ago",
    image: "home_2.jpeg",
  ),
  StatusModel(
    name: "Tems",
    time: "45 minutes ago",
    image: "bg_smile.png",
  ),
  StatusModel(
    name: "Ade",
    time: "Today, 7:52 pm",
    image: "james.jpeg",
  ),
  StatusModel(
    name: "Tems",
    time: "Today, 7:52 pm",
    image: "james.jpeg",
  ),
  StatusModel(
    name: "Tems",
    time: "Yesterday, 4:52 pm",
    image: "james.jpeg",
  ),
];

/// Data For Call Screen

List<CallModel> call = [
  CallModel(
    name: "Tems 💙",
    time: "Today, 2:04 pm",
    leftIcon: Icons.call_missed_outgoing,
    rightIcon: Icons.video_call,
    image: "james.jpeg"
  ),
  CallModel(
    name: "Femi",
    time: "Today, 2:04 pm",
    leftIcon: Icons.call_missed_outgoing,
    rightIcon: Icons.phone,
    image: "james.jpeg"
  ),
  CallModel(
    name: "Sam",
    time: "Today, 2:04 pm",
    leftIcon: Icons.call_missed_outgoing,
    rightIcon: Icons.video_call,
    image: "james.jpeg"
  ),
  CallModel(
    name: "Tems 💙",
    time: "Today, 2:04 pm",
    leftIcon: Icons.call_missed_outgoing,
    rightIcon: Icons.video_call,
    image: "james.jpeg"
  ),
  CallModel(
    name: "Femi",
    time: "Today, 2:04 pm",
    leftIcon: Icons.call_missed_outgoing,
    rightIcon: Icons.phone,
    image: "james.jpeg"
  ),
  CallModel(
    name: "Sam",
    time: "Today, 2:04 pm",
    leftIcon: Icons.call_missed_outgoing,
    rightIcon: Icons.video_call,
    image: "james.jpeg"
  ),
];
