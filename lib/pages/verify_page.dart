import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:kiram_kolay/const.dart';
import 'package:kiram_kolay/pages/main_page.dart';
import 'package:kiram_kolay/widgets/company_image_widget.dart';
import 'package:kiram_kolay/widgets/kod_al_widget.dart';
import 'package:kiram_kolay/widgets/pin_code_widget.dart';
import 'package:kiram_kolay/widgets/timer_widget.dart';

class VerifyPage extends StatefulWidget {
  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CompanyImage(),
                  SizedBox(height: 15),
                  Text(
                    "Telefonunuza gelen kodu girin",
                    style: myTitleTextStyle,
                  ),
                  Text(
                      "+90xxxxxxxxxx numarasına gönderdiğimiz 6 haneli kodu giriniz.",
                      style: myInfoTextStyle1,
                      textAlign: TextAlign.center),
                  SizedBox(height: 15),
                  PinCodeWidget(),
                  SizedBox(height: 15),
                  TimerWidget(),
                  SizedBox(height: 15),
                  Text(
                    "Kodu almadım",
                    style: myInfoTextStyle1,
                  ),
                  Expanded(child: Container()),
                  KodAlWidget(
                    buttonTitle: "Onayla",
                    blueIsMain: true,
                    gelenFunction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainPage()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
