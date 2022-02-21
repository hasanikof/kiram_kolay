import 'package:flutter/material.dart';
import 'package:kiram_kolay/const.dart';
import 'package:kiram_kolay/widgets/kod_al_widget.dart';
import 'package:kiram_kolay/widgets/text_form_field_widget.dart';
import 'package:kiram_kolay/widgets/title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TitleWidget1(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          flex: 2,
                          child: TextFormFieldWidget(
                            gelenFunction: (){},
                           
                          )),
                      Expanded(
                          flex: 5,
                          child: TextFormFieldWidget(
                            infoText: "Cep Telefonu",
                          )),
                    ],
                  ),
                  TitleWidget2(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  KodAlWidget(buttonTitle: "SMS ile Kod Alın",blueIsMain: true,),
                  KodAlWidget(buttonTitle: "WhatsApp ile Kod Alın",blueIsMain: false,),
                  Text(kullanimKosullari,textAlign: TextAlign.center,style: myInfoTextStyle1,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
