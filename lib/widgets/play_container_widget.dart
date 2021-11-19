import 'package:flutter/material.dart';
import '../colors.dart' as color;

class PlayContainer extends StatelessWidget {
  const PlayContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.AppColor.gradientFirst.withOpacity(0.8),
            color.AppColor.gradientSecond.withOpacity(0.9),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          topRight: Radius.circular(80),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 10),
            blurRadius: 15,
            color: color.AppColor.gradientSecond.withOpacity(0.5),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 20, top: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Next Workout',
              style: TextStyle(
                fontSize: 16,
                color: color.AppColor.homePageContainerTextSmall,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Leg Toning',
              style: TextStyle(
                fontSize: 25,
                color: color.AppColor.homePageContainerTextBig,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'and Glutes Workout',
              style: TextStyle(
                fontSize: 25,
                color: color.AppColor.homePageContainerTextBig,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      size: 20,
                      color: color.AppColor.homePageContainerTextSmall,
                    ),
                    const SizedBox(width: 5,),
                    Text(
                      '60 min',
                      style: TextStyle(
                        fontSize: 14,
                        color: color.AppColor.homePageContainerTextBig,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(4, 8),
                        color: color.AppColor.gradientFirst,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.play_circle_fill,
                    size: 60,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
