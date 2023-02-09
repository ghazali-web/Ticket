import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});
  @override
  Widget build(BuildContext context) {
    print('${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 1)
          ]),
      height: 350,
      width: size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['images']}"))),
          ),
          const Gap(10),
          Text('${hotel['place']}',
              style: Styles.headLineStyle2.copyWith(color: Styles.kokicolor)),
          const Gap(5),
          Text('${hotel['destination']}',
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text('\$ ${hotel['price']} /night',
              style: Styles.headLineStyle1.copyWith(color: Styles.kokicolor)),
        ],
      ),
    );
  }
}
