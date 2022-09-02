import 'package:flutter/material.dart';
import 'package:footer/footer.dart';

class PageFooter extends StatefulWidget {
  const PageFooter({super.key});

  @override
  State<PageFooter> createState() => _PageFooterState();
}

class _PageFooterState extends State<PageFooter> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Footer(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? colors.background
          : null,
      padding: const EdgeInsets.all(10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Text(
              'Copyright ©2022, All Rights Reserved.',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
              ),
            ),
            Text(
              'Powered by XMoon',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.0,
              ),
            ),
          ]),
    );
  }
}
