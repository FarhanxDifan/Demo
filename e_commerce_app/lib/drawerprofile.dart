import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class dwProfile extends StatefulWidget {
  const dwProfile({super.key});

  @override
  State<dwProfile> createState() => _dwProfileState();
}

class _dwProfileState extends State<dwProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.lightGreenAccent,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("images/12.jpg"),
              ),
            ),
          ),
          Text(
            "User Profile",
            style: TextStyle(color: Colors.black87, fontSize: 20),
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(color: Colors.black87, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
