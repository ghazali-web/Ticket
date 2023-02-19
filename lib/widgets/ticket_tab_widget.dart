import 'package:book_ticket/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppTicketTAbs extends StatelessWidget {
  final String firsttab;
  final String sencondtab;
  const AppTicketTAbs(
      {super.key, required this.firsttab, required this.sencondtab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
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
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(20))),
                color: Colors.white,
              ),
              child: Center(child: Text(firsttab)),
            ),
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeight(20))),
                color: Colors.grey.shade200,
              ),
              child: Center(child: Text(sencondtab)),
            ),
          ],
        ),
      ),
    );
  }
}
