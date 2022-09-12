import 'package:flutter/material.dart';
import 'package:sipmm/shared/shared.dart';

class ListTileCustom extends StatelessWidget {
  const ListTileCustom(
      {Key? key,
      this.color,
      this.title,
      this.onTap,
      this.icon,
      this.isSelected = false})
      : super(key: key);
  final Color? color;
  final String? title;
  final Function? onTap;
  final IconData? icon;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enableFeedback: true,
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        title ?? '',
        style: FontApp.primaryStyle.copyWith(
            color: isSelected! ? ColorApp.primaryColor : Colors.black),
      ),
    );
  }
}
