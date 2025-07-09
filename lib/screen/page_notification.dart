
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';


//https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/event/dos:flutter_festival_bogor_2022_mc_170322010111.png

class PageNotification extends StatelessWidget {
  const PageNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Toast"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          children: [
            ListTile(
              title: Text('Normal toast'),
              onTap: () {
                showToast('This is toast',
                    context: context,
                    axis: Axis.horizontal,
                    alignment: Alignment.center,
                    position: StyledToastPosition.bottom);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text('Permanent toast'),
              onTap: () {
                showToast(
                  'This is a permanent toast',
                  context: context,
                  duration: Duration.zero,
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                'Normal toast(slideFromTop anim)',
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.slideFromTop,
                    reverseAnimation: StyledToastAnimation.slideToTop,
                    position: StyledToastPosition.top,
                    startOffset: Offset(0.0, -3.0),
                    reverseEndOffset: Offset(0.0, -3.0),
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.fastOutSlowIn);
              },
            ),
            Divider(
              height: 0.5,
            ),
          ],
        ),
      ),
    );
  }
  }