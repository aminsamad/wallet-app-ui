import 'package:flutter/material.dart';

class CardWallet extends StatefulWidget {
  const CardWallet({Key key}) : super(key: key);

  @override
  _CardWalletState createState() => _CardWalletState();
}

class _CardWalletState extends State<CardWallet> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: h / 3.5,
      margin: EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.grey[400]),
          ],
          gradient:
              LinearGradient(colors: [Color(0xffd86cc9), Color(0xffb748d5)])),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white10.withOpacity(0.05)),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white10.withOpacity(0.05)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "USD wallet",
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                Text(
                  "\$12,000",
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text("wallet no",
                    style: TextStyle(color: Colors.white38, fontSize: 15)),
                Text("1234  5678  9012  3273",
                    style: TextStyle(
                        color: Colors.white60, fontWeight: FontWeight.w600))
              ],
            ),
          )
        ],
      ),
    );
  }
}
