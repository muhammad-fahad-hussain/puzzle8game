import 'package:flutter/material.dart';
import 'package:puzzle8game/constants/style.dart';
import 'package:puzzle8game/widgets/customText.dart';

class DrawerMenuItem extends StatelessWidget {
  final void Function() onTap;
  final String itemName;
  final Widget icon;

  const DrawerMenuItem({Key? key, required this.onTap, required this.itemName, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: icon,
      title: CustomText(
        text: itemName,
        color: Colors.white,
        size: 26,
      ),
    );
  }
}
