import 'package:flutter/material.dart';
import 'package:last_invitation_app/widget/constants.dart';
import 'package:last_invitation_app/widget/item_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Stack(children: [
          // Header
          Container(
            width: MediaQuery.of(context).size.width,
            height: 230,
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
                  image: AssetImage("assets/images/logo-dashboard.png"),
                  width: 165,
                ),
                SizedBox(
                  height: 24,
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: kprimaryColor),
                              child: Text(
                                "A",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text("alfifirdaus0607")
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            color: kprimaryColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4, bottom: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nama Event",
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              Text("Ina Amalia & Alfi Firdaus"),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Waktu Event",
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              Text("26 Juni 2023"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // Search Tamu
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Export To Excell",
                            style: TextStyle(
                                color: kprimaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                          Text("Total Tamu Check In : 8")
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.5),
                          ),
                          hintText: 'Cari Tamu ...',
                        ),
                      ),
                    ],
                  ),
                ),

                // List Item Tamu
                ListTamuCheckIn()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
