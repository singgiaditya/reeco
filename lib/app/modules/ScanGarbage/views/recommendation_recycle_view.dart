import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:reeco/app/global/theme/my_text_style.dart';

class RecommendationRecycleView extends GetView {
  const RecommendationRecycleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    side: MaterialStatePropertyAll(
                        BorderSide(color: Colors.black, width: 1))),
              )),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Deposit")))
            ],
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Rekomendasi Daur Ulang',
              style: textTitleS(),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              color: Colors.black26,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black26,
                    isDense: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 24,
                    ),
                    hintText: "Cari rekomendasi daur ulang",
                    hintStyle: textBodyS(color: Colors.black54),
                    labelStyle: textBodyS(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text("Tempat Pensil", style: textBodyM(),),
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://asset.kompas.com/crops/xTBV-97vAwYIbUaYXBVS04JOf7U=/0x0:1000x667/750x500/data/photo/2023/07/12/64ae11ddc7dcf.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Divider(
                      thickness: 0.5,
                      color: Colors.black26,
                    ),
                  ],
                );
              },
            )
          ],
        )));
  }
}
