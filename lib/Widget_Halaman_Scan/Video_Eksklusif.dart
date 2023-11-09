import 'package:flutter/material.dart';

class VideoEksklusif extends StatelessWidget {
  const VideoEksklusif({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                     margin: EdgeInsets.only(right:30,left: 30,top: 15),
                  padding: const EdgeInsets.only(bottom: 150),
                  child: Image.asset("assets/Halaman Scan/Video Eksklusif.png",
                      width: MediaQuery.of(context).size.width),
                );
  }
}