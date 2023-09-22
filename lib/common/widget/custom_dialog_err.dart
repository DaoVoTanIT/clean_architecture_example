import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/export.dart';

class CustomWarning extends StatelessWidget {
  const CustomWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundWhite,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(0),
          boxShadow: [
            const BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0)),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min, // To make the card compact
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 150, color: Colors.indigo),
                Column(
                  children: [
                    const Image(
                        image: AssetImage(icCondition),
                        height: 50,
                        color: backgroundWhite,
                        fit: BoxFit.cover),
                    const SizedBox(
                      height: 16,
                    ),
                    Text('No Internet Connection',
                        textAlign: TextAlign.center,
                        style: h5(context: context, fontWeight: '700')),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                    'Please check your internet connection nd try again.',
                    style: h5(context: context, fontWeight: '700'))),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                // decoration: boxDecoration(bgColor: Colors.indigo, radius: 30),
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                  boxShadow: [BoxShadow(color: Colors.transparent)],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text('Retry', style: h5(context: context)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
