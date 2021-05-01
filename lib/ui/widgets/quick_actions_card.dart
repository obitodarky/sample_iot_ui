import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sample_ui/models/quick_actions.dart';
import 'package:sample_ui/utils/color_utils.dart';

class QuickActionsCard extends StatelessWidget {
  final QuickActions action;

  QuickActionsCard(this.action);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorUtils.cardColors,
        image: DecorationImage(
          image: AssetImage(action.imageUrl),
          alignment: Alignment(0.88,0.75),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(action.actionName),
          if(action.scheduleTime != null) ...[Spacer(),AutoSizeText("SCHEDULED", style: TextStyle(fontSize: 12),),
            AutoSizeText(action.scheduleTime, style: TextStyle(fontSize: 12),), Spacer()]
        ],
      ),
    );
  }
}
