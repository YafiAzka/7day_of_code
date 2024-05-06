import 'package:day_5/pages/rating_screen_v2.dart';
import 'package:day_5/shared/theme.dart';
import 'package:flutter/material.dart';

class RatingScreenV1 extends StatefulWidget {
  const RatingScreenV1({Key? key}) : super(key: key);

  @override
  _RatingScreenV1State createState() => _RatingScreenV1State();
}

class _RatingScreenV1State extends State<RatingScreenV1> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/pizzah.png'),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          'Pizza Ballado',
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 24,
          ),
        ),
      );
    }

    Widget price() {
      return Container(
        margin: EdgeInsets.only(top: 4),
        child: Text(
          '\$90,00',
          style: whiteTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
      );
    }

    Widget rating() {
      emoji(int index, String imageUrl) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Container(
            width: 60,
            height: 60,
            alignment: Alignment.center,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: _selectedIndex == index ? selectedColor : unselectedColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imageUrl,
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Was it delicious?',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                emoji(0, 'assets/emoji1.png'),
                emoji(1, 'assets/emoji2.png'),
                emoji(2, 'assets/emoji3.png'),
                emoji(3, 'assets/emoji4.png'),
              ],
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 90),
        width: 211,
        height: 55,
        child: TextButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RatingScreenV2(),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: greenColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          child: Text(
            'Rate Now',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor1,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 37),
          child: Column(
            children: [
              image(),
              title(),
              price(),
              rating(),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
