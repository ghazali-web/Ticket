import 'package:gap/gap.dart';
import 'package:book_ticket/widgets/thick_container.dart';
import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:io' show Platform;

import '../widgets/Column_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool iscolor;
  const TicketView({super.key, required this.ticket, required this.iscolor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.9,
      height: AppLayout.getHeight(Platform.isAndroid == true ? 180 : 179),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            //showing the orange part of card

            Container(
                decoration: BoxDecoration(
                  color: (iscolor == true)
                      ? const Color(0xFF526799)
                      : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21))),
                ),
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                child: Column(children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: iscolor == true
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      const Spacer(),
                      const ThickContainer(iscolor: true),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 16)
                                          .floor(),
                                      (index) => SizedBox(
                                          width: AppLayout.getHeight(16),
                                          height: AppLayout.getHeight(1),
                                          child: const DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                            ),
                                          ))),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: iscolor == true
                                      ? Colors.white
                                      : const Color(0xFF8ACCF7),
                                )),
                          ),
                        ],
                      )),
                      const ThickContainer(iscolor: true),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: iscolor == true
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(120),
                        child: Text(
                          ticket['from']['name'],
                          style: iscolor == true
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: iscolor == true
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(120),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: iscolor == true
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                      ),
                    ],
                  )
                ])),
            //showing the orange part of card

            Container(
              color: iscolor == true ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(16)),
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                  width: AppLayout.getWidth(5),
                                  height: AppLayout.getHeight(1),
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                    color: iscolor == true
                                        ? Colors.white
                                        : Colors.grey.shade300,
                                  )))));
                    }),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8))),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: iscolor == true ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(iscolor == true ? 21 : 0),
                    bottomRight: Radius.circular(iscolor == true ? 21 : 0)),
              ),
              padding: EdgeInsets.only(
                  left: AppLayout.getHeight(16),
                  top: AppLayout.getHeight(10),
                  right: AppLayout.getHeight(16),
                  bottom: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          alignement: CrossAxisAlignment.start,
                          firstText: ticket['date'],
                          secondText: 'Date',
                          iscolor: true),
                      AppColumnLayout(
                          alignement: CrossAxisAlignment.center,
                          firstText: ticket['departure_time'],
                          secondText: 'Departure Time',
                          iscolor: true),
                      AppColumnLayout(
                          alignement: CrossAxisAlignment.end,
                          firstText: ticket['number'].toString(),
                          secondText: 'Number',
                          iscolor: true),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
