import 'package:bwa_cozy/pages/error_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        //throw (url);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'Images/thumbnail.png',
                width: MediaQuery.of(context).size.width,
                height: 350,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 328,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        color: whiteColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // NOTE: TITLE
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kuretakeso Hott',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 22,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: '\$52',
                                      style: purpleTextStyle.copyWith(
                                        fontSize: 16,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: ' / Month',
                                          style: greyTextStyle.copyWith(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'Images/Icon_star_solid.png',
                                    width: 20,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Image.asset(
                                    'Images/Icon_star_solid.png',
                                    width: 20,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Image.asset(
                                    'Images/Icon_star_solid.png',
                                    width: 20,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Image.asset(
                                    'Images/Icon_star_solid.png',
                                    width: 20,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Image.asset(
                                    'Images/Icon_star_solid.png',
                                    width: 20,
                                    color: Color(0xff989BA1),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // NOTE: MAIN FACILITIES
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Main facilities',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FacilityItem(
                                name: 'kitcen',
                                imageUrl: 'Images/icon_kitchen.png',
                                total: 2,
                              ),
                              FacilityItem(
                                name: 'bedroom',
                                imageUrl: 'Images/bedroom.png',
                                total: 3,
                              ),
                              FacilityItem(
                                name: 'Big Lemari',
                                imageUrl: 'Images/cupboard.png',
                                total: 3,
                              ),
                            ],
                          ),
                        ),
                        // NOTE: PHOTO
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Photos',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 88,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                width: edge,
                              ),
                              Image.asset(
                                'Images/photo1.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'Images/photo2.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'Images/photo3.png',
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: edge,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // NOTE: LOCATION
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Location',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jln. Kappan Sukses No. 20\nPalembang',
                                style: greyTextStyle,
                              ),
                              InkWell(
                                onTap: () {
                                  //launch(
                                  //  'https://goo.gl/maps/x2gaQhRJSarti58j8');
                                },
                                child: Image.asset(
                                  'Images/btn_map.png',
                                  width: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width - (2 * edge),
                          child: RaisedButton(
                            color: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                            onPressed: () {
                              launch('telp:+6289691362570');
                            },
                            child: Text(
                              'Book Now',
                              style: whiteTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'Images/btn_back.png',
                        width: 40,
                      ),
                    ),
                    Image.asset(
                      'Images/btn_wishlist.png',
                      width: 40,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
