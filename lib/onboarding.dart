import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/constants.dart';
import 'package:flutter_onboarding_screen/customshape.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;

  List sliders = [
    {
      "title": "DISCOVER PLACE NEAR YOU",
      "description":
          "We make it simple to find the food you crave. Enter your address and let us do rest.",
      "imgUrl": "images/shop.png"
    },
    {
      "title": "CHOOSE A TASTY DISH",
      "description":
          "When you order eat street we'll hook you up with exclusive coupons, special discount and rewards.",
      "imgUrl": "images/burger.png"
    },
    {
      "title": "PICK UP OR DELIVERY",
      "description":
          "We make ordering fast, simple, cheap and free - no matter if you order online or crash.",
      "imgUrl": "images/bike.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Transform.flip(
                flipX: true,
                child: CustomPaint(
                  size: Size(
                    MediaQuery.of(context).size.width,
                    (MediaQuery.of(context).size.width * 0.5).toDouble(),
                  ),
                  painter: CustomShape(),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: sliders.length,
              itemBuilder: (BuildContext context, i) {
                return Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                      child: Image.asset(sliders[i]["imgUrl"]),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Column(
                        children: [
                          Text(
                            sliders[i]["title"],
                            style: TextStyle(
                              fontSize: 36.0,
                              color: kTextHeadingColor,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                              sliders[i]["description"],
                              style: TextStyle(
                                fontSize: 16.5,
                                color: kTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 3,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = currentIndex + 1;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 16.5,
                          color: kSkipButtonColor,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right_sharp,
                        color: kSkipButtonColor,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: sliders
                      .map(
                        (i) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.only(right: 10.0),
                          width:
                              currentIndex == sliders.indexOf(i) ? 43.0 : 20.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: currentIndex == sliders.indexOf(i)
                                ? kPrimaryColor
                                : const Color.fromRGBO(217, 225, 228, 1),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
