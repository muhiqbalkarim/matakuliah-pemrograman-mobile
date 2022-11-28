import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tab_bar/tab_dua.dart';
import 'package:tab_bar/tab_empat.dart';
import 'package:tab_bar/tab_satu.dart';
import 'package:tab_bar/tab_tiga.dart';
import 'package:tab_bar/tab_dua.dart';
import 'package:tab_bar/tab_empat.dart';
import 'package:tab_bar/tab_satu.dart';
import 'package:tab_bar/tab_tiga.dart';

class TabBarMain extends StatefulWidget {
  const TabBarMain({super.key});

  @override
  State<TabBarMain> createState() => _TabBarMainState();
}

class _TabBarMainState extends State<TabBarMain>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Materi TAB BAR"),
        bottom: TabBar(
          tabs: [
            Tab(
              text: 'Tab Satu',
              icon: Icon(Icons.ac_unit),
            ),
            Tab(
              text: 'Tab Dua',
              icon: Icon(Icons.ac_unit),
            ),
            Tab(
              text: 'Tab Tiga',
              icon: Icon(Icons.ac_unit),
            ),
            Tab(
              text: 'Tab Empat',
              icon: Icon(Icons.ac_unit),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [TabSatu(), TabDua(), TabTiga(), TabEmpat()],
      ),
    );
  }
}
