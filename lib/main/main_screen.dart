import 'package:dashboard/controllers/menu_app_controller.dart';
import 'package:dashboard/screens/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/dashboard/dashboard_screen.dart';
import 'components/side_bar.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideBar(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this only in Desktop screen
            if(Responsive.isDesktop(context))
              const Expanded(
              // It takes 1/6 part of the screen
              child: SideBar(),
            ),
            
            const Expanded(
              // It takes 5 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
