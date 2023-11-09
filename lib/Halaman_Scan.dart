
import 'package:aplikasi_gupin/Widget_Halaman_Scan/List_Pelajaran.dart';
import 'package:aplikasi_gupin/Widget_Halaman_Scan/PTS&PAS.dart';
import 'package:aplikasi_gupin/Widget_Halaman_Scan/Video_Eksklusif.dart';
import 'package:flutter/material.dart';

class HlamanScan extends StatefulWidget {



  @override
  State<HlamanScan> createState() => _HlamanScanState();
}

class _HlamanScanState extends State<HlamanScan> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          color: Colors.white,
        ),
        Image.asset("assets/Halaman Scan/Top Backgronnd.png",
            width: MediaQuery.of(context).size.width),
        Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.height * 0.13,
            ),
            child: Container(
              padding:
                  EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 15),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/Halaman Scan/Logo Guru Pintar.png",
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        "assets/Halaman Scan/Tombol Logout.png",
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                    )
                  ]),
              height: MediaQuery.of(context).size.height * 0.13,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 30,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromRGBO(117, 29, 148, 1),
                      Color.fromRGBO(117, 76, 215, 1),
                    ],
                  )),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Stack(alignment: Alignment.bottomLeft, children: [
            Image.asset("assets/Halaman Scan/Bottom Background.png",
                width: MediaQuery.of(context).size.width),
            SingleChildScrollView(
                child: Column(
              children: [
                PTSPAS(),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.width * 0.15,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 14, right: 8, bottom: 8, top: 8),
                                child: Text(
                                  "Materi Pembelajaran \nBerupa Video & Buku",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8)),
                                color: Color.fromRGBO(117, 29, 148, 1),
                              ),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8))),
                                padding: EdgeInsets.all(5),
                                child: Image.asset(
                                  "assets/Halaman Scan/LOGO BUPIN.png",
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                ))
                          ],
                        ),
                        ListPelajaran()
                      ]),
                ),
                VideoEksklusif()
              ],
            ))
          ]),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/Halaman Scan/Tombol Scan.png",
                width: MediaQuery.of(context).size.width * 0.2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
