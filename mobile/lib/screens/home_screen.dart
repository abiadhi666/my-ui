import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/constants/color_constant.dart';
import 'package:mobile/models/card_model_rencana.dart';
import 'package:mobile/models/card_model_trending.dart';
import 'package:mobile/models/card_model_unboxing.dart';

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
            Padding(
              padding: EdgeInsets.only(top: 12, right: 16, bottom: 12, left: 16),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          
                        ],
                      ),
                      IconButton(
                        icon: SvgPicture.asset('assets/icons/icon_setting.svg'),
                        onPressed: () 
                        async {
                          const url = 'https://github.com/abiadhi666';
                        }
                      )
                    ],
                  )
                ],
              ),
            ),
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
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rencana belajar',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: kWhite,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: kWhite,
                          textStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: kWhite
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Lihat Rencana',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Container(
              height: 188,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 6),
                itemCount: cardsRencana.length,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(right: 16, top: 16),
                    height: 188,
                    width: 224,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image : new DecorationImage(
                        image: new AssetImage(cardsRencana[index].cardBackground as String),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 12,
                          top: 16,
                          child: Text(
                            cardsRencana[index].cardTitle as String, 
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kWhite,
                              height: 1.5
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 12, right: 110, top: 84),
                          decoration: BoxDecoration(
                            color: kBlackSecondary,
                            borderRadius: BorderRadius.circular(4)
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 4, right: 8, bottom: 4, left: 8),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Video',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: kWhite,
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 4, right: 4),
                                  width: 4,
                                  height: 4,
                                  decoration: 
                                    new BoxDecoration(
                                      color: kWhite,
                                      shape: BoxShape.circle,
                                    ),
                                ),
                                
                                Container(
                                  child: Text(
                                    '2:30 min',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: kWhite,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          left: 12,
                          child: Image.asset(cardsRencana[index].cardAvatar as String)
                        ),

                        Positioned(
                          bottom: 16,
                          right: 12,
                          child:
                          Stack(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                decoration: new BoxDecoration(
                                  color: kPurplePrimary,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2),
                                  child: IconButton(
                                    onPressed: (){}, 
                                    icon: SvgPicture.asset('assets/icons/icon_play.svg', height: 13.75, width: 13.75, fit: BoxFit.scaleDown)),
                                )
                              )
                            ],
                          )
                        )
                      ],
                    ),
                  );
                }
              ),
            ),

            Container(
              margin: EdgeInsets.only(top:32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: kWhite,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16, top: 24),
                child: Text(
                  'Lagi trending 📈',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: kTextBlack,
                  ),
                ),
              ),
            ),
            Container(
              height: 266,
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(color: Colors.white)
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 6, bottom: 24),
                itemCount: cardsTrending.length,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(right: 16, top: 16),
                    height: 266,
                    width: 194,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(55, 51, 69, 0.2),
                          offset: const Offset(
                            0,
                            4.0,
                          ),
                          blurRadius: 20.0,
                          spreadRadius: 0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                      image : new DecorationImage(
                        image: new AssetImage(cardsTrending[index].cardBackground as String),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 12,
                          top: 16,
                          child: Text(
                            cardsTrending[index].cardTitle as String, 
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kWhite,
                              height: 1.5
                            ),
                          ),
                        ),
                      
                        Positioned(
                          bottom: 44,
                          left: 12,
                          child: Image.asset(cardsTrending[index].cardAvatar as String, width: 48, height: 48)
                        ),

                        Positioned(
                          bottom: 16,
                          left: 12,
                          child: Text(
                            cardsTrending[index].cardName as String, 
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: kTextBlack,
                            ),
                          )
                        ),

                        Positioned(
                          bottom: 8,
                          right: 14,
                          child: 
                          IconButton(
                            onPressed: (){}, 
                            icon: SvgPicture.asset('assets/icons/icon_add.svg', height: 24, width: 24, fit: BoxFit.scaleDown)
                          ),
                        )
                      ],
                    ),
                  );
                }
              ),
            ),
            
            Container(
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(color: Colors.white)
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Unboxing modul barunya, yuk!',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: kTextBlack,
                  ),
                ),
              ),
            ),
            Container(
              color: kWhite,
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 6,bottom: 108),
                itemCount: cardsUnboxing.length,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(right: 16, top: 16),
                    height: 350,
                    width: 194,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(55, 51, 69, 0.2),
                          offset: const Offset(
                            0,
                            4.0,
                          ),
                          blurRadius: 20.0,
                          spreadRadius: 0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                      image : new DecorationImage(
                        image: new AssetImage(cardsUnboxing[index].cardBackground as String),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: -2,
                          left: -5,
                          child: Image.asset('assets/images/image_baru.png', width: 58, height: 22)
                        ),

                        Positioned(
                          left: 12,
                          top: 16,
                          child: Text(
                            cardsUnboxing[index].cardTitle as String, 
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kWhite,
                              height: 1.5
                            ),
                          ),
                        ),
                      
                        Positioned(
                          bottom: 44,
                          left: 12,
                          child: Image.asset(cardsUnboxing[index].cardAvatar as String, width: 48, height: 48)
                        ),

                        Positioned(
                          bottom: 16,
                          left: 12,
                          child: Text(
                            cardsUnboxing[index].cardName as String, 
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: kTextBlack,
                            ),
                          )
                        ),

                        Positioned(
                          bottom: 8,
                          right: 14,
                          child: 
                          IconButton(
                            onPressed: (){}, 
                            icon: SvgPicture.asset('assets/icons/icon_add.svg', height: 24, width: 24, fit: BoxFit.scaleDown)
                          ),
                        )
                      ],
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
