import 'dart:convert';

import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }
  var name,location;
  var token,role;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
        ],
      ),
    );
  }
}
