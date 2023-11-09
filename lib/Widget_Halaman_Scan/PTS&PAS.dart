import 'package:flutter/material.dart';

class PTSPAS extends StatelessWidget {
  const PTSPAS({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
                  margin: EdgeInsets.only(right:30,left: 30,top: 15),
                  child: Image.asset("assets/Halaman Scan/PTS & PAS.png",
                      width: MediaQuery.of(context).size.width),
                );
  }
}