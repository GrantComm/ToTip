import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  Icon icon;
  @override
  Size preferredSize = Size.fromHeight(kToolbarHeight);
  TopBar({@required this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? "Null",
        style: Theme.of(context).textTheme.headline5,
      ),
      centerTitle: false,
      backgroundColor: Theme.of(context).primaryColor,
      actions: [
        IconButton(
          icon: icon ??
              Icon(
                Icons.sim_card_alert,
                color: Colors.white,
              ),
        )
      ],
    );
  }
}
