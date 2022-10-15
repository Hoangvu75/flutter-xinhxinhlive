import 'package:flutter/material.dart';
import 'package:flutter_project/Fragments/FragmentAccount.dart';
import 'package:flutter_project/Fragments/FragmentContact.dart';
import 'package:flutter_project/Fragments/FragmentLive.dart';
import 'package:flutter_project/Fragments/FragmentView.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF212121)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  late FragmentLive fragmentLive;
  late FragmentView fragmentView;
  late FragmentContact fragmentContact;
  late FragmentAccount fragmentAccount;
  late FragmentAccountRegister fragmentAccountRegister;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    onSetVariables();
    getLoginState();
  }

  Future<void> getLoginState() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      state = prefs.getString("loginState");
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this, initialIndex: 3);
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: Container(
            height: 60,
            color: const Color(0xFF050505),
            child: TabBar(
              labelColor: Colors.pinkAccent,
              unselectedLabelColor: Colors.white70,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.pinkAccent,
              tabs: [
                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.live_tv, size: 25),
                      Flexible(
                        child: Text("Live",
                            style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            overflow: TextOverflow.ellipsis
                          )
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: const [
                      Icon(Icons.remove_red_eye_outlined, size: 27),
                      Flexible(
                        child: Text("Tăng mắt view",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              overflow: TextOverflow.ellipsis
                            )
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: const [
                      Icon(Icons.phone, size: 27),
                      Flexible(
                        child: Text("Liên hệ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                overflow: TextOverflow.ellipsis
                            )
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: const [
                      Icon(Icons.person, size: 27),
                      Flexible(
                        child: Text("Cá nhân",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                overflow: TextOverflow.ellipsis
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              widget.fragmentLive,
              widget.fragmentView,
              widget.fragmentContact,
              (state == "1") ?
              widget.fragmentAccount : widget.fragmentAccountRegister
            ],
          ),
        ),
      ),
    );
  }

  void onSetVariables() {
    widget.fragmentLive = FragmentLive();
    widget.fragmentView = const FragmentView();
    widget.fragmentContact = const FragmentContact();
    widget.fragmentAccount = FragmentAccount();
    widget.fragmentAccountRegister = FragmentAccountRegister();
  }
}