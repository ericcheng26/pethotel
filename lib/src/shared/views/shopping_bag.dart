import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:badges/badges.dart';

//paw_solid
class ShoppingBag extends StatefulWidget {
  const ShoppingBag({super.key});

  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Badge(
        position: BadgePosition.topEnd(top: 13, end: -3),
        animationDuration: const Duration(milliseconds: 300),
        animationType: BadgeAnimationType.slide,
        badgeContent: Text(
          _counter.toString(),
          style: const TextStyle(color: Colors.white),
        ),
        child: IconButton(
            icon: const Icon(CupertinoIcons.paw_solid), onPressed: () {}),
      ),
    );
  }
}
