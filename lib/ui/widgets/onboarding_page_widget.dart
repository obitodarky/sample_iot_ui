import 'package:flutter/material.dart';
import 'package:sample_ui/ui/home_page.dart';
import 'package:sample_ui/utils/color_utils.dart';
import 'package:sample_ui/utils/mock_data.dart';

class OnBoardingPageWidget extends StatelessWidget {
  final List onBoardingData;
  final PageController controller;

  OnBoardingPageWidget(this.onBoardingData, this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/png/DARK_MODE/ASSETS (${onBoardingData == MockData.onBoardingScreenData_1  ? '65' : '66'}).png"),
              fit: BoxFit.fill
          )
      ),
      alignment: Alignment.bottomCenter,
      child: Container(
        height: (MediaQuery.of(context).size.height * 25) / 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: ColorUtils.onboardingCardColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/png/DARK_MODE/ASSETS (${onBoardingData == MockData.onBoardingScreenData_1 ? '59' : '60'}).png"),
                    SizedBox(width: 10,),
                    Image.asset("assets/png/DARK_MODE/ASSETS (${onBoardingData == MockData.onBoardingScreenData_2 ? '59' : '60'}).png"),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width/1.5,
                  child: Column(
                    children: [
                      Text("${onBoardingData[0]}", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 8,),
                      Text("${onBoardingData[1]}", textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Text("SKIP", style: TextStyle(color: Colors.white),),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: (){
                        if(onBoardingData == MockData.onBoardingScreenData_1){
                          controller.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                        } else {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        }
                      },
                      child: Text(onBoardingData == MockData.onBoardingScreenData_1 ? "NEXT" : "GET STARTED"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
