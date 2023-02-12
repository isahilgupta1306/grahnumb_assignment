import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:grahnumb_assignment/screens/home_page.dart';
import 'package:grahnumb_assignment/screens/messages_page_dummy.dart';
import 'package:grahnumb_assignment/screens/notification_page_dummy.dart';
import 'package:grahnumb_assignment/screens/search_page_dummy.dart';
import 'package:grahnumb_assignment/screens/twitterspaces__page_dummy.dart';

import 'package:grahnumb_assignment/utils/themes/named_colors.dart';

class HomeWrapper extends StatefulWidget {
  int i;
  HomeWrapper(this.i, {Key? key}) : super(key: key);

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  late int _currentIndex;

  void _selectPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    _currentIndex = widget.i;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      const HomePage(),
      const SearchPage(),
      const SpacesPage(),
      const NotificationPage(),
      const MessagesPage()
    ];

    return Scaffold(
      appBar: null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _selectPage,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: NamedColors.twitterBlack),
        unselectedIconTheme:
            const IconThemeData(color: NamedColors.twitterBlack),
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_filled),
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              CupertinoIcons.search,
            ),
            icon: Icon(
              Icons.search_outlined,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.mic_fill),
            icon: Icon(
              CupertinoIcons.mic,
            ),
            label: 'URLs',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.bell_fill),
            icon: Icon(
              CupertinoIcons.bell,
            ),
            label: 'URLs',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(CupertinoIcons.mail_solid),
            icon: Icon(
              CupertinoIcons.mail,
            ),
            label: 'Messages',
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
