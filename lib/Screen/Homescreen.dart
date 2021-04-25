import 'package:barberapp_contest/Pages/ReviewPages.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("blablabla"),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.pink[100],
          tabs: [
            Tab(child: Text("GALLERY")),
            Tab(child: Text("ABOUT")),
            Tab(child: Text("REVIEW")),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [Text("gallery"), Text("about"), ReviewPages()],
      ),
    );
  }
}
