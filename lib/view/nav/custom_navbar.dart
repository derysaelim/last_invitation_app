import 'package:flutter/material.dart';
import 'package:last_invitation_app/view/home/home_page.dart';
import 'package:last_invitation_app/view/rsvp/rsvp_page.dart';
import 'package:last_invitation_app/view/setting/setting_page.dart';
import 'package:last_invitation_app/view/tamu/tamu_page.dart';
import 'package:last_invitation_app/widget/constants.dart';

class ButtomNavbarCustom extends StatefulWidget {
  const ButtomNavbarCustom({super.key});

  @override
  State<ButtomNavbarCustom> createState() => _ButtomNavbarState();
}

class _ButtomNavbarState extends State<ButtomNavbarCustom> {
  int currentIndex = 0;
  List pages = const [
    HomePage(),
    TamuPage(),
    HomePage(),
    RsvpPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        shape: CircleBorder(),
        backgroundColor: kprimaryColor,
        child: Icon(
          Icons.qr_code,
          color: Colors.white,
          size: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                color: Colors.grey.shade300, width: 1), // Border atas
          ),
        ),
        child: BottomAppBar(
          elevation: 1,
          height: 60,
          color: Colors.white,
          notchMargin: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  icon: Icon(
                    Icons.home,
                    size: 25,
                    color: currentIndex == 0
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  icon: Icon(
                    Icons.book,
                    size: 25,
                    color: currentIndex == 1
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  )),
              SizedBox(
                width: 15,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  icon: Icon(
                    Icons.menu_book,
                    size: 25,
                    color: currentIndex == 3
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 4;
                    });
                  },
                  icon: Icon(
                    Icons.settings,
                    size: 25,
                    color: currentIndex == 4
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  )),
            ],
          ),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
