import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sample_ui/utils/color_utils.dart';

class RowContainers extends StatelessWidget {
  final List list;
  RowContainers(this.list);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: list.length > 3 ? double.infinity : MediaQuery.of(context).size.width/2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _card(),
      ),
    );
  }

  List<Widget> _card() {
    List<Widget> cardList = [];
    list.forEach((element) {
      cardList.add(Container(
        height: element == 'First Floor' ? 64 : 56,
        width: element == 'First Floor' ? 64 : 56,
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: element == 'First Floor' ? ColorUtils.cardColors : ColorUtils.deselectedCardColor,
        ),
        child: AutoSizeText(
          "$element",
          minFontSize: 10,
          maxLines: 2,
          wrapWords: false,
          style: TextStyle(
              fontSize: element == 'First Floor' ? 12 : 10,
              fontWeight: element == 'First Floor' ? FontWeight.bold : FontWeight.normal),
          textAlign: TextAlign.center,
        ),
      ));
    });
    return cardList;
  }
}
