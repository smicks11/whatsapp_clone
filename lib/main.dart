import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:statusbarz/statusbarz.dart';
import 'package:whatsapp_clone/views/pageWrapper.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StatusbarzCapturer(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        navigatorObservers: [Statusbarz.instance.observer],
        theme: ThemeData(
          // primarySwatch: Colors.black,
        ),
        home: Wrapper(),
      ),
    );
  }
}

