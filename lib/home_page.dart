import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:simple_card_ui/widgets/card.dart';
import 'package:simple_card_ui/widgets/functions_widgets.dart';
import 'package:simple_card_ui/widgets/recent_transactions_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _current_index = 0;

    final tabs = [
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardWallet(),
            FunctionsWidgets(),
            RecentTransactionsWidgets(),
          ],
        ),
      ),
      Text(
        'Index 1: Business',
      ),
      Text(
        'Index 2: School',
      ),
      Text(
        'Index 3: Settings',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        //User Image
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Badge(
            animationType: BadgeAnimationType.scale,
            position: BadgePosition.bottomEnd(),
            alignment: Alignment.bottomCenter,
            badgeContent:
                Text('3', style: TextStyle(color: Colors.white, fontSize: 12)),
            child: Image.asset('assets/user.png'),
          ),
        ),

        //Title
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, lee !", style: Theme.of(context).textTheme.headline6),
            Text("Welcome back",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(color: Colors.grey[500]))
          ],
        ),

        //Icons
        actions: [
          IconButton(
            icon: Icon(Icons.category),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
          )
        ],
      ),

      //Body
      body: tabs[_current_index],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffb748d5),
        unselectedItemColor: Color(0xffe0e0e0),
        onTap: (index) {
          setState(() {
            _current_index = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.padding_rounded), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.link_outlined), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.water), label: "home")
        ],
      ),
    );
  }
}
