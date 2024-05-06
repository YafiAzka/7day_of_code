import 'package:day_4/shared/theme.dart';
import 'package:flutter/material.dart';

class EmptyPageV2 extends StatelessWidget {
  const EmptyPageV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Container(
        width: double.infinity,
        height: 454,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/illustration2.png'),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 68),
        child: Text(
          'Boost Profit!',
          style: whiteTextStyle.copyWith(
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
          'Our tools are helping business\nto grow much faster',
          style: whiteTextStyle.copyWith(
            fontWeight: light,
            fontSize: 16,
          ),
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 60),
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/btn.png'),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              image(),
              title(),
              subtitle(),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
