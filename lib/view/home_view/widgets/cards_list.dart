import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transferme/utils/size_config.dart';

import 'card_item.dart';


class CardsList extends StatelessWidget {
  const CardsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) * 0.1,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CardItem(
            visaName: 'Mastercard',
            visaNumber: 6253,
            visaBalance: 4551515,
            visaImage: 'assets/svg/mastercard.svg',
          );
        },
      ),
    );
  }
}
