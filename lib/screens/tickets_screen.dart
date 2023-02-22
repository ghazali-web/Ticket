import 'package:book_ticket/screens/ticket_view.dart';
import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../widgets/Column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/ticket_tab_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getHeight(3)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTAbs(
                firsttab: "Upcoming",
                sencondtab: "Previous",
              ),
              Gap(AppLayout.getHeight(10)),
              Container(
                  padding: EdgeInsets.only(
                    left: AppLayout.getHeight(10),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                    iscolor: false,
                  )),
              Gap(AppLayout.getHeight(2)),
              Container(
                margin: const EdgeInsets.only(right: 8, left: 8),
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(30))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            firstText: 'Flutter DB',
                            secondText: 'Passenger',
                            alignement: CrossAxisAlignment.start,
                            iscolor: false),
                        AppColumnLayout(
                            firstText: '5221 456789',
                            secondText: 'passport',
                            alignement: CrossAxisAlignment.end,
                            iscolor: false)
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const LayoutBuilserWidget(
                        section: 6, iscolor: false, width: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            firstText: '951951 1981891981',
                            secondText: 'Number of E-ticket',
                            alignement: CrossAxisAlignment.start,
                            iscolor: false),
                        AppColumnLayout(
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                            alignement: CrossAxisAlignment.end,
                            iscolor: false)
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const LayoutBuilserWidget(
                        section: 6, iscolor: false, width: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' ***2462',
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'payement methode',
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                AppColumnLayout(
                                    firstText: '\$249.99',
                                    secondText: 'price',
                                    alignement: CrossAxisAlignment.end,
                                    iscolor: false),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(21)),
                            bottomRight:
                                Radius.circular(AppLayout.getHeight(21)),
                          )),
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(15)),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(15)),
                          child: BarcodeWidget(
                            data: 'hhtps//github/ghazaliweb',
                            barcode: Barcode.code128(),
                            drawText: false,
                            color: Styles.textColor,
                            width: double.infinity,
                            height: 70,
                          ),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(12)),
              Container(
                  padding: EdgeInsets.only(
                    left: AppLayout.getHeight(15),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                    iscolor: true,
                  )),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(7),
            top: AppLayout.getHeight(295),
            child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Styles.textColor)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                )),
          ),
          Positioned(
            right: AppLayout.getHeight(7),
            top: AppLayout.getHeight(295),
            child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Styles.textColor)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                )),
          ),
        ],
      ),
    );
  }
}
