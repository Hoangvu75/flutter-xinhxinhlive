import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FragmentContact extends StatefulWidget {
  const FragmentContact({super.key});

  @override
  _FragmentContact createState() => _FragmentContact();
}

class _FragmentContact extends State<FragmentContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: AppBar(
        title: const Text("Liên hệ",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15, color: Colors.white
            )),
        backgroundColor: const Color(0xFF050505),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF212121),
              child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset("assets/xinhxinh.jpg",
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("XinhXinh Live",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12, color: Colors.white
                            )
                        ),
                        Text("\nỨng dụng livestream bán hàng\nlên nhiều trang fanpage",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10, color: Colors.white
                            )
                        )
                      ],
                    )
                  ]
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF212121),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Bạn cần trợ giúp?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11, color: Colors.white
                        )
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/2 - 20,
                            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF424242)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Tổng đài hỗ trợ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11, color: Colors.white
                                        )
                                    ),
                                    Text("0855681618",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 11, color: Colors.white
                                        )
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.pinkAccent
                                  ),
                                  child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: const Icon(
                                          Icons.phone, color: Colors.white
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/2 - 20,
                            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF424242)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Tổng đài hỗ trợ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11, color: Colors.white
                                        )
                                    ),
                                    Text("0325528530",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 11, color: Colors.white
                                        )
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.pinkAccent
                                  ),
                                  child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: const Icon(
                                          Icons.phone, color: Colors.white
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF424242)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Gửi email",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 11, color: Colors.white
                                )
                            ),
                            Text("cskh@xinhxinh.live",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11, color: Colors.white
                                )
                            )
                          ],
                        )
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF424242)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Website",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 11, color: Colors.white
                                )
                            ),
                            Text("www.xinhxinh.live",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11, color: Colors.white
                                )
                            )
                          ],
                        )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Facebook",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11, color: Colors.white
                              )
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/2 - 20,
                                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF424242)
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.blueAccent,
                                        ),
                                        child: const Icon(
                                            FontAwesomeIcons.facebook, color: Colors.white, size: 30
                                        ),
                                      ),
                                      const Text("XinhXinh Live",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11, color: Colors.white
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/2 - 20,
                                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF424242)
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.blueAccent,
                                        ),
                                        child: const Icon(
                                            FontAwesomeIcons.facebook, color: Colors.white, size: 30
                                        ),
                                      ),
                                      const Text("XinhXinh Studio",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11, color: Colors.white
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Instagram",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11, color: Colors.white
                              )
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/2 - 20,
                                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF424242)
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.pinkAccent,
                                        ),
                                        child: const Icon(
                                            FontAwesomeIcons.instagram,
                                            color: Colors.white,
                                            size: 30
                                        ),
                                      ),
                                      const Text("XinhXinh Live",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11, color: Colors.white
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/2 - 20,
                                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF424242)
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.pinkAccent,
                                        ),
                                        child: const Icon(
                                            FontAwesomeIcons.instagram,
                                            color: Colors.white,
                                            size: 30
                                        ),
                                      ),
                                      const Text("XinhXinh Studio",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11, color: Colors.white
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Tiktok",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11, color: Colors.white
                              )
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/2 - 20,
                                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF424242)
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.white,
                                        ),
                                        child: const Icon(
                                            FontAwesomeIcons.tiktok,
                                            color: Colors.black,
                                            size: 25
                                        ),
                                      ),
                                      const Text("XinhXinh Live",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11, color: Colors.white
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/2 - 20,
                                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF424242)
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.white,
                                        ),
                                        child: const Icon(
                                            FontAwesomeIcons.tiktok,
                                            color: Colors.black,
                                            size: 25
                                        ),
                                      ),
                                      const Text("XinhXinh Studio",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11, color: Colors.white
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Youtube",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11, color: Colors.white
                              )
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/2 - 20,
                                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF424242)
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.white,
                                        ),
                                        child: const Icon(
                                            FontAwesomeIcons.youtube,
                                            color: Colors.redAccent,
                                            size: 25
                                        ),
                                      ),
                                      const Text("XinhXinh Live",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11, color: Colors.white
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/2 - 20,
                                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF424242)
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        height: 35,
                                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.white,
                                        ),
                                        child: const Icon(
                                            FontAwesomeIcons.youtube,
                                            color: Colors.redAccent,
                                            size: 25
                                        ),
                                      ),
                                      const Text("XinhXinh Studio",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11, color: Colors.white
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          )
                        ],
                      ),
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}