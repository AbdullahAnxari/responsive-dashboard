import 'package:dashboard/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/icons/logo.png")),
            DrawerListTile(
              iconImage: 'assets/icons/menu_dashboard.svg',
              title: 'Dashboard',
              press: () {},
            ),
            DrawerListTile(
              iconImage: 'assets/icons/menu_tran.svg',
              title: 'Transaction',
              press: () {},
            ),
            DrawerListTile(
              iconImage: 'assets/icons/menu_task.svg',
              title: 'Task',
              press: () {},
            ),
            DrawerListTile(
              iconImage: 'assets/icons/menu_doc.svg',
              title: 'Documents',
              press: () {},
            ),
            DrawerListTile(
              iconImage: 'assets/icons/menu_store.svg',
              title: 'Store',
              press: () {},
            ),
            DrawerListTile(
             iconImage: 'assets/icons/menu_notification.svg',
              title: 'Notifiation',
              press: () {},
            ),
            DrawerListTile(
              iconImage: 'assets/icons/menu_profile.svg',
              title: 'Profile',
              press: () {},
            ),
            DrawerListTile(
              iconImage: 'assets/icons/menu_setting.svg',
              title: 'Setting',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  

  const DrawerListTile({
    Key? key,
    required this.iconImage,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String iconImage;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        iconImage,color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}

