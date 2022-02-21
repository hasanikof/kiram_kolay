import 'package:flutter/material.dart';
import 'package:kiram_kolay/pages/verify_page.dart';

class KodAlWidget extends StatelessWidget {
  KodAlWidget(
      {required this.buttonTitle,
      this.gelenFunction,
      required this.blueIsMain});

  final String buttonTitle;
  final VoidCallback? gelenFunction;
  final bool blueIsMain;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: gelenFunction ?? () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyPage()));
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text(
              buttonTitle,
              textAlign: TextAlign.center,
              style: TextStyle(color: blueIsMain ? Colors.white : Colors.blue),
            ),
            Container(),
          ],
        ),
        style: ElevatedButton.styleFrom(
          elevation: 3,
          minimumSize: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height / 18),
          primary: blueIsMain ? Colors.blue : Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
      ),
    );
  }
}
