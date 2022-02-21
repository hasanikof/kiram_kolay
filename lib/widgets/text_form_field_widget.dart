import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatefulWidget {
//  const TextFormFieldWidget({Key? key}) : super(key: key);
  TextFormFieldWidget({this.title, this.gelenFunction, this.infoText});

  String? infoText;
  String? title;

  final VoidCallback? gelenFunction;

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: widget.gelenFunction == null
          ? Container(
              //width: (MediaQuery.of(context).size.width / 2) - 10,
        width: (MediaQuery.of(context).size.width*2)/3,      
        child: TextFormField(
                autofocus: false,
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
                decoration: InputDecoration(
              labelText: widget.infoText,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5),
                  ),
                ),
              ),
            )
          : Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: CountryCodePicker(
                searchDecoration: InputDecoration(
                  helperText: "Ülkenizi Seçiniz",
                  hintText: "",
                  labelText: "Ülke adı veya kod ile arama yapın",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5),
                  ),
                ),
                showFlag: false,
                showFlagDialog: true,
                initialSelection: "TR",
              ),
            ),
    );
  }
}
