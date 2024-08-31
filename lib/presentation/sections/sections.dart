// ignore_for_file: unused_field, deprecated_member_use

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mawater_qatar/core/app_export.dart';
import 'package:mawater_qatar/models/entity/section_entity.dart';
import 'package:mawater_qatar/presentation/homePage.dart';

class SectionsScreen extends StatefulWidget {
  const SectionsScreen({super.key});

  @override
  State<SectionsScreen> createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {
  bool _isLoading = false;
  int selectedCategory = 1;
  List<SectionEntity> sections = [];
  @override
  void initState() {
    getCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              ImageConstant.appLogo,
              height: 150,
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                child: GridView.builder(
                  itemCount: sections.length,
                  // padding: const EdgeInsets.only(
                  //     top: 0, left: 12, right: 12),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // mainAxisSpacing: 0.1,
                    // crossAxisSpacing: 0.1,
                    childAspectRatio: 2,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              )
                            },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            //height: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: index != 2
                                          ? Image(
                                              color: ColorConstant.gray500,
                                              fit: BoxFit.contain,
                                              image: NetworkImage(
                                                  sections[index]
                                                      .image
                                                      .toString()),
                                            )
                                          : Image(
                                              //color: ColorConstant.gray500,
                                              fit: BoxFit.contain,
                                              image: NetworkImage(
                                                  sections[index]
                                                      .image
                                                      .toString()),
                                            ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    child: VerticalDivider(
                                      color: ColorConstant.gray500,
                                      thickness: 0.5,
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: Text(
                                          sections[index].name.toString(),
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 0.5,
                                              color: ColorConstant.gray500),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ));
                  },
                ),
              ),
            ),
          ],
        )
        // children: List<Widget>.generate(
        //   homeList.length,
        //   (int index) {
        //     final int count = homeList.length;
        //     final Animation<double> animation =
        //         Tween<double>(begin: 0.0, end: 1.0).animate(
        //       CurvedAnimation(
        //         parent: animationController!,
        //         curve: Interval((1 / count) * index, 1.0,
        //             curve: Curves.fastOutSlowIn),
        //       ),
        //     );
        //     animationController?.forward();

        //   },
        // ),
        );
  }

  getCategory() async {
    var fullUrl = Uri.parse(
        "https://mawatar.com/m/api/categoriesForAd?lang=en&no_page=0");
    try {
      http.Response response = await http.get(fullUrl);

      if (response.statusCode == 200) {
        setState(() {
          _isLoading = false;
        });
        if (mounted) {
          var data = json.decode(response.body);
          if (data != null) {
            for (var element in data["data"]) {
              sections.add(SectionEntity(
                  id: element["id"],
                  image: element["image"],
                  name: element["name"],
                  name_ar: element["name_ar"]));
            }
            setState(() {});
          }
        }
      } else if (response.statusCode == 401) {
        if (mounted) {}
      } else {
        if (mounted) {}
      }
    } catch (e) {
      if (mounted) {}
    }
  }
}
