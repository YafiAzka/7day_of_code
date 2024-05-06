import 'package:day_4/pages/empty_page_v2.dart';
import 'package:day_4/shared/theme.dart';
import 'package:flutter/material.dart';

class EmptyPagev1 extends StatelessWidget {
  const EmptyPagev1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Container(
        width: 240,
        height: 210,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/illustration1.png'),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 100),
        child: Text(
          'Success Order',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 24,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Text(
          'We will delivery your package\nas soon as possible',
          style: blackTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        width: 200,
        height: 50,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EmptyPageV2(),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: pinkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          child: Text(
            'Done',
            style: whiteTextStyle.copyWith(fontWeight: semiBold, fontSize: 18),
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image(),
            title(),
            subtitle(),
            button(),
          ],
        ),
      ),
    );
  }
}
