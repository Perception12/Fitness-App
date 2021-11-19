import 'package:flutter/material.dart';
import '../colors.dart' as color;

class Encouragement extends StatelessWidget {
  const Encouragement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage(
                    "assets/card.jpg",
                ),
                fit: BoxFit.fill,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  offset: const Offset(8,10),
                  color: color.AppColor.gradientSecond.withOpacity(0.4),
                ),
                BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(-1,-5),
                  color: color.AppColor.gradientSecond.withOpacity(0.3),
                ),
              ]
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(right: 120, bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/figure.png",
                  ),
                ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 100,
            margin: const EdgeInsets.only(left: 150, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                "You are doing great",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: color.AppColor.homePageDetail,
                ),
              ),
              const SizedBox(height: 10,),
              RichText(text: TextSpan(
                text: "keep it up\n",
                style: TextStyle(
                  fontSize: 16,
                  color: color.AppColor.homePagePlanColor,
                ),
                children: const [
                  TextSpan(
                    text: "stick to your plan",
                  ),]
              ),),
             ],
            ),
          ),
        ],
      ),
    );
  }
}
