import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final String txt;
  final ValueChanged<String> onChanged;
  final int maxLines;

  const TextFieldWidget(
      {Key? key,
      required this.label,
      required this.txt,
      this.maxLines = 1,
      required this.onChanged})
      : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.txt);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              widget.label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          TextField(
            controller: controller,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
          )
        ],
      ),
    );
  }
}
