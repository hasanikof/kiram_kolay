import 'package:flutter/material.dart';
import 'package:kiram_kolay/const.dart';
import 'package:kiram_kolay/widgets/text_form_field_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          
          items: [
            BottomNavigationBarItem(
          
              icon: Icon(Icons.search),
              label: "Arama",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favoriler",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: "Başvurular",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profil",
            ),
          ],
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.search),
                    TextFormFieldWidget(
                      infoText: "Nerede eve arıyorsun?",
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.format_align_center,
                            color: Colors.blue,
                          )),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 30,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width / 4,
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Site içinde "),
                                  Icon(Icons.cancel_outlined),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "14 SONUÇ",
                      style: myTitleTextStyle,
                    ),
                    Row(children: [
                      Text("İlanları Sırala"),
                      Icon(Icons.menu),
                    ])
                  ],
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, int index) {
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Container(
                                    child:
                                        Image.asset("images/homepictures.jpg"),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 15),
                                          Row(children: [
                                            Text("15.000 TL / aylık",
                                                style: myTitleTextStyle),
                                            Icon(
                                              Icons.verified,
                                              color: Colors.green,
                                            ),
                                          ]),
                                          SizedBox(height: 15),
                                          Text("Bostanlı Mah. Karşıyak İzmir",
                                              style: myTitleTextStyle),
                                          SizedBox(height: 15),
                                          Text("Site İçinde Dubleks Daire",
                                              style: myTitleTextStyle),
                                          SizedBox(height: 15),
                                          Text(
                                              "İlk kiralama Bedeli : 30.000 TL",
                                              style: myTitleTextStyle),
                                          SizedBox(height: 15),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
