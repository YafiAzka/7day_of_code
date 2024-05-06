import 'package:day_6/shared/theme.dart';
import 'package:flutter/material.dart';

class PricingPageV2 extends StatelessWidget {
  const PricingPageV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bg() {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/bg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        width: 164,
        height: 164,
        margin: EdgeInsets.only(top: 80),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/illustration.png'),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Text(
          'Upgrade Now',
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 22,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'Unlock the winner modules\nand get more insights',
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            color: Color(0xff7F7FAD),
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget benefits() {
      benefit(String text) {
        return Container(
          margin: EdgeInsets.only(bottom: 26),
          child: Row(
            children: [
              Image.asset(
                'assets/check_red.png',
                width: 26,
              ),
              SizedBox(width: 12),
              Text(
                text,
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 50, left: 28, right: 28),
        child: Column(
          children: [
            benefit('Unlock Our Top Charts'),
            benefit('Save More than 1,000 Docs'),
            benefit('24/7 Customer Support'),
            benefit('Track Company’s Spending'),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 58),
        width: 319,
        height: 55,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffE57C73),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(31),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'Subscribe Now',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/btn_arrow.png',
                width: 41,
              ),
            ],
          ),
        ),
      );
    }

    Widget tacButton() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Contact Support',
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            bg(),
            Center(
              child: Column(
                children: [
                  header(),
                  title(),
                  subtitle(),
                  benefits(),
                  button(),
                  tacButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
