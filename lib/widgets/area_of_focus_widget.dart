import 'dart:convert';
import 'package:flutter/material.dart';
import '../colors.dart' as color;

class AreaOfFocus extends StatefulWidget {
  const AreaOfFocus({Key? key}) : super(key: key);

  @override
  State<AreaOfFocus> createState() => _AreaOfFocusState();
}

class _AreaOfFocusState extends State<AreaOfFocus> {
  List info = [];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value){
      info = json.decode(value);
    });
  }

  @override
  void initState(){
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: OverflowBox(
      maxWidth: MediaQuery.of(context).size.width,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
          itemCount: info.length.toDouble()~/2,
          itemBuilder: (_, i){
            int a = 2 * i;
            int b = 2 * i + 1;
            return Row(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width-90)/2,
                  margin: const EdgeInsets.only(
                    left: 30,
                    right: 15,
                    bottom: 15,
                    top: 15,
                  ),
                  height: 150,
                  padding: const EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(info[a]["img"]),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: const Offset(5,5),
                          color: color.AppColor.gradientSecond.withOpacity(0.2),
                        ),
                        BoxShadow(
                          blurRadius: 3,
                          offset: const Offset(-5,-5),
                          color: color.AppColor.gradientSecond.withOpacity(0.2),
                        ),
                      ]
                  ),
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(info[a]["title"],
                        style: TextStyle(
                          fontSize: 20,
                          color: color.AppColor.homePageDetail,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width-90)/2,
                  height: 150,
                  margin: const EdgeInsets.only(
                    left: 15,
                    right: 30,
                    bottom: 15,
                    top: 15,
                  ),
                  padding: const EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(info[b]["img"]),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: const Offset(5,5),
                          color: color.AppColor.gradientSecond.withOpacity(0.2),
                        ),
                        BoxShadow(
                          blurRadius: 3,
                          offset: const Offset(-5,-5),
                          color: color.AppColor.gradientSecond.withOpacity(0.2),
                        ),
                      ]
                  ),
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(info[b]["title"],
                        style: TextStyle(
                          fontSize: 20,
                          color: color.AppColor.homePageDetail,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ),
    );
  }
}
