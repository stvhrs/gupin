
import 'package:aplikasi_gupin/Widget_Halaman_Scan/Icon_pelajaran.dart';
import 'package:flutter/material.dart';

class ListPelajaran extends StatelessWidget {
  const ListPelajaran({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [ Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconPelajaran("Kimia",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon Kimia.png",Color.fromRGBO(131, 83, 232, 1)),
                              IconPelajaran("Matematika",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon Matematika.png",Color.fromRGBO(166, 30, 4, 1)),
                              IconPelajaran("Biologi",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon Biologi.png",Color.fromRGBO(3, 131, 67, 1)),
                              IconPelajaran("Fisika",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon Fisika.png" , Color.fromRGBO( 80,128,236,1)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconPelajaran("Inggris",
                                  "assets/Halaman Scan/Icon Pelajaran/Ikon Inggris.png", Color.fromRGBO( 0,77,106,1)),
                              IconPelajaran("Indonesia",
                                  "assets/Halaman Scan/Icon Pelajaran/Ikon Indonesia.png", Color.fromRGBO( 222,166,0,1)),
                              IconPelajaran("Geografi",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon Geografi.png",Color.fromRGBO( 228,128,0,1)),
                              IconPelajaran("Sejarah",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon Sejarah.png",Color.fromRGBO( 179,128,0,1)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconPelajaran("Ekonomi",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon Ekonomi.png",Color.fromRGBO(93, 126, 2, 1)),
                              IconPelajaran("PPKN",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon PPKN.png",Color.fromRGBO( 176,112,0,1)),
                              IconPelajaran("Sosiologi",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon Sosiologi.png",Color.fromRGBO( 0,160,213,1)),
                              IconPelajaran("Antropologi",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon Antropolgi.png",Color.fromRGBO( 179,114,0,1)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconPelajaran("PAI",
                                  "assets/Halaman Scan/Icon Pelajaran/Icon Pai.png",Color.fromRGBO(0, 128, 94, 1)),
                             
                            ],
                          ),
                        ),],);
  }
}