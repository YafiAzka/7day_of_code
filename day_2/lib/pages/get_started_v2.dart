import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedV2 extends StatelessWidget {
  const GetStartedV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Health First.',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Exercise together with our best\ncommunity fit in the world',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Color(0xff828284),
              ),
            ),
          ],
        ),
      );
    }

    Widget gallery() {
      return Container(
        width: 295,
        height: 402,
        margin: EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/gallery.png'),
          ),
        ),
      );
    }

    Widget button() {
      return Container(
        alignment: Alignment.center,
        width: 295,
        height: 55,
        decoration: BoxDecoration(
          color: Color(0xffAFEA0D),
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.only(top: 70),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Shape My Body',
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    Widget text() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 20),
        child: Text(
          'Terms & Conditions',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Color(0xff757575),
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              gallery(),
              button(),
              text(),
            ],
          ),
        ),
      ),
    );
  }
}
