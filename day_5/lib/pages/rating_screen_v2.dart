import 'package:day_5/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingScreenV2 extends StatefulWidget {
  RatingScreenV2({Key? key}) : super(key: key);

  @override
  _RatingScreenV2State createState() => _RatingScreenV2State();
}

class _RatingScreenV2State extends State<RatingScreenV2> {
  int selectedRating = -1;

  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        height: 210,
        margin: EdgeInsets.only(top: 80),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/illustration.png'),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Enjoy Your Meal',
          style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 6),
        child: Text(
          'Please rate our experience',
          style: blackTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      );
    }

    Widget rating() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: RatingBar.builder(
          initialRating: 3,
          itemSize: 40,
          minRating: 1,
          direction: Axis.horizontal,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 7.0),
          itemBuilder: (context, _) => Image.asset('assets/star.png'),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      );
    }

    Widget textField() {
      return Container(
        margin: EdgeInsets.only(top: 36, left: 28, right: 28),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: bgColor2,
          borderRadius: BorderRadius.circular(17),
        ),
        child: TextField(
          style: greyTextStyle,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          maxLines: 5,
        ),
      );
    }

    Widget button() {
      return Container(
        width: 319,
        height: 55,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () => Navigator.pop(context),
          style: TextButton.styleFrom(
            backgroundColor: blueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          child: Text(
            'Submit Review',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            title(),
            subtitle(),
            rating(),
            textField(),
            button(),
          ],
        ),
      ),
    );
  }
}
