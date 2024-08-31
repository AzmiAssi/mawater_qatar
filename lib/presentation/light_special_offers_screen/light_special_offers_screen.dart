// import 'package:mawater_qatar/data/cars_list.dart';
// import 'package:mawater_qatar/widgets/back_btn.dart';
// import '../light_home_full_page_screen/widgets/sliderthirty_item_widget.dart';
// import 'package:mawater_qatar/core/app_export.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class LightSpecialOffersScreen extends StatefulWidget {
//   @override
//   State<LightSpecialOffersScreen> createState() =>
//       _LightSpecialOffersScreenState();
// }

// class _LightSpecialOffersScreenState extends State<LightSpecialOffersScreen> {
//   int silderIndex = 1;

//   int silderIndex1 = 1;

//   int silderIndex2 = 1;

//   int silderIndex3 = 1;

//   @override
//   Widget build(BuildContext context) {
//     bool isDark = Theme.of(context).brightness == Brightness.dark;
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Align(
//               alignment: Alignment.center,
//               child: Container(
//                 width: size.width,
//                 margin: getMargin(right: 20, left: 20, top: 30, bottom: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Padding(
//                       padding: getPadding(
//                         left: 4,
//                         top: 4,
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           BackBtn(),
//                           Padding(
//                             padding: getPadding(
//                               left: 20,
//                             ),
//                             child: Text(
//                               "Special Offers",
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.start,
//                               style: TextStyle(
//                                 fontSize: getFontSize(
//                                   24,
//                                 ),
//                                 fontFamily: 'Urbanist',
//                                 fontWeight: FontWeight.w700,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         top: 3,
//                         bottom: 3,
//                       ),
//                       child: CommonImageView(
//                         svgPath: ImageConstant.icon,
//                         height: getSize(
//                           21.00,
//                         ),
//                         width: getSize(
//                           21.00,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Align(
//                 alignment: Alignment.topCenter,
//                 child: ListView.builder(
//                     padding: getPadding(left: 20, right: 20),
//                     itemCount: carsList.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         height: getVerticalSize(
//                           181.00,
//                         ),
//                         margin: getMargin(
//                           top: 24,
//                         ),
//                         child: Stack(
//                           alignment: Alignment.bottomCenter,
//                           children: [
//                             CarouselSlider.builder(
//                               options: CarouselOptions(
//                                 height: getVerticalSize(
//                                   181.00,
//                                 ),
//                                 initialPage: 0,
//                                 autoPlay: true,
//                                 viewportFraction: 1.0,
//                                 enableInfiniteScroll: false,
//                                 scrollDirection: Axis.horizontal,
//                                 onPageChanged: (index, reason) {
//                                   setState(() {
//                                     silderIndex = index;
//                                   });
//                                 },
//                               ),
//                               itemCount: 5,
//                               itemBuilder: (context, index, realIndex) {
//                                 return SliderthirtyItemWidget();
//                               },
//                             ),
//                             Align(
//                               alignment: Alignment.bottomCenter,
//                               child: Container(
//                                 height: getVerticalSize(
//                                   4.00,
//                                 ),
//                                 margin: getMargin(
//                                   left: 164,
//                                   top: 12,
//                                   right: 164,
//                                   bottom: 12,
//                                 ),
//                                 child: AnimatedSmoothIndicator(
//                                   activeIndex: silderIndex,
//                                   count: 5,
//                                   axisDirection: Axis.horizontal,
//                                   effect: ScrollingDotsEffect(
//                                     spacing: 5,
//                                     activeDotScale: 1.5,
//                                     activeDotColor: isDark
//                                         ? Colors.white
//                                         : ColorConstant.black900,
//                                     dotColor: ColorConstant.gray400,
//                                     dotHeight: getVerticalSize(
//                                       4.00,
//                                     ),
//                                     dotWidth: getHorizontalSize(
//                                       8.00,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
