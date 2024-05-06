import 'package:day_3/pages/sign_in_v2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class SignInV1 extends StatelessWidget {
  const SignInV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/logo.png'),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Text(
          'Welcome back.\nLet’s make money.',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
      );
    }

    Widget form() {
      Widget input(String text, bool visible) {
        return Container(
          decoration: BoxDecoration(
            color: Color(0xff262A34),
            borderRadius: BorderRadius.circular(17),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          width: double.infinity,
          child: TextFormField(
            style: GoogleFonts.openSans(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text,
              hintStyle: GoogleFonts.openSans(
                color: Color(0xff6A6B70),
              ),
              suffixIcon: visible == true
                  ? Icon(
                      Ionicons.eye_outline,
                      color: Color(0xff6A6B70),
                    )
                  : SizedBox(),
            ),
            obscureText: visible,
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            input('Email', false),
            SizedBox(height: 20),
            input('Password', true),
            SizedBox(height: 6),
            Text(
              'Forgot My Password',
              style: GoogleFonts.openSans(
                color: Color(0xff6A6B70),
              ),
            )
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 117),
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color(0xffFCAC15),
        ),
        child: TextButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignInV2(),
            ),
          ),
          child: Text(
            'Sign In',
            style: GoogleFonts.openSans(
              color: Color(0xff6B4909),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      );
    }

    Widget tac() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t have account? ',
              style: GoogleFonts.openSans(
                color: Colors.white,
              ),
            ),
            Text(
              'Sign Up',
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              logo(),
              title(),
              form(),
              button(),
              tac(),
            ],
          ),
        ),
      ),
    );
  }
}
