import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sqflite_flutter/models/placepri_model.dart';

class DetailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
  const DetailScreen({super.key, required this.placeInfo});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            widget.placeInfo.image,
            width: double.infinity,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.428,
          ),
          SafeArea(
            child: Column(
              children: [
                //APPBAR BUTTONS
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.orange[400],
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(
                                  Ionicons.arrow_back_outline,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Ionicons.bookmark_sharp,
                                color: Colors.orange[400],
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.placeInfo.name,
                                  style: const TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Ionicons.location,
                                      color: Colors.orange[400],
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      widget.placeInfo.location,
                                      style: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  'Detalles del Viaje',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.placeInfo.desc,
                                  style: const TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  height: 5,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Duración',
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${widget.placeInfo.days} días',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Duración',
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${widget.placeInfo.distance}  km',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MaterialButton(
                                  color: Colors.orange[400],
                                  minWidth: double.infinity,
                                  height: 55,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Reserva tu Viaje',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
