import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class contactPage extends StatefulWidget {
  const contactPage({super.key});

  @override
  State<contactPage> createState() => _contactPageState();
}

class _contactPageState extends State<contactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "OIT",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
