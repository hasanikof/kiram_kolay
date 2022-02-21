import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class PinCodeWidget extends StatefulWidget {
  const PinCodeWidget({Key? key}) : super(key: key);

  @override
  _PinCodeWidgetState createState() => _PinCodeWidgetState();
}

class _PinCodeWidgetState extends State<PinCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      pinTheme: PinTheme(
        inactiveColor: Colors.grey,
        selectedColor: Colors.blue,
        activeColor: Colors.grey,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: MediaQuery.of(context).size.width/8,
        fieldWidth: MediaQuery.of(context).size.width/8,
        activeFillColor: Colors.white,
      ),
      appContext: context,
      length: 6,
      onChanged: (x) {},
    );
  }
}
