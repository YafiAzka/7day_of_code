import 'package:day_7/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RandomPageV1 extends StatelessWidget {
  const RandomPageV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 36),
        child: Text(
          'My Shopping Cart',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 22,
          ),
        ),
      );
    }

    Widget items() {
      item(String name, String text, String imageUrl, int qty, int price) {
        return Container(
          width: double.infinity,
          height: 140,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 26),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(31),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(imageUrl, width: 80),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        text,
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Image.asset('assets/minus.png', width: 22),
                  SizedBox(width: 8),
                  Text(
                    '$qty',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 8),
                  Image.asset('assets/plus.png', width: 22),
                  Spacer(),
                  Text(
                    '\$$price.00',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          children: [
            item('Burger Malleta', 'McTheone', 'assets/burger.png', 2, 90),
            item('Mojito Orange', 'The Bar', 'assets/orange.png', 5, 510),
          ],
        ),
      );
    }

    Widget informations() {
      information(String text, int price) {
        return Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
              Text(
                '\$$price.00',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(bottom: 60, left: 30, right: 30),
        width: double.infinity,
        height: 161,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(31),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informations',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 18,
              ),
            ),
            information('Sub total', 600),
            information('Delivery', 80),
            information('Total', 680),
          ],
        ),
      );
    }

    Widget checkoutBtn() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        height: 60,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffFFC532),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(53),
            ),
          ),
          child: Text(
            'Checkout Now',
            style: GoogleFonts.poppins(
              color: Color(0xff2E221B),
              fontWeight: semiBold,
              fontSize: 18,
            ),
          ),
        ),
      );
    }

    Widget saveBtn() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        width: double.infinity,
        height: 60,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(53),
            ),
          ),
          child: Text(
            'Save to Wishlist',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor2,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              header(),
              items(),
              informations(),
              checkoutBtn(),
              saveBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
