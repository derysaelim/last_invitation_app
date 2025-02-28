import 'package:flutter/material.dart';
import 'package:last_invitation_app/view/login/login_page.dart';

import '../../widget/constants.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
                  image: AssetImage("assets/images/logo-pengaturan.png"),
                  width: 165,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nama Event",
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              Text("Ina Amalia & Alfi Firdaus"),
                            ],
                          ),
                          Image(
                            image: AssetImage("assets/icons/ic-edit.png"),
                            width: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pesan Undangan",
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              Text("Kepada Yth : ..."),
                            ],
                          ),
                          Image(
                            image: AssetImage("assets/icons/ic-edit.png"),
                            width: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            color: kprimaryColor,
                            child: InkWell(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Stack(children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/background-setting.png"),
                                      width: 150,
                                    ),
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            padding: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                              color: kprimaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Icon(
                                              Icons.edit_square,
                                              color: Colors.white,
                                              size: 16,
                                            )),
                                      ),
                                    ),
                                  ]),
                                  Container(
                                    height: 20,
                                    color: kprimaryColor,
                                    child: Text(
                                      "Layar Background",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: kprimaryColor,
                            child: InkWell(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Stack(children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/background-setting.png"),
                                      width: 150,
                                    ),
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            padding: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                              color: kprimaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Icon(
                                              Icons.edit_square,
                                              color: Colors.white,
                                              size: 16,
                                            )),
                                      ),
                                    ),
                                  ]),
                                  Container(
                                    height: 20,
                                    color: kprimaryColor,
                                    child: Text(
                                      "Layar Sapa",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Akses Layar Sapa",
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              Text("Tap Untuk Menyalin Link Layar Sapa"),
                            ],
                          ),
                          Image(
                            image: AssetImage("assets/icons/ic-copy.png"),
                            width: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Logout",
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              Text("Keluar Dari Akun Ini"),
                            ],
                          ),
                          Image(
                            image: AssetImage("assets/icons/ic-logout.png"),
                            width: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF34BF4C),
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 44),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        child: const Text(
                          'Tutup',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
