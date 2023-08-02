// ignore_for_file: constant_identifier_names

import 'package:e_commerce_app/contactpage.dart';
import 'package:e_commerce_app/dashboardpage.dart';
import 'package:e_commerce_app/drawerprofile.dart';
import 'package:e_commerce_app/eventpage.dart';
import 'package:e_commerce_app/feedback.dart';
import 'package:e_commerce_app/myprofile.dart';
import 'package:e_commerce_app/noterpage.dart';
import 'package:e_commerce_app/notification.dart';
import 'package:e_commerce_app/privacyPolicy.dart';
import 'package:e_commerce_app/settingpage.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var currentPage = drawerSection.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == drawerSection.dashboard) {
      container = dashboardpage();
    } else if (currentPage == drawerSection.contacts) {
      container = contactPage();
    } else if (currentPage == drawerSection.events) {
      container = eventpage();
    } else if (currentPage == drawerSection.notes) {
      container = notePage();
    } else if (currentPage == drawerSection.settings) {
      container = settingpage();
    } else if (currentPage == drawerSection.notifications) {
      container = notificationPage();
    } else if (currentPage == drawerSection.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == drawerSection.send_feedback) {
      container = sendUsFeedBack();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        actions: [
          IconButton(onPressed: () => myProfile(), icon: Icon(Icons.person)),
        ],
        title: Center(child: Text("OIT Commerce")),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text(
            "Welcome",
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [dwProfile(), myDrawerList()],
          ),
        )),
      ),
    );
  }

  Widget myDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == drawerSection.dashboard ? true : false),
          menuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == drawerSection.contacts ? true : false),
          menuItem(3, "Events", Icons.event,
              currentPage == drawerSection.events ? true : false),
          menuItem(4, "Notes", Icons.notes,
              currentPage == drawerSection.notes ? true : false),
          Divider(),
          menuItem(5, "Settings", Icons.settings_outlined,
              currentPage == drawerSection.settings ? true : false),
          menuItem(6, "Notifications", Icons.notifications_outlined,
              currentPage == drawerSection.notifications ? true : false),
          Divider(),
          menuItem(7, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == drawerSection.privacy_policy ? true : false),
          menuItem(8, "Send feedback", Icons.feedback_outlined,
              currentPage == drawerSection.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      child: InkWell(
        onTap: (() {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = drawerSection.dashboard;
            } else if (id == 2) {
              currentPage = drawerSection.contacts;
            } else if (id == 3) {
              currentPage = drawerSection.events;
            } else if (id == 4) {
              currentPage = drawerSection.notes;
            } else if (id == 5) {
              currentPage = drawerSection.settings;
            } else if (id == 6) {
              currentPage = drawerSection.notifications;
            } else if (id == 7) {
              currentPage = drawerSection.privacy_policy;
            } else if (id == 8) {
              currentPage = drawerSection.send_feedback;
            }
          });
        }),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum drawerSection {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  // ignore: constant_identifier_names
  privacy_policy,
  send_feedback
}
