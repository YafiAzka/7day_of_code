import 'package:day_6/pages/pricing_page_v2.dart';
import 'package:day_6/shared/theme.dart';
import 'package:flutter/material.dart';

class PricingPageV1 extends StatefulWidget {
  const PricingPageV1({Key? key}) : super(key: key);

  @override
  _PricingPageV1State createState() => _PricingPageV1State();
}

class _PricingPageV1State extends State<PricingPageV1> {
  int selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/logo_crown.png'),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 48),
        child: Text(
          'Which one you wish\nto Upgrade?',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget items() {
      item(
        int index,
        String imageUrl,
        String title,
        String value1,
        String value2,
      ) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedItem = index;
            });
          },
          child: Container(
            width: 315,
            height: 100,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: selectedItem == index ? activeBorderColor : borderColor,
              ),
              borderRadius: BorderRadius.circular(39),
            ),
            child: Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 66,
                ),
                SizedBox(width: 7),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          value1,
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          value2,
                          style: purpleTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: selectedItem == index
                      ? Image.asset(
                          'assets/check_blue.png',
                          height: 26,
                        )
                      : SizedBox(),
                ),
              ],
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            item(0, 'assets/pig.png', 'Money Security', 'support ', '24/7'),
            item(1, 'assets/nota.png', 'Automation', 'we provide ', 'Invoice'),
            item(2, 'assets/coin.png', 'Balance Report', 'can up to ', '10k'),
          ],
        ),
      );
    }

    Widget footer() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PricingPageV2(),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: activeBorderColor,
          ),
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upgrade Now',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
              Image.asset(
                'assets/arrow.png',
                width: 24,
              ),
            ],
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
              title(),
              items(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
