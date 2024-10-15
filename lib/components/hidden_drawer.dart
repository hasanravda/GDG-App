import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdg_app/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  // final myTextStyle = TextStyle(
  //   fontWeight: FontWeight.bold,
  //   fontSize: 16,
  //   color: Colors.white
  // );

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HomePage',
          baseStyle: GoogleFonts.outfit(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          colorLineSelected: Colors.deepPurple,
          selectedStyle: GoogleFonts.outfit(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xff0A8ED9),
              backgroundColor: Colors.white),
        ),
        const HomePage(), // HomePage will contain its own AppBar
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Profile',
          baseStyle: GoogleFonts.outfit(
              fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
          colorLineSelected: Colors.deepPurple,
          selectedStyle: GoogleFonts.outfit(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color(0xff0A8ED9),
            backgroundColor: Colors.white,
          ),
        ),
        const HomePage(), // SignUpPage will contain its own AppBar
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'About Us',
          baseStyle: GoogleFonts.outfit(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          colorLineSelected: Colors.deepPurple,
          selectedStyle: GoogleFonts.outfit(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xff0A8ED9),
              backgroundColor: Colors.white),
        ),
        const HomePage(), // HomePage will contain its own AppBar
      ),


      // ScreenHiddenDrawer(
      //   ItemHiddenMenu(
      //     name: 'Bookmark',
      //     baseStyle: GoogleFonts.outfit(
      //       fontSize: 17,
      //       fontWeight: FontWeight.w400,
      //       color: Colors.white,
      //     ),
      //     colorLineSelected: Colors.deepPurple,
      //     selectedStyle: GoogleFonts.outfit(
      //         fontSize: 20,
      //         fontWeight: FontWeight.w600,
      //         color: const Color(0xff0A8ED9),
      //         backgroundColor: Colors.white),
      //   ),
      //   const HomePage(), // HomePage will contain its own AppBar
      // ),
      // ScreenHiddenDrawer(
      //   ItemHiddenMenu(
      //     name: 'Notification',
      //     baseStyle: GoogleFonts.outfit(
      //       fontSize: 17,
      //       fontWeight: FontWeight.w400,
      //       color: Colors.white,
      //     ),
      //     colorLineSelected: Colors.deepPurple,
      //     selectedStyle: GoogleFonts.outfit(
      //         fontSize: 20,
      //         fontWeight: FontWeight.w600,
      //         color: const Color(0xff0A8ED9),
      //         backgroundColor: Colors.white),
      //   ),
      //   const HomePage(), // HomePage will contain its own AppBar
      // ),
      // ScreenHiddenDrawer(
      //   ItemHiddenMenu(
      //     name: 'Message',
      //     baseStyle: GoogleFonts.outfit(
      //       fontSize: 17,
      //       fontWeight: FontWeight.w400,
      //       color: Colors.white,
      //     ),
      //     colorLineSelected: Colors.deepPurple,
      //     selectedStyle: GoogleFonts.outfit(
      //         fontSize: 20,
      //         fontWeight: FontWeight.w600,
      //         color: const Color(0xff0A8ED9),
      //         backgroundColor: Colors.white),
      //   ),
      //   const HomePage(), // HomePage will contain its own AppBar
      // ),


      // ScreenHiddenDrawer(
      //   ItemHiddenMenu(
      //     name: 'Setting',
      //     baseStyle: GoogleFonts.outfit(
      //       fontSize: 17,
      //       fontWeight: FontWeight.w400,
      //       color: Colors.white,
      //     ),
      //     colorLineSelected: Colors.deepPurple,
      //     selectedStyle: GoogleFonts.outfit(
      //         fontSize: 20,
      //         fontWeight: FontWeight.w600,
      //         color: const Color(0xff0A8ED9),
      //         backgroundColor: Colors.white),
      //   ),
      //   const HomePage(), // HomePage will contain its own AppBar
      // ),
      // ScreenHiddenDrawer(
      //   ItemHiddenMenu(
      //     name: 'Help',
      //     baseStyle: GoogleFonts.outfit(
      //       fontSize: 17,
      //       fontWeight: FontWeight.w400,
      //       color: Colors.white,
      //     ),
      //     colorLineSelected: Colors.deepPurple,
      //     selectedStyle: GoogleFonts.outfit(
      //         fontSize: 20,
      //         fontWeight: FontWeight.w600,
      //         color: const Color(0xff0A8ED9),
      //         backgroundColor: Colors.white),
      //   ),
      //   const HomePage(), // HomePage will contain its own AppBar
      // ),
      // ScreenHiddenDrawer(
      //   ItemHiddenMenu(
      //     name: 'Logout',
      //     baseStyle: GoogleFonts.outfit(
      //       fontSize: 17,
      //       fontWeight: FontWeight.w400,
      //       color: Colors.white,
      //     ),
      //     colorLineSelected: Colors.deepPurple,
      //     selectedStyle: GoogleFonts.outfit(
      //         fontSize: 20,
      //         fontWeight: FontWeight.w600,
      //         color: const Color(0xff0A8ED9),
      //         backgroundColor: Colors.white),
      //   ),
      //   const HomePage(), // HomePage will contain its own AppBar
      // ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: const Color(0xff0A8FD8),
      elevationAppBar: 0.5,
      backgroundColorAppBar: Colors.white, 
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 60,
      tittleAppBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Welcome\n',
                style: GoogleFonts.raleway(
                  fontSize: 14, 
                  fontWeight: FontWeight.w400,
                  color: Color(0xff838383),
                ),
              ),
              TextSpan(
                text: 'UserName',
                style: GoogleFonts.raleway(
                  fontSize: 22, 
                  fontWeight: FontWeight.w600,
                  color: Colors.black, 
                ),
              ),
            ],
          ),
        ),
      ),
      actionsAppBar: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SvgPicture.asset(
            'assets/icons/bell-icon.svg',
            height: 25,
            width: 20,
          ),
        )
      ],
    );
  }
}
