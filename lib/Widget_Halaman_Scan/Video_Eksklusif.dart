import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class VideoEksklusif extends StatelessWidget {
  const VideoEksklusif({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
                  margin: EdgeInsets.only(right:30,left: 30,top: 15),
                  child: Image.asset("assets/Halaman Scan/Video Eksklusif.png",
                      width: MediaQuery.of(context).size.width),
                
  ) ,
        Shimmer.fromColors(period:Duration(milliseconds: 4000) ,
             baseColor: const Color.fromARGB(5, 46, 46, 46),
                    highlightColor: Colors.white.withOpacity(0.5),
            direction: ShimmerDirection.ltr,
           child: Container(
              margin: EdgeInsets.only(right: 30, left: 30, top: 15),
              child: Image.asset("assets/Halaman Scan/Video Eksklusif.png",
                  width: MediaQuery.of(context).size.width),
            )),
      ],
    );
  }
}