import 'dart:developer';

import 'package:aplikasi_gupin/Halaman_Bab.dart';
import 'package:flutter/material.dart';

class IconPelajaran extends StatelessWidget {
  final String text;
  final String imagePath;
  final Color color;
  const IconPelajaran(this.text, this.imagePath,this.color);
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>   HlamanBab(text, imagePath,color),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1, 0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(
               _createRoute(),
              
            );
          },
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: Hero(tag: text,
                  child: Image.asset(
                    imagePath,
                    width: MediaQuery.of(context).size.width * 0.125,
                  ),
                ),
              ),
              Positioned(
                bottom: -15,
                child: Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      fontFamily: "Nunito"),
                ),
              )
            ],
          )),
    );
  }
}
