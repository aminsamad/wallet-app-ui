import 'package:flutter/material.dart';
import 'package:simple_card_ui/widgets/row_cards.dart';

class FunctionsWidgets extends StatelessWidget {
  const FunctionsWidgets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 15),
            child: Text(
              "Functions",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Rowcard(
              icon: Icons.food_bank,
              title: "RECHARGE",
              subtitle: "money",
            ),
            Rowcard(
              icon: Icons.transfer_within_a_station,
              title: "TRANSFER",
              subtitle: "money",
            ),
            Rowcard(
              icon: Icons.food_bank,
              title: "EXCHANGE",
              subtitle: "money",
            ),
          ],
        )
      ],
    );
  }
}
