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
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                      height: 45.0,
                      width: 45.0,
                      child: Center(
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                25.0), // half of height and width of Image
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.audiotrack,
                              size: 20.0,
                            ),
                            color: const Color(0xFF162A49),
                            onPressed: () {},
                          ),
                        ),
                      )),
                  SizedBox(
                      height: 45.0,
                      width: 45.0,
                      child: Center(
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                25.0), // half of height and width of Image
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.fingerprint,
                              size: 20.0,
                            ),
                            color: const Color(0xFF162A49),
                            onPressed: () {},
                          ),
                        ),
                      )),
                  SizedBox(
                      height: 45.0,
                      width: 45.0,
                      child: Center(
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                25.0), // half of height and width of Image
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.call,
                              size: 20.0,
                            ),
                            color: const Color(0xFF162A49),
                            onPressed: () {},
                          ),
                        ),
                      )),
                ],
              ),
            ),
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
