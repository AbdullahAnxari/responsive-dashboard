import 'package:dashboard/controllers/menu_app_controller.dart';
import 'package:dashboard/screens/responsive.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import '../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(onPressed: context.read<MenuAppController>().controlMenu, icon: const Icon(Iconsax.menu)),
        if(!Responsive.isMobile(context))
        Text(
          'Dashboard',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        if(!Responsive.isMobile(context))
         Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(
          child: SearchField(),
        ),
        const SizedBox(width: 10),
        const ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white10)),
      child:  Row(
        children: [
          const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg')),
          if(!Responsive.isMobile(context))
          const Padding(
            padding: EdgeInsets.all(defaultPadding / 2),
            child: Text('John'),
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 7),
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primaryColor,
            ),
            child: const Icon(Iconsax.search_normal_1),
          ),
        ),
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
