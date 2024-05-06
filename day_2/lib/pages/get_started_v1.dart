import 'package:day_2/pages/get_started_v2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedV1 extends StatelessWidget {
  const GetStartedV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bgImage() {
      return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/cover.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Maximize Revenue',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Gain more profit from cryptocurrency\nwithout any risk involved',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GetStartedV2(),
                ),
              ),
              child: Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.symmetric(vertical: 55),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/btn_in.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          bgImage(),
          content(),
        ],
      ),
    );
  }
}
