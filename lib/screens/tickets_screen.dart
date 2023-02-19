import 'package:book_ticket/screens/ticket_view.dart';
import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

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
                horizontal: AppLayout.getHeight(20)),
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
                    left: AppLayout.getHeight(0),
                  ),
                  child: TicketView(
                    ticket: ticketList[0],
                    iscolor: true,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
