import 'dart:js';

import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/providers/space_provider.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/Tips_card.dart';
import 'package:bwa_cozy/widgets/bottom_navbar_icon.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  var spaceProvider = Provider.of<SpaceProvider>(context);
  spaceProvider.getRecommendedSpace();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE : TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Exprole now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kostan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(id: 1, ImageUrl: 'Images/city1.png', name: 'Jakarta'),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      ImageUrl: 'Images/city2.png',
                      name: 'Bandung',
                      IsPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(id: 3, ImageUrl: 'Images/city3.png', name: 'Surabaya'),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: RECOMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recomended space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpaceCard(Space(
                    id: 1,
                    name: 'Kuretakeso Hott',
                    imageUrl: 'Images/space1.png',
                    price: 52,
                    rating: 4,
                    city: 'Bandung',
                    country: 'Germany',
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(Space(
                    id: 2,
                    name: 'Roemah Nenek',
                    imageUrl: 'Images/space2.png',
                    price: 11,
                    rating: 5,
                    city: 'Seattle',
                    country: 'Bogor',
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(Space(
                    id: 3,
                    name: 'Darrling How',
                    imageUrl: 'Images/space3.png',
                    price: 20,
                    rating: 3,
                    city: 'Jakarta',
                    country: 'Indonesia',
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                        id: 1,
                        title: 'City guidelanes',
                        imageUrl: 'Images/tips1.png',
                        UpdatedAt: '20 Apr'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                        id: 2,
                        title: 'Jakarta fairship',
                        imageUrl: 'Images/tips2.png',
                        UpdatedAt: '11 Dec'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'Images/Icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'Images/Icon_mail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'Images/Icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'Images/Icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
