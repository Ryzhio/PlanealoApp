import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final Widget? title;
  final Widget? leading;
  final Widget? subtitle;
  final Widget? trailing;
  final Function()? onTap;

  const CardCustom({
    super.key,
    this.title,
    this.leading,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.green[100],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              trailing: trailing,
              leading: leading,
              title: title,
              subtitle: subtitle,
            ),
          ],
        ),
      ),
      onTap: () => onTap!(),
    );
  }
}
