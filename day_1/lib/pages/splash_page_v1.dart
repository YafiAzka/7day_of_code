import 'package:day_1/pages/splash_page_v2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPageV1 extends StatelessWidget {
  const SplashPageV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SplashPageV2(),
            ),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 140,
                margin: EdgeInsets.only(bottom: 170),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_sword.png'),
                  ),
                ),
              ),
              Text(
                'VENTURE',
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 32,
                  letterSpacing: 10,
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff13131E),
      body: body(),
    );
  }
}
