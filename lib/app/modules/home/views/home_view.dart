import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reeco/app/global/theme/my_color.dart';
import 'package:reeco/app/global/theme/my_text_style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadiusDirectional.vertical(
                    bottom: Radius.circular(24))),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
            child: Column(
              children: [
                SafeArea(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lokasi Anda",
                          style: textBodyS(color: Colors.white),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Jl. Candi VB No. 40 Karang besuki Kota Malang",
                          style: textNormal(color: Colors.white),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Card(
                  shadowColor: Colors.black,
                  elevation: 0,
                  color: Color.fromRGBO(156, 171, 194, 0.3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)),
                  child: Container(
                    height: 158,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello Yasril!",
                            style: textBodyBase(color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Poin Anda",
                                  style: textBodyS(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("235 Point",
                                    style: textBodyS(color: Colors.white))
                              ],
                            ),
                            Container(
                              width: 2,
                              height: 40,
                              color: Colors.white,
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.currency_exchange_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Tukarkan \nPoin",
                                  textAlign: TextAlign.center,
                                  style: textBodyS(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?q=80&w=1913&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Artikel Terkini",
                      style: textBodyBase(),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Lihat Semua",
                          style: textBodyS(color: primaryColor),
                        ))
                  ],
                )
              ],
            ),
          ),
          Container(
            width: Get.mediaQuery.size.width,
            height: 210,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 24),

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: ArticleCard(),
                );
              },
            ),
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
    ));
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 210,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: blackColor, width: 1)),
      child: Column(
        children: [
          Container(
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadiusDirectional.vertical(top: Radius.circular(8)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1569163139500-66446e2926ca?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              "Hari Lingkungan Hidup: Menjaga Bumi Bersama untuk Generasi Mendatang",
              style: GoogleFonts.montserrat(
                  fontSize: 12, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
