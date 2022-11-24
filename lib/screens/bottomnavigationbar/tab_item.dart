// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabItem extends StatefulWidget {
  TabItem(
      {Key? key,
      required this.selected,
      required this.iconData,
      required this.title,
      required this.callbackFunction})
      : super(key: key);
  String title;
  IconData iconData;
  bool selected;
  Function callbackFunction;
  @override
  // ignore: library_private_types_in_public_api
  _TabItemState createState() => _TabItemState();
}

const double iCONOFF = -3;
const double iCONON = 0;
const double tEXTOFF = 3;
const double tEXTON = 1;
const double aLPHAOFF = 0;
const double aLPHAON = 1;
const int aNIMDURATION = 300;

class _TabItemState extends State<TabItem> {
  double iconYAlign = iCONON;
  double textYAlign = tEXTOFF;
  double iconAlpha = aLPHAON;

  @override
  void initState() {
    super.initState();
    _setIconTextAlpha();
  }

  @override
  void didUpdateWidget(TabItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    _setIconTextAlpha();
  }

  _setIconTextAlpha() {
    setState(() {
      iconYAlign = (widget.selected) ? iCONOFF : iCONON;
      textYAlign = (widget.selected) ? tEXTON : tEXTOFF;
      iconAlpha = (widget.selected) ? aLPHAOFF : aLPHAON;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        // ignore: duplicate_ignore
        child: Stack(fit: StackFit.expand, children: [
      Container(
          height: double.infinity,
          width: double.infinity,
          child: AnimatedAlign(
              duration: const Duration(milliseconds: aNIMDURATION),
              alignment: Alignment(0, textYAlign),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  )))),
      Container(
          height: double.infinity,
          width: double.infinity,
          child: AnimatedAlign(
              duration: const Duration(milliseconds: aNIMDURATION),
              curve: Curves.easeIn,
              alignment: Alignment(0, iconYAlign),
              child: AnimatedOpacity(
                  duration: const Duration(milliseconds: aNIMDURATION),
                  opacity: iconAlpha,
                  child: IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      padding: const EdgeInsets.all(0),
                      alignment: const Alignment(0, 0),
                      icon: Icon(
                        widget.iconData,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        widget.callbackFunction();
                      }))))
    ]));
  }
}
