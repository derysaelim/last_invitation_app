import 'package:flutter/material.dart';
import 'package:last_invitation_app/widget/constants.dart';

// List Tamu CheckIn
class ItemListTamuCheckIn extends StatelessWidget {
  final String tamuName;
  final String tglCheckin;
  final int index;

  const ItemListTamuCheckIn(
      {super.key,
      required this.tamuName,
      required this.tglCheckin,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade600, spreadRadius: 0.5)
          ],
          color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 48,
                width: 48,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kprimaryColor),
                child: Text(
                  "${index + 1}",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tamuName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  Text(tglCheckin,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: kprimaryColor,
            ),
            child: Text(
              "Checked In",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class ListTamuCheckIn extends StatefulWidget {
  const ListTamuCheckIn({super.key});

  @override
  State<ListTamuCheckIn> createState() => _ListTamuCheckInState();
}

class _ListTamuCheckInState extends State<ListTamuCheckIn> {
  final List<Map<String, String>> checkIn = [
    {"tamuName": "Moch Nizwar Syafuan", "tglCheckin": "22/03/2023 09.00"},
    {"tamuName": "Alfi Firdaus", "tglCheckin": "22/03/2023 09.00"},
    {"tamuName": "Moch Nizwar Syafuan", "tglCheckin": "22/03/2023 09.00"},
    {"tamuName": "Nadia Pratiwi", "tglCheckin": "22/03/2023 10.00"},
    {"tamuName": "Melati Anindita", "tglCheckin": "22/03/2023 09.00"},
    {"tamuName": "Siti Rahmawati", "tglCheckin": "22/03/2023 11.00"},
    {"tamuName": "Dewi Anggraini", "tglCheckin": "22/03/2023 09.00"},
    {"tamuName": "Ayu Lestari", "tglCheckin": "22/03/2023 08.00"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: checkIn.length,
        itemBuilder: (context, index) => ItemListTamuCheckIn(
          tamuName: checkIn[index]["tamuName"]!,
          tglCheckin: checkIn[index]["tglCheckin"]!,
          index: index,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}

// List Tamu Kehadiran
class ItemListKehadiran extends StatelessWidget {
  final String tamuName;
  final String pesan;
  final int status;
  final int index;

  const ItemListKehadiran(
      {super.key,
      required this.tamuName,
      required this.pesan,
      required this.status,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade600, spreadRadius: 0.5)
          ],
          color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 48,
                width: 48,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kprimaryColor),
                child: Text(
                  "${index + 1}",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tamuName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  Text(pesan,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: statusData[status]?["color"] ?? Colors.grey,
            ),
            child: Text(
              statusData[status]?["text"] ?? "Status Tidak Diketahui",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

// Map status kehadiran
final Map<int, Map<String, dynamic>> statusData = {
  0: {"text": "Hadir", "color": Color(0xffC9E3B5)}, // Hijau
  1: {"text": "Masih Ragu", "color": Color(0xffFCE78A)}, // Kuning
  2: {"text": "Tidak Hadir", "color": Color(0xffF5A9A9)}, // Merah
};

class ListTamuKehadiran extends StatefulWidget {
  const ListTamuKehadiran({super.key});

  @override
  State<ListTamuKehadiran> createState() => _ListTamuKehadiran();
}

class _ListTamuKehadiran extends State<ListTamuKehadiran> {
  final List<Map<String, dynamic>> kehadirans = [
    {"tamuName": "Alfi Firdaus", "pesan": "Yo Halo Pipel", "status": 0},
    {"tamuName": "Agung Purnama", "pesan": "Semoga Samawa", "status": 0},
    {
      "tamuName": "Moch Nizwar Syafuan",
      "pesan": "Yahaha si Babi Kawin",
      "status": 1
    },
    {
      "tamuName": "Iman Firmansyah",
      "pesan": "Gak Bisa Datang Bro",
      "status": 2
    },
    {"tamuName": "Rina Marlina", "pesan": "Semoga Samawa", "status": 0},
    {"tamuName": "Dewi Anggraini", "pesan": "Samawa semoga", "status": 0},
    {"tamuName": "Lestari Wulandari", "pesan": "Moga-moga semawa", "status": 1},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 0),
        itemCount: kehadirans.length,
        itemBuilder: (context, index) => ItemListKehadiran(
          tamuName: kehadirans[index]["tamuName"]!,
          pesan: kehadirans[index]["pesan"]!,
          status: kehadirans[index]["status"]!,
          index: index,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}

// List Tamu Pria
class ItemListTamuPria extends StatelessWidget {
  final String tamuName;
  final String kotaTamu;
  final String kehadiran;
  final int index;

  const ItemListTamuPria(
      {super.key,
      required this.tamuName,
      required this.kotaTamu,
      required this.kehadiran,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade600, spreadRadius: 0.5)
          ],
          color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 48,
                width: 48,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kprimaryColor),
                child: Text(
                  "${index + 1}",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tamuName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  Text(kotaTamu,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Image(
                image: AssetImage("assets/icons/ic-whatsapp.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Image(
                image: AssetImage("assets/icons/ic-delete.png"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ListTamuPria extends StatefulWidget {
  const ListTamuPria({super.key});

  @override
  State<ListTamuPria> createState() => _ListTamuPriaState();
}

class _ListTamuPriaState extends State<ListTamuPria> {
  final List<Map<String, String>> tamuPria = [
    {
      "tamuName": "Alfi Firdaus",
      "kotaTamu": "Tasikmalaya",
      "kehadiran": "Hadir"
    },
    {
      "tamuName": "Nizwar Syafuan",
      "kotaTamu": "Kalimantan",
      "kehadiran": "Hadir"
    },
    {"tamuName": "Ari Sawali", "kotaTamu": "Bandung", "kehadiran": "Hadir"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        itemCount: tamuPria.length,
        itemBuilder: (context, index) => ItemListTamuPria(
          tamuName: tamuPria[index]["tamuName"]!,
          kotaTamu: tamuPria[index]["kotaTamu"]!,
          kehadiran: tamuPria[index]["kehadiran"]!,
          index: index,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}

// List Tamu Wanita
class ItemListTamuWanita extends StatelessWidget {
  final String tamuName;
  final String kotaTamu;
  final String kehadiran;
  final int index;

  const ItemListTamuWanita(
      {super.key,
      required this.tamuName,
      required this.kotaTamu,
      required this.kehadiran,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade600, spreadRadius: 0.5)
          ],
          color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 48,
                width: 48,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kprimaryColor),
                child: Text(
                  "${index + 1}",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tamuName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  Text(kotaTamu,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Image(
                image: AssetImage("assets/icons/ic-whatsapp.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Image(
                image: AssetImage("assets/icons/ic-delete.png"),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ListTamuWanita extends StatefulWidget {
  const ListTamuWanita({super.key});

  @override
  State<ListTamuWanita> createState() => _ListTamuWanitaState();
}

class _ListTamuWanitaState extends State<ListTamuWanita> {
  final List<Map<String, String>> tamuPria = [
    {"tamuName": "Ayu Lestari", "kotaTamu": "Jakarta", "kehadiran": "Hadir"},
    {"tamuName": "Siti Rahmawati", "kotaTamu": "Bandung", "kehadiran": "Hadir"},
    {
      "tamuName": "Indah Permata Sari",
      "kotaTamu": "Surabaya",
      "kehadiran": "Hadir"
    },
    {"tamuName": "Rina Marlina", "kotaTamu": "Medan", "kehadiran": "Hadir"},
    {
      "tamuName": "Dewi Anggraini",
      "kotaTamu": "Yogyakarta",
      "kehadiran": "Hadir"
    },
    {
      "tamuName": "Fitri Handayani",
      "kotaTamu": "Makassar",
      "kehadiran": "Hadir"
    },
    {"tamuName": "Nadia Pratiwi", "kotaTamu": "Semarang", "kehadiran": "Hadir"},
    {"tamuName": "Citra Amelia", "kotaTamu": "Palembang", "kehadiran": "Hadir"},
    {"tamuName": "Melati Anindita", "kotaTamu": "Malang", "kehadiran": "Hadir"},
    {
      "tamuName": "Lestari Wulandari",
      "kotaTamu": "Denpasar",
      "kehadiran": "Hadir"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        itemCount: tamuPria.length,
        itemBuilder: (context, index) => ItemListTamuWanita(
          tamuName: tamuPria[index]["tamuName"]!,
          kotaTamu: tamuPria[index]["kotaTamu"]!,
          kehadiran: tamuPria[index]["kehadiran"]!,
          index: index,
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}
