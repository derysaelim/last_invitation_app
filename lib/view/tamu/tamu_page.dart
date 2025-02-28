import 'package:flutter/material.dart';
import 'package:last_invitation_app/widget/item_list.dart';
import '../../widget/constants.dart';

class TamuPage extends StatefulWidget {
  const TamuPage({super.key});

  @override
  State<TamuPage> createState() => _TamuPageState();
}

class _TamuPageState extends State<TamuPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Stack(children: [
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
                  image: AssetImage("assets/images/logo-tamu.png"),
                  width: 165,
                ),
                SizedBox(
                  height: 24,
                ),
                TabBar(
                  indicator: BoxDecoration(
                    color: Colors.green,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: <Widget>[
                    Tab(
                      text: "Mempelai Pria | 3",
                    ),
                    Tab(
                      text: "Mempelai Wanita | 10",
                    ),
                  ],
                ),

                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.grey, width: 1.5)
                      ),
                      hintText: 'Cari Tamu ...'),
                ),
                SizedBox(height: 15,),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      ListTamuPria(),
                      ListTamuWanita(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
