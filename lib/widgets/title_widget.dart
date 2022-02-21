import 'package:flutter/material.dart';
import 'package:kiram_kolay/const.dart';
import 'package:kiram_kolay/widgets/company_image_widget.dart';

class TitleWidget1 extends StatefulWidget {
  const TitleWidget1({Key? key}) : super(key: key);

  @override
  _TitleWidgetState createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CompanyImage(),
          SizedBox(
            height: 15,
          ),
          Text(
            girisTitletext,
            style: myTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            girisInfoText1,
            style: myInfoTextStyle1,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}

class TitleWidget2 extends StatelessWidget {
  const TitleWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      girisInfoText2,
      style: myInfoTextStyle2,
      textAlign: TextAlign.center,
    );
  }
}
