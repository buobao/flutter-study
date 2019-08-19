import 'package:flutter/material.dart';

import 'package:flutter_app/utils/shared_preferences.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }

}


class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  static List tabData = [
//    {'text': '业界动态', 'icon': Icon(Icons.language)},
    {'text': 'WIDGET', 'icon': Icon(Icons.extension)},
    {'text': '组件收藏', 'icon': Icon(Icons.favorite)},
    {'text': '关于手册', 'icon': Icon(Icons.import_contacts)},
  ];

  SpUtil sp;
  int _currentIndex = 0;
  List<Widget> _list = List();
  String appBarTitle = tabData[0]['text'];

  //底部导航
  List<BottomNavigationBarItem> _myTabs = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < tabData.length; i++) {
      _myTabs.add(BottomNavigationBarItem(
        icon: tabData[i]['icon'],
        title: Text(
          tabData[i]['text'],
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),),
      body: IndexedStack(
        index: _currentIndex,
        children: _list,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _myTabs,
        //高亮  被点击高亮
        currentIndex: _currentIndex,
        //修改 页面
        onTap: _itemTapped,
        //shifting :按钮点击移动效果
        //fixed：固定
        type: BottomNavigationBarType.fixed,

//        fixedColor: Color(0xFFC91B3A),
        unselectedItemColor: Color(0xFF999999),
        selectedItemColor: Color(0xFFC91B3A),
      ),
    );
  }

  void _itemTapped(int index) {
    setState(() {
      _currentIndex = index;
      appBarTitle = tabData[index]['text'];
    });
  }

}

























