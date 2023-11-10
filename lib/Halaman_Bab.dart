import 'package:flutter/material.dart';

class HlamanBab extends StatefulWidget {
  final String pelajaran;
  final String img;
  final Color color;
  HlamanBab(this.pelajaran, this.img, this.color);
  @override
  State<HlamanBab> createState() => _HlamanBabState();
}

class _HlamanBabState extends State<HlamanBab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.white,),
        Opacity( opacity: 0.08,child: Image.asset("assets/Halaman Bab/Background.png")),
        Scaffold(
            appBar: PreferredSize(
              preferredSize:
                  Size.fromHeight(MediaQuery.of(context).size.height * 0.3),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.topRight,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 15),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    widget.pelajaran,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  Text("SMA X ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 17))
                                ],
                              ),
                            ),
                          ]),
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.5),
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
                              widget.color,
                              widget.color.withOpacity(0.6),
                            ],
                          )),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: CircleAvatar(
                            maxRadius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: widget.color,
                            ),
                          )),
                    ),
                    Positioned(
                      bottom: -35,
                      right: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Hero(
                          tag: widget.pelajaran,
                          child: Image.asset(
                            widget.img,
                            width: MediaQuery.of(context).size.width * 0.23,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: ListView.builder(
              padding: EdgeInsets.only(top: 30),
              itemCount: 8,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8)),
                child: Column(children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: widget.color,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5))),
                          child: Text(
                            "SMA X BAB 3 Trigonometri",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                         (1+ index).toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.ondemand_video_rounded,
                                  color: widget.color,
                                ),
                              ),
                              Text("Tonton Video",style: TextStyle(color: Colors.grey.shade800,fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          thickness: 2,
                          width: 0,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8,bottom: 8,right: 8),
                                  child: Icon(
                                    Icons.menu_book_rounded,
                                    color: widget.color,
                                  ),
                                ),
                                Text("Baca Materi",style: TextStyle(color: Colors.grey.shade800,fontWeight: FontWeight.w700),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            )),
      ],
    );
  }
}
