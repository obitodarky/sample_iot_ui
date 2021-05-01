import 'package:flutter/material.dart';
import 'package:sample_ui/ui/widgets/onboarding_page_widget.dart';
import 'package:sample_ui/utils/mock_data.dart';

class OnBoarding extends StatelessWidget {
  PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: PageView(
          controller: _controller,
          physics: BouncingScrollPhysics(),
          children: [
            OnBoardingPageWidget(MockData.onBoardingScreenData_1, _controller),
            OnBoardingPageWidget(MockData.onBoardingScreenData_2, _controller)
          ],
        )
      ),
    );
  }
}




