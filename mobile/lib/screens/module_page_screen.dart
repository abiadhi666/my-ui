import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/constants/color_constant.dart';
import 'package:mobile/models/card_model_creative.dart';
import 'package:mobile/models/card_model_thinking.dart';

class ModulePageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kWhite,
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 8, top: 12, bottom: 12),
              child: Stack(
                children: <Widget>[
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                        Navigator.pop(context);
                        }, 
                        icon: SvgPicture.asset('assets/icons/icon_arrow_left.svg')
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        padding: EdgeInsets.only(top: 4, right: 8, bottom: 4, left: 4),
                        decoration: BoxDecoration(
                          color: kGrey,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/icon_flash.svg'),
                            Container(
                              padding: EdgeInsets.only(left: 2),
                              child: Text(
                                '6P',
                                style: GoogleFonts.robotoMono(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: kBlack,
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        padding: EdgeInsets.only(top: 4, right: 8, bottom: 4, left: 4),
                        decoration: BoxDecoration(
                          color: kGrey,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/icon_fire.svg'),
                            Container(
                              padding: EdgeInsets.only(left: 2),
                              child: Text(
                                '01',
                                style: GoogleFonts.robotoMono(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: kBlack,
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        padding: EdgeInsets.only(top: 4, right: 8, bottom: 4, left: 4),
                        decoration: BoxDecoration(
                          color: kGrey,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/icons/icon_key.png'),
                            Container(
                              padding: EdgeInsets.only(left: 2),
                              child: Text(
                                '03',
                                style: GoogleFonts.robotoMono(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: kBlack,
                                ),
                              ),
                            )
                          ]
                        ),
                      ),
                    ],
                  )
                ],
              )
            ),

            Container(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pentingnya Creative\nThinking di Era Digital',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: kTextBlack,
                      height: 1.5
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 4),
                    child: SvgPicture.asset('assets/icons/icon_add.svg'),
                  )
                ]
              ),
            ),

            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 16, top: 16, bottom: 32),
              child: Image.asset('assets/images/avatar_putri.png'),
            ),

            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    height: 32,
                    width: 150,
                    decoration: BoxDecoration(
                      color: kGrey,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: DefaultTabController(
                      length: 2,
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: kPurplePrimary,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        isScrollable: true,
                        // labelPadding: EdgeInsets.only(top: 7, right: 12, bottom: 7, left: 12),
                        // indicatorPadding: EdgeInsets.only(top: 7, right: 12, bottom: 7, left: 12),
                        labelColor: kWhite,
                        unselectedLabelColor: kTextBlackSecondary,
                        labelStyle: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                        unselectedLabelStyle: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                        tabs: [
                          Tab(text: 'Konten'),
                          Tab(text: 'Materi')
                        ]
                      ),
                    ),
                  )
                ],
              )
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Mengenal Creative Thinking',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: kTextBlack,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, top: 2),
              child: Text(
                '0 dari 5 video selesai ditonton',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kTextBlack,
                ),
              ),
            ),

            Container(
              height: 216,
              padding: EdgeInsets.only(bottom: 32),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 6),
                itemCount: cardsCreative.length,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(right: 16, top: 16),
                    height: 216,
                    width: 224,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image : new DecorationImage(
                        image: new AssetImage(cardsCreative[index].cardBackground as String),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 12,
                          top: 16,
                          child: Text(
                            cardsCreative[index].cardTitle as String, 
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kWhite,
                              height: 1.5
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 64,
                          left: 12,
                          child: Container(
                            width: 102,
                            height: 20,
                            padding: EdgeInsets.only(top: 3.5, left: 8, bottom: 4, right: 8),
                            decoration: BoxDecoration(
                              color: kBlackSecondary,
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: Stack(
                              children: <Widget>[
                                Row(
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
                                      margin: EdgeInsets.only(left: 4, top: 2, right: 4),
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
                              ],
                            )
                          ), 
                        ),
                        Positioned(
                          bottom: 16,
                          left: 12,
                          child: Image.asset(cardsCreative[index].cardAvatar as String)
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
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ModulePageScreen()),
                                      );
                                    }, 
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

            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Penerapan Creative Thinking',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: kTextBlack,
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 16, top: 2),
              child: Stack(
                children: <Widget>[
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/icon_unlock.svg'),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                        child: Text(
                          'Buka dengan selesaikan semua video diatas',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: kTextBlack,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            Container(
              height: 217,
              padding: EdgeInsets.only(bottom: 33),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 6),
                itemCount: cardsThinking.length,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(right: 16, top: 16),
                    height: 217,
                    width: 224,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kGrey,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 12,
                          top: 16,
                          child: Text(
                            cardsThinking[index].cardTitle as String, 
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: kTextBlackThird,
                              height: 1.5
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 64,
                          left: 12,
                          child: Container(
                            width: 102,
                            height: 20,
                            padding: EdgeInsets.only(top: 3.5, left: 8, bottom: 4, right: 8),
                            decoration: BoxDecoration(
                              color: kGreySecondary,
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: Stack(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Video',
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: kTextGray,
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(left: 4, top: 2, right: 4),
                                      width: 4,
                                      height: 4,
                                      decoration: 
                                        new BoxDecoration(
                                          color: kTextGray,
                                          shape: BoxShape.circle,
                                        ),
                                    ),
                                    
                                    Container(
                                      child: Text(
                                        '2:30 min',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          color: kTextGray,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ), 
                        ),
                        Positioned(
                          bottom: 16,
                          left: 12,
                          child: Image.asset(cardsThinking[index].cardAvatar as String)
                        ),

                        Positioned(
                          bottom: 16,
                          right: 12,
                          child:
                          Stack(
                            children: <Widget>[
                              Container(
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ModulePageScreen()),
                                    );
                                  }, 
                                  icon: SvgPicture.asset('assets/icons/icon_unlock_big.svg', height: 40, width: 40, fit: BoxFit.scaleDown)),
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
          ],
        ),
      )
    );
  }
}