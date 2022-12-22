// ignore_for_file: use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 32,
            ),
            const CircleAvatar(
              backgroundColor: Colors.black,
              radius: 110,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('assets/img/profile.png'),
              ),
            ),
            Container(
              width: displayWidth(context) * 0.95,
              height: 50,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.yellow.shade800, Colors.red.shade800],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "Rai Gumelar Septian",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DancingScript',
                      fontSize: 24),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: displayWidth(context) * 0.95,
                    height: 360,
                    padding: const EdgeInsets.all(
                        10), //You can use EdgeInsets like above
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.yellow.shade800, Colors.red.shade800],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'DancingScript',
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
