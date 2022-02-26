import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/constants/color_constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPurplePrimary,
      body: Container(
        child: ListView(
          children: <Widget>[
            // Container(
            //   height: 56,
            //   margin: EdgeInsets.only(top: 12, right: 18, bottom: 12, left: 16),
            // ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 8),
              child: Text(
                'Hi Kuncoro!',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: kWhite,
                ),
              ),
            ),

            Container(
              height: 44,
              margin: EdgeInsets.only(top: 16, right: 16, bottom: 32, left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: kPurpleSecondary
              ),
              child: Stack(
                children: <Widget>[
                  TextField(
                    maxLengthEnforced: true,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: kWhite,
                      fontWeight: FontWeight.w400
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 8, right: 16, bottom: 12, left: 40),
                      border: InputBorder.none,
                      hintText: 'Cari Topik, Konten, atau Mentor',
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 14,
                        color: kWhite,
                        fontWeight: FontWeight.w400
                      )
                    ),
                  ),
                  Positioned(
                    left: 17,
                    top: 15,
                    child: SvgPicture.asset('assets/icons/icon_search.svg'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
