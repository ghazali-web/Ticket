import 'package:book_ticket/screens/hotel_screen.dart';
import 'package:book_ticket/screens/ticket_view.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning ',
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text('Book ticket ', style: Styles.headLineStyle1),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/img_1.png'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6Fd)),
                    child: Row(
                      children: [
                        const Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text(
                          'search ',
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                  ),
                  const Gap(40),
                  const AppDoubleTextWidget(
                    bigText: 'Upcoming Flight ',
                    smallText: 'View All',
                  )
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ticketList
                      .map((singleticket) => TicketView(
                            ticket: singleticket,
                            iscolor: true,
                          ))
                      .toList(),
                )),
            const Gap(15),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const AppDoubleTextWidget(
                  bigText: 'Hotel',
                  smallText: 'View All',
                )),
            const Gap(15),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList
                    .map((singlehotel) => HotelScreen(hotel: singlehotel))
                    .toList(),
              ),
            )
          ],
        ));
  }
}
