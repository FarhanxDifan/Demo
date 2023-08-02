import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class notificationPage extends StatefulWidget {
  const notificationPage({super.key});

  @override
  State<notificationPage> createState() => _notificationPageState();
}

class _notificationPageState extends State<notificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("data shown"),
    );
  }
}
