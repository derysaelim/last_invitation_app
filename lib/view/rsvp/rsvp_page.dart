import 'package:flutter/material.dart';
import 'package:last_invitation_app/widget/item_list.dart';

import '../../widget/constants.dart';

class RsvpPage extends StatefulWidget {
  const RsvpPage({super.key});

  @override
  State<RsvpPage> createState() => _RsvpPageState();
}

class _RsvpPageState extends State<RsvpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Stack(children: [
          // Header
          Container(
            width: MediaQuery.of(context).size.width,
            height: 90,
            color: kprimaryColor,
          ),
          // Card Dashboard
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 36, right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage("assets/images/logo-rsvp.png"),
                  width: 165,
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 120,
                      color: Color(0xffC9E3B5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("4",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Hadir", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 120,
                      color: Color(0xffFFEF99),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("2",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Masih Ragu", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 120,
                      color: Color(0xffFF9999),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("1",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Tidak Hadir", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ListTamuKehadiran(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
