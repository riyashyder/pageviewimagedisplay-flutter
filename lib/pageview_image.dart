


import 'package:flutter/material.dart';
import 'package:pageviewimagedisplay/appdata.dart';
import 'package:pageviewimagedisplay/displayimage.dart';

class PageViewImage extends StatefulWidget {
  const PageViewImage({super.key});

  @override
  State<PageViewImage> createState() => _PageViewImageState();
}

class _PageViewImageState extends State<PageViewImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Quotes of Warren Buffet',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal:20, vertical: 30),
              width: 400,
              height:400,
              child: PageView.builder(
                itemCount: appdatalist.length,
                  itemBuilder: (context, index) {
                   return DisplayImage(appdata: appdatalist[index]);
                  }
            ),
            ),
          ],
        ),
      ),

    );
  }
}