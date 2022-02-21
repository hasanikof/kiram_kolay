import 'package:flutter/material.dart';

class CompanyImage extends StatelessWidget {
  const CompanyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "images/kiramkolay.png",
        width: (MediaQuery.of(context).size.width) / 3,
      ),
    );
  }
}
