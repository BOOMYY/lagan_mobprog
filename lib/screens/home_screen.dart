import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lagan_mobprog/constant.dart';
import 'package:lagan_mobprog/screens/newsfeed_screen.dart';
import 'package:lagan_mobprog/widget/custom_text.dart';
import 'package:material_ui/material_ui.dart';

import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: fbLightPrimary,
        elevation: 2,
        // 2 dynamic app bar title based on selected index
        title: _buildAppBarTitle(),
      ),
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          // Add the NotificationScreen widget to the PageView
          NewsfeedScreen(),
          NotificationScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onTappedBar,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          // 3 add icon
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        unselectedItemColor: fbTextColorWhite,
        selectedItemColor: fbDarkPrimary,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  Widget _buildAppBarTitle() {
    if (_selectedIndex == 1) {
      return CustomText(
        text: 'Notifications',
        fontSize: ScreenUtil().setSp(25),
        color: fbTextColorWhite,
        fontFamily: 'Klavika',
        fontWeight: FontWeight(800),
      );
    }
    return CustomText(
      text: 'Joshua FYP',
      fontSize: ScreenUtil().setSp(25),
      color: fbPrimary,
      fontFamily: 'Klavika',
      fontWeight: FontWeight(800),
    );
  }
}
