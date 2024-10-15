// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // To track the currently selected item

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _searchField(),
          SizedBox(height: 20),

          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                optionButton('Hackathon',isSelected: true),
                SizedBox(width: 15),
                optionButton('Web'),
                SizedBox(width: 15),
                optionButton('Mobile'),
                SizedBox(width: 15),
                optionButton('Events'),
              ],
            ),
          ),
        ),

          SizedBox(height: 20),
          _sectionWidget('DUHacks 4.0 Updates'),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  hacksUpdates(
                    title: 'DU Hacks Winning Price',
                    description:
                        'Discover how winning a hackathon can catapult your career and wallet.',
                    date: '10/05/2024',
                  ),
                  hacksUpdates(
                    title: 'How To Win',
                    description:
                        'How your team can win the upcoming DUHacks Hackathon',
                    date: '10/15/2024',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          _sectionWidget('Past Events'),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              pastEventTile('DU Hacks 1.0', '2022'),
              pastEventTile('DU Hacks 2.0', '2023'),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        // elevation: 1,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/calendar.svg'),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/settings.svg'),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            // icon: SvgPicture.asset('assets/icons/person.svg'),
            icon: Icon(CupertinoIcons.person),
            label: 'User',
          ),
        ],
      ),
    );
  }

  InkWell hacksUpdates(
      {required String title,
      required String description,
      required String date}) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'assets/icons/gdsc.png',
                width: 240,
                height: 290,

                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 15,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    width:200, 
                    child: Text(
                      description,
                      style: GoogleFonts.raleway(
                        color: Colors.grey.shade900,
                        fontSize: 12,
                      ),
                      maxLines: 2, 
                      overflow:TextOverflow.ellipsis, 
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black.withOpacity(0.6),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Text(
                  'Posted on $date',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell pastEventTile(String title, String year) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 10),
        child: Row(
          children: [
            Container(
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3), // Shadow color
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/icons/gdsc.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 26,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                title,
                style: GoogleFonts.raleway(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Organized In',
                style: GoogleFonts.raleway(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
              Text(
                year,
                style: GoogleFonts.raleway(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Padding _sectionWidget(String titleText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleText,
            style: GoogleFonts.raleway(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          Text(
            'See more',
            style: GoogleFonts.raleway(fontSize: 13, color: Color(0xff858585)),
          )
        ],
      ),
    );
  }

  // Search Field Section
  Container _searchField() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xff1D1617).withOpacity(0.11),
          blurRadius: 40,
          spreadRadius: 0.0,
        )
      ]),
      margin: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffF7F7F7),
            contentPadding: EdgeInsets.all(15),
            hintText: 'Search Upcoming Events, Workshops ',
            hintStyle: TextStyle(color: Color(0xff858585), fontSize: 12),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/icons/Search.svg',
                height: 20,
                width: 20,
              ),
            ),
            suffixIcon: SizedBox(
              width: 25,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/Filter.svg',
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
      ),
    );
  }
}


Widget optionButton(String text, {bool isSelected = false}) {
  return InkWell(
    onTap: () {

    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFF394867) : Colors.white, // Dark color if selected
        borderRadius: BorderRadius.circular(20), // Rounded corners
        border: Border.all(
          color: isSelected ? Colors.transparent : Colors.grey.withOpacity(0.3), // Grey border for non-selected buttons
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.raleway(
          color: isSelected ? Colors.white : Colors.grey, // White text for selected, grey for non-selected
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}