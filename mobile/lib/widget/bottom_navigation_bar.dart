import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class BottomNavigationBarExample extends StatefulWidget {
  @override
  _BottomNavigationBarExampleState createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var bottomNavStyle = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w700
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 88),
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, -2)
          )
        ]
      ),
      child: BottomNavigationBar(
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0 
              ? new SvgPicture.asset('assets/icons/icon_home_colored.svg')
              : new SvgPicture.asset('assets/icons/icon_home_colored.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
              ? new SvgPicture.asset('assets/icons/icon_people.svg')
              : new SvgPicture.asset('assets/icons/icon_people.svg'),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2 
              ? new SvgPicture.asset('assets/icons/icon_message.svg')
              : new SvgPicture.asset('assets/icons/icon_message.svg'),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3 
              ? new SvgPicture.asset('assets/icons/icon_playlist.svg')
              : new SvgPicture.asset('assets/icons/icon_playlist.svg'),
            label: 'Playlist',
          ), 
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      )
    );
  }
}