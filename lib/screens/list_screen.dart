// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uts_rai/screens/detail_screen.dart';

import '../helpers/size_helper.dart';

class ListScreen extends StatelessWidget {
  final List judul = [
    "Berita 1",
    "Berita 2",
    "Berita 3",
    "Berita 4",
    "Berita 5"
  ];

  final List foto = [
    "assets/img/slider-1.jpg",
    "assets/img/slider-2.jpg",
    "assets/img/slider-3.jpg",
    "assets/img/slider-4.jpg",
    "assets/img/slider-5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/background.png"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: judul.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10), //You can use EdgeInsets like above
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("${foto[index]}"), fit: BoxFit.cover),
                ),
                child: Text(
                  "${judul[index]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      // color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
