import 'package:flutter/material.dart';
import 'package:hacknews_flut/pages/fav.dart';
import 'package:hacknews_flut/pages/home.dart';

class Layout extends StatefulWidget {
  /// 初始化
  Layout({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Layout();
}

class _Layout extends State<Layout> {
  int _selectedIdx = 0;

  final _tabbarItems = [Home(), Fav()];
  final _tabbars = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite')
  ];

  _onTabbarTap(idx) {
    setState(() {
      _selectedIdx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_tabbars.elementAt(this._selectedIdx).label!)),
      body: Center(child: _tabbarItems.elementAt(this._selectedIdx)),
      bottomNavigationBar: BottomNavigationBar(
        items: _tabbars,
        currentIndex: _selectedIdx,
        onTap: _onTabbarTap,
      ),
    );
  }
}
