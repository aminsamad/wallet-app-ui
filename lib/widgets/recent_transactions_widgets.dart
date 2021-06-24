import 'package:flutter/material.dart';

class RecentTransactionsWidgets extends StatefulWidget {
  const RecentTransactionsWidgets({Key key}) : super(key: key);

  @override
  _RecentTransactionsWidgetsState createState() =>
      _RecentTransactionsWidgetsState();
}

class _RecentTransactionsWidgetsState extends State<RecentTransactionsWidgets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
            child: Text(
              "Recent transactions",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )),
        for (var i = 0; i < 10; i++)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Receive money",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "From: Harry Jame",
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 13),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "+ \$1,000",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "09/10",
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 13),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Divider()
              ],
            ),
          )
      ],
    );
  }
}
