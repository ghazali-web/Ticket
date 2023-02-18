import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('what are you\'re loocking for ?',
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(35))),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
              child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
              color: const Color(0xFFF4F6Fd),
            ),
            child: Row(
              children: [
                Container(
                  width: size.width * .44,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(20))),
                    color: Colors.white,
                  ),
                  child: const Center(child: Text('airlaine ticket')),
                ),
                Container(
                  width: size.width * .44,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(20))),
                    color: Colors.grey.shade200,
                  ),
                  child: const Center(child: Text('Hotels')),
                ),
              ],
            ),
          )),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(
            icon: Icons.label_rounded,
            text: 'Arrival',
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(18),
                  horizontal: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              ),
              child: Center(
                child: Text(
                  'Find Ticket',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          Gap(AppLayout.getHeight(25)),
          const AppDoubleTextWidget(
            bigText: 'Upcoming Flight ',
            smallText: 'View All',
          )
        ],
      ),
    );
  }
}
