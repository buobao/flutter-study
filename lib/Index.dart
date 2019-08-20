import 'package:flutter/material.dart';
import 'package:flutter_app/views/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


const int ThemeColor = 0xFFC91B3A;


void main() async {
  runApp(new MyApp());
}


class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  bool _hasLogin = false;
  bool _isLoading = false;


  @override
  void initState() {
    super.initState();


  }

  showWelcomePage(){
    if (_isLoading) {
      return Container(
        color: const Color(ThemeColor),
        child: Center(
          child: SpinKitPouringHourglass(color: Colors.white),
        ),
      );
    } else {
      // 判断是否已经登录
      if (_hasLogin) {
        return HomePage();
      } else {
        return HomePage();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'title',
      theme: new ThemeData(
        primaryColor: Color(ThemeColor),
        backgroundColor: Color(0xFFEFEFEF),
        accentColor: Color(0xFF888888),
        textTheme: TextTheme(
          //设置Material的默认字体样式
          body1: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
        ),
        iconTheme: IconThemeData(
          color: Color(ThemeColor),
          size: 35.0,
        ),
      ),
      home: new Scaffold(body: showWelcomePage(),),
      debugShowCheckedModeBanner: false,
    );
  }
}




























