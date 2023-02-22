import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:book_ticket/widgets/Column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getWidth(20)),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/img_1.png'),
                    )),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Book Ticket',
                    style: Styles.headLineStyle1,
                  ),
                  const Gap(2),
                  Text(
                    'New-York',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFFEF4F3),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100))),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getWidth(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15),
                        ),
                        const Gap(8),
                        const Text(
                          'Premium Status',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('you\'re tapped');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ],
          ),
          const Gap(10),
          Divider(
            color: Colors.grey.shade300,
          ),
          const Gap(10),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(18),
                    )),
              ),
              Positioned(
                top: -40,
                right: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color(0xFF264cd2), width: 13)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(16),
                    vertical: AppLayout.getHeight(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_circle_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'you have 95 flight in a year ',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                        Text(
                          'you\'ve got a new award',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(25),
          Text(
            'Accumulated miles ',
            style: Styles.headLineStyle2,
          ),
          const Gap(25),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(15),
                vertical: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      color: Colors.grey.shade200,
                      spreadRadius: 1),
                ]),
            child: Text(
              '192 182 ',
              style: TextStyle(
                  color: Styles.textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 45),
            ),
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Miles Accused',
                style: Styles.headLineStyle4.copyWith(fontSize: 16),
              ),
              Text(
                '11 june 2021',
                style: Styles.headLineStyle4.copyWith(fontSize: 16),
              )
            ],
          ),
          const Gap(4),
          Divider(
            color: Colors.grey.shade200,
          ),
          const Gap(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppColumnLayout(
                firstText: "23 0452",
                secondText: "Miles",
                alignement: CrossAxisAlignment.start,
                iscolor: false,
              ),
              AppColumnLayout(
                  firstText: "Airline Co",
                  secondText: "Received From",
                  alignement: CrossAxisAlignment.end,
                  iscolor: false)
            ],
          ),
          const Gap(12),
          const LayoutBuilserWidget(
            section: 12,
            iscolor: false,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppColumnLayout(
                firstText: "234",
                secondText: "Miles",
                alignement: CrossAxisAlignment.start,
                iscolor: false,
              ),
              AppColumnLayout(
                  firstText: "Mc Donald\'s ",
                  secondText: "Received From",
                  alignement: CrossAxisAlignment.end,
                  iscolor: false)
            ],
          ),
          const Gap(12),
          const LayoutBuilserWidget(
            section: 12,
            iscolor: false,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppColumnLayout(
                firstText: "52 340",
                secondText: "Miles",
                alignement: CrossAxisAlignment.start,
                iscolor: false,
              ),
              AppColumnLayout(
                  firstText: "Exuma",
                  secondText: "Received From",
                  alignement: CrossAxisAlignment.end,
                  iscolor: false),
            ],
          ),
          const Gap(15),
          InkWell(
            onTap: () {
              print('inkwell tapped');
            },
            child: Center(
                child: Text('How to get more mile',
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w500))),
          ),
        ],
      ),
    );
  }
}
