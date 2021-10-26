import 'package:admin_panel/controllers/menu_controller.dart';
import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';
import 'profile_card.dart';
import 'search_field.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(onPressed: context.read<MenuController>().controlMenu, icon: const Icon(Icons.menu)),
        if (!Responsive.isMobile(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        const SearchField(),
        const ProfileCard(),
      ],
    );
  }
}
