import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reeco/app/global/theme/my_color.dart';
import 'package:reeco/app/global/theme/my_text_style.dart';
import 'package:reeco/app/routes/app_pages.dart';

class ResultScanView extends GetView {
  const ResultScanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "KETERANGAN",
            style: textTitleS(color: blackColor),
          ),
          centerTitle: false,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_outlined),
              iconSize: 35),
        ),
        bottomSheet: Container(
          margin: EdgeInsets.only(left: 24, right: 24, bottom: 12),
          child: Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Batalkan"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        side: MaterialStatePropertyAll(BorderSide(color: Colors.black, width: 1))
                      ),
                      )),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.recommendationResult);
                      }, child: Text("Rekomendasi")))
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 324,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.cnet.com/a/img/resize/9fc2756cb6a31e33521bede3601bd08beec71bb8/hub/2022/12/05/739c9fde-8e5c-46a5-a0e4-cbad5214f48a/gettyimages-998263814.jpg?auto=webp&fit=crop&height=675&width=1200"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Nama Sampah:",
                  style: textBodyBase(),
                ),
                Text(
                  "Botol Bekas",
                  style: textBodyS(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Jenis Sampah:",
                  style: textBodyBase(),
                ),
                Text(
                  "Anorganik",
                  style: textBodyS(),
                ),
              ],
            ),
          ),
        ));
  }
}
