import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPageV2 extends StatelessWidget {
  const SplashPageV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_page.png',
              width: 51,
            ),
            SizedBox(width: 13),
            Text(
              'HouseQu',
              style: GoogleFonts.montserrat(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget bgImage() {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Stack(
          children: [
            bgImage(),
            header(),
          ],
        ),
      ),
    );
  }
}
