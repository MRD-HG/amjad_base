import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData leadingIcon;
  final Color iconColor;
  final double iconSize;
  final VoidCallback? onIconPressed;

  const CustomAppBar({
    Key? key,
    required this.leadingIcon,
    this.iconColor = const Color(0xFFD0B87A),
    this.iconSize = 30,
    this.onIconPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // Add this line to prevent automatic back button
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (leadingIcon == Icons.menu || leadingIcon == Icons.arrow_back_outlined)
            IconButton(
              onPressed: onIconPressed,
              icon: Icon(
                leadingIcon,
                color: Colors.black,
                size: iconSize,
              ),
            )
          else
            Icon(
              leadingIcon,
              color: iconColor,
              size: iconSize,
            ),
        ],
      ),
      toolbarHeight: 100,

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Image.asset(
            "assets/logoamjad.png",
            width: 240,
            height: 240,
          ),
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0.1,
      shadowColor: Colors.grey.withOpacity(0.5),
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}