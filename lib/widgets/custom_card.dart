import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planealo_app/models/users.dart';

class CustomCard extends StatefulWidget {
  final User user;
  const CustomCard({Key? key, required this.user}) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      // height: size.height * 0.5,
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 7),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                (widget.user.perfilL != '')
                    ? ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image.asset(
                          widget.user.perfilL,
                          fit: BoxFit.cover,
                        ),
                      )
                    : const ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: SizedBox(
                          width: 300,
                          height: 200,
                          child: Center(
                            child: Icon(Icons.photo_size_select_large_outlined),
                          ),
                        ),
                      ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    width: 48,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.user.perfilD,
                        style: GoogleFonts.josefinSans(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 65,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xfff47c8a),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xfff4aa7c),
                              Color(0xfff47c8a),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            widget.user.perfilZ,
                            style: GoogleFonts.josefinSans(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 30,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          reverse: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (_, __) {
                            return Align(
                              widthFactor: 0.5,
                              child: ClipOval(
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    ),
                                    // image: DecorationImage(
                                    //   image: AssetImage(widget.user.perfilA),
                                    // ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      // const Icon(Icons.more_vert),
                    ],
                  ),
                  // const SizedBox(height: 10),
                  // Text(
                  //   'Un muy Hermoso Lugar <3',
                  //   style: GoogleFonts.josefinSans(
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.black38,
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
