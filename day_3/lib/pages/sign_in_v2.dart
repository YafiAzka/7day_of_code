import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInV2 extends StatelessWidget {
  const SignInV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Container(
        margin: EdgeInsets.only(top: 64),
        width: 245,
        height: 279,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image.png'),
          ),
        ),
      );
    }

    Widget form() {
      formInput(String text, bool visible) {
        return Container(
          margin: EdgeInsets.only(top: 6),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(71),
          ),
          child: TextFormField(
            obscureText: visible,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text,
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 53),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: GoogleFonts.openSans(),
            ),
            formInput('Email', false),
            SizedBox(height: 20),
            Text(
              'Email Address',
              style: GoogleFonts.openSans(),
            ),
            formInput('Password', true),
          ],
        ),
      );
    }

    Widget buttons() {
      button(String text, bool active) {
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {
              if (active == false) {
                Navigator.pop(context);
              } else {}
            },
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(71),
                side: active == false
                    ? BorderSide(
                        width: 1,
                        color: Color(0xffD3D3D3),
                      )
                    : BorderSide.none,
              ),
              backgroundColor:
                  active == false ? Colors.white : Color(0xff5468FF),
            ),
            child: Text(
              text,
              style: GoogleFonts.openSans(
                color: active == false ? Color(0xffCFCFCF) : Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            button('Log in', true),
            SizedBox(height: 16),
            button('Create New Account', false),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 28),
            children: [
              image(),
              form(),
              buttons(),
            ],
          ),
        ),
      ),
    );
  }
}
