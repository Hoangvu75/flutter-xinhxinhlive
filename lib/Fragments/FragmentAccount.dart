import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../loginData.dart';

class FragmentAccountRegister extends StatefulWidget {
  FragmentAccountRegister({super.key});

  @override
  _FragmentAccountRegister createState() => _FragmentAccountRegister();
}

class _FragmentAccountRegister extends State<FragmentAccountRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF212121),
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Bạn chưa có tài khoản?",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17, color: Colors.white
                    )
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: const Text("Vui lòng đăng nhập để sử dụng chức năng này.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14, color: Colors.white
                      )
                  ),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blueAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: const Icon(
                            FontAwesomeIcons.facebook, color: Colors.white, size: 30
                        ),
                      ),
                      const Text("ĐĂNG NHẬP FACEBOOK",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11, color: Colors.white
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 65, 0, 0),
                  child: const Text("Bạn đã có tài khoản?",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14, color: Colors.white
                      )
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FragmentAccountLogin(),
                      )
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: const Text("Đăng nhập ngay",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15, color: Colors.pinkAccent
                        )
                    ),
                  ),
                ),
              ]
          ),
        )
    );
  }
}

class FragmentAccountLogin extends StatefulWidget {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FragmentAccountLogin({super.key});

  @override
  _FragmentAccountLogin createState() => _FragmentAccountLogin();
}

class _FragmentAccountLogin extends State<FragmentAccountLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: AppBar(
        backgroundColor: const Color(0xFF212121),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Đăng nhập",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17, color: Colors.white
              )
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: const Text("Vui lòng đăng nhập để sử dụng chức năng này.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14, color: Colors.white
                )
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0,40, 0, 0),
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: widget.phoneController,
              decoration: const InputDecoration(
                labelText: 'Số điện thoại',
                labelStyle: TextStyle(
                  color: Color(0xFF7D7D7D),
                ),
                floatingLabelStyle: TextStyle(
                  color: Colors.pinkAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.pinkAccent),
                ),
              ),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: widget.passwordController,
              decoration: const InputDecoration(
                labelText: 'Mật khẩu',
                labelStyle: TextStyle(
                  color: Color(0xFF7D7D7D),
                ),
                floatingLabelStyle: TextStyle(
                  color: Colors.pinkAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.pinkAccent),
                ),
              ),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              saveData();
              Navigator.pushAndRemoveUntil<dynamic>(
                context,
                PageRouteBuilder<dynamic>(
                  pageBuilder: (c, a1, a2) => MyHomePage(),
                  transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                  transitionDuration: const Duration(milliseconds: 500),
                ),
                    (route) => false,
              );
            },
            child: Container(
              width: 300,
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.pinkAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: const Text("ĐĂNG NHẬP",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15, color: Colors.white
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FragmentAccount extends StatefulWidget {
  FragmentAccount({super.key});

  @override
  _FragmentAccount createState() => _FragmentAccount();
}

class _FragmentAccount extends State<FragmentAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: AppBar(
        title: const Text("Thông tin cá nhân",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15, color: Colors.white
            )),
        actions: [IconButton(
            onPressed: () {  },
            icon: const Icon(
              Icons.edit_note,
              size: 35
            ),
          )],
        backgroundColor: const Color(0xFF050505),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF212121),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          "assets/xinhxinh.jpg",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: const Text("XinhXinh Live",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13, color: Colors.white
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: const Text("0941290612",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13, color: Colors.white
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    FontAwesomeIcons.film,
                                    size: 25,
                                    color: Colors.pinkAccent
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: const Text("0",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13, color: Colors.white
                                      )
                                  ),
                                ),
                              ]
                            ),
                            const Text("Livestream",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11, color: Colors.white
                                )
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                                children: [
                                  const Icon(
                                      Icons.people_alt_outlined,
                                      size: 30,
                                      color: Colors.pinkAccent
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    child: const Text("0",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13, color: Colors.white
                                        )
                                    ),
                                  ),
                                ]
                            ),
                            const Text("Người theo dõi",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11, color: Colors.white
                                )
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                                children: [
                                  const Icon(
                                      FontAwesomeIcons.heart,
                                      size: 25,
                                      color: Colors.pinkAccent
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    child: const Text("0",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13, color: Colors.white
                                        )
                                    ),
                                  ),
                                ]
                            ),
                            const Text("Yêu thích",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11, color: Colors.white
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFF212121),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                        ),
                        color: Color(0xFF424242)
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    Icons.shopping_cart,
                                    size: 25,
                                    color: Colors.white
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: const Text("Quản lý đơn hàng",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15, color: Colors.white
                                      )
                                  ),
                                ),
                              ]
                            ),
                            const Icon(
                                Icons.arrow_forward_ios,
                                size: 25,
                                color: Colors.white
                            ),
                          ]
                        ),
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0),
                      decoration: const BoxDecoration(
                        color: Color(0xFF424242)
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    FontAwesomeIcons.film,
                                    size: 25,
                                    color: Colors.white
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: const Text("Quản lý livestream",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15, color: Colors.white
                                      )
                                  ),
                                ),
                              ]
                            ),
                            const Icon(
                                Icons.arrow_forward_ios,
                                size: 25,
                                color: Colors.white
                            ),
                          ]
                        ),
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),
                            color: Color(0xFF424242)
                        ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    FontAwesomeIcons.box,
                                    size: 25,
                                    color: Colors.white
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: const Text("Quản lý sản phẩm",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15, color: Colors.white
                                      )
                                  ),
                                ),
                              ]
                            ),
                            const Icon(
                                Icons.arrow_forward_ios,
                                size: 25,
                                color: Colors.white
                            ),
                          ]
                        ),
                      )
                    )
                  ]
                )
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFF212121),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                        ),
                        color: Color(0xFF424242)
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    Icons.settings,
                                    size: 25,
                                    color: Colors.white
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: const Text("Thiết lập",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15, color: Colors.white
                                      )
                                  ),
                                ),
                              ]
                            ),
                            const Icon(
                                Icons.arrow_forward_ios,
                                size: 25,
                                color: Colors.white
                            ),
                          ]
                        ),
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0),
                      decoration: const BoxDecoration(
                        color: Color(0xFF424242)
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    Icons.person_off_outlined,
                                    size: 25,
                                    color: Colors.white
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: const Text("Chặn người dùng",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15, color: Colors.white
                                      )
                                  ),
                                ),
                              ]
                            ),
                            const Icon(
                                Icons.arrow_forward_ios,
                                size: 25,
                                color: Colors.white
                            ),
                          ]
                        ),
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0),
                        decoration: const BoxDecoration(
                            color: Color(0xFF424242)
                        ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    Icons.policy_outlined,
                                    size: 25,
                                    color: Colors.white
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: const Text("Chính sách và điều khoản",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15, color: Colors.white
                                      )
                                  ),
                                ),
                              ]
                            ),
                            const Icon(
                                Icons.arrow_forward_ios,
                                size: 25,
                                color: Colors.white
                            ),
                          ]
                        ),
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0),
                        decoration: const BoxDecoration(
                            color: Color(0xFF424242)
                        ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    Icons.info_outline,
                                    size: 25,
                                    color: Colors.white
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: const Text("Thông tin ứng dụng",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15, color: Colors.white
                                      )
                                  ),
                                ),
                              ]
                            ),
                            const Text("v1.2.4",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15, color: Colors.white
                                )
                            ),
                          ]
                        ),
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0),
                        decoration: const BoxDecoration(
                          color: Color(0xFF424242),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          ),
                        ),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                    Icons.logout,
                                    size: 25,
                                    color: Colors.white
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: const Text("Đăng xuất",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15, color: Colors.white
                                      )
                                  ),
                                ),
                              ]
                            ),
                            const Icon(
                                Icons.arrow_forward_ios,
                                size: 25,
                                color: Colors.white
                            ),
                          ]
                        ),
                      )
                    ),
                  ]
                )
            ),
          ]
        ),
      )
    );
  }
}