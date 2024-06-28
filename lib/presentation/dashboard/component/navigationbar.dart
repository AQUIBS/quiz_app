import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_app/constants/color.dart';
import 'package:quiz_app/constants/text.dart';
import 'package:quiz_app/controller/navbar_controller.dart';

List<String> menu = ["Home", "Score", "WishList", "Profile"];
List<IconData> icons = const [
  Icons.home_outlined,
  Icons.bar_chart_sharp,
  Icons.favorite_border_outlined,
  Icons.person_3_outlined
];

class FloatingMenu extends ConsumerWidget {
  const FloatingMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigatorBarProvider);
    final double displayWidth = MediaQuery.of(context).size.width;
    return Container(
        height: displayWidth * .155,
        margin: EdgeInsets.all(displayWidth * .05),
        decoration: BoxDecoration(
            color: AppColors.primaryGreen,
            borderRadius: BorderRadius.circular(30)),
        child: ListView.builder(
            itemCount: menu.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    ref.read(navigatorBarProvider.notifier).changeIndex(index);
                    HapticFeedback.lightImpact();
                  },
                  child: Stack(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        width: index == currentIndex
                            ? displayWidth * .32
                            : displayWidth * .18,
                        alignment: Alignment.center,
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width: index == currentIndex ? displayWidth * .32 : 0,
                          height:
                              index == currentIndex ? displayWidth * .12 : 0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: currentIndex == index
                                  ? AppColors.white
                                  : AppColors.secondaryYellow,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        width: index == currentIndex
                            ? displayWidth * .31
                            : displayWidth * .18,
                        alignment: Alignment.center,
                        child: Stack(children: [
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                width: currentIndex == index
                                    ? displayWidth * .13
                                    : 0,
                              ),
                              AnimatedOpacity(
                                  opacity: currentIndex == index ? 1 : 0,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  child: Text(
                                    currentIndex == index ? menu[index] : "",
                                    style: AppTheme.spaceSubtile1.copyWith(
                                        color: AppColors.primaryGreen),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                width: currentIndex == index
                                    ? displayWidth * .03
                                    : 20,
                              ),
                              Icon(
                                icons[index],
                                size: displayWidth * .076,
                                color: currentIndex == index
                                    ? AppColors.primaryGreen
                                    : AppColors.secondaryYellow,
                              )
                            ],
                          )
                        ]),
                      )
                    ],
                  ));
            }));
  }
}
