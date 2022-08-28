import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:sticky_footer_scrollview/sticky_footer_scrollview.dart';

class PageFooter extends StatefulWidget {
  const PageFooter({super.key});

  @override
  State<PageFooter> createState() => _PageFooterState();
}

class _PageFooterState extends State<PageFooter> {
  @override
  Widget build(BuildContext context) {
    return Footer(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text(
              'Copyright ©2022, All Rights Reserved.',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0,
                  color: Color(0xFF162A49)),
            ),
            const Text(
              'Powered by XMoon',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0,
                  color: Color(0xFF162A49)),
            ),
          ]),
    );
  }
}
