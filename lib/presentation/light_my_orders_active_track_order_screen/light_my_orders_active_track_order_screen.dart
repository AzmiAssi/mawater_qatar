import 'package:mawater_qatar/presentation/homePage.dart';
import 'package:mawater_qatar/widgets/spacing.dart';
import 'package:im_stepper/stepper.dart';
import 'package:mawater_qatar/core/app_export.dart';
import 'package:flutter/material.dart';

class LightMyOrdersActiveTrackOrderScreen extends StatefulWidget {
  const LightMyOrdersActiveTrackOrderScreen({super.key});

  @override
  State<LightMyOrdersActiveTrackOrderScreen> createState() =>
      _LightMyOrdersActiveTrackOrderScreenState();
}

class _LightMyOrdersActiveTrackOrderScreenState
    extends State<LightMyOrdersActiveTrackOrderScreen> {
  List<String> stepImgaesList = [
    ImageConstant.step1,
    ImageConstant.step2,
    ImageConstant.step3,
    ImageConstant.step4
  ];

  int activeStep1 = 1;
  int activeStep2 = 1; // Initial step set to 0.

  // OPTIONAL: can be set directly.
  int dotCount = 5;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                margin: getMargin(
                  left: 24,
                  top: 33,
                  bottom: 20,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 2,
                        bottom: 2,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                              padding: getPadding(
                                top: 0,
                                bottom: 0,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()),
                                  );
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: isDark ? Colors.white : Colors.black,
                                ),
                              )),
                          HorizontalSpace(width: 20),
                          Padding(
                            padding: getPadding(
                              left: 0,
                            ),
                            child: Text(
                              "Track Order",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  24,
                                ),
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 2,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSearch,
                        height: getVerticalSize(
                          22.00,
                        ),
                        width: getHorizontalSize(
                          21.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          left: 24,
                          top: 2,
                          right: 24,
                        ),
                        decoration: BoxDecoration(
                          color: isDark
                              ? ColorConstant.darkTextField
                              : ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              32.00,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstant.black9000c,
                              spreadRadius: getHorizontalSize(
                                0.00,
                              ),
                              blurRadius: getHorizontalSize(
                                10.00,
                              ),
                              offset: const Offset(
                                0,
                                4,
                              ),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: getVerticalSize(
                                102.00,
                              ),
                              width: getHorizontalSize(
                                120.00,
                              ),
                              margin: getMargin(
                                left: 20,
                                top: 20,
                                bottom: 20,
                              ),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: const EdgeInsets.all(0),
                                color: isDark
                                    ? ColorConstant.darkLine
                                    : ColorConstant.gray100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: CommonImageView(
                                          imagePath: ImageConstant.imgImage,
                                          height: getVerticalSize(
                                            102.00,
                                          ),
                                          width: getHorizontalSize(
                                            120.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                left: 16,
                                top: 30,
                                bottom: 29,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "BMW M5 Series",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 14,
                                      right: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          height: getSize(
                                            16.00,
                                          ),
                                          width: getSize(
                                            16.00,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.gray200,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                8.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                            top: 1,
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            "color",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray700,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Urbanist',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 12,
                                      right: 10,
                                    ),
                                    child: Text(
                                      "171,250 ${Constants.currency}",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(top: 20),
                        height: getVerticalSize(60),
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: getHorizontalSize(40),
                                  height: getVerticalSize(40),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      stepImgaesList[index],
                                      color: activeStep1 == index
                                          ? ColorConstant.gray500
                                          : isDark
                                              ? ColorConstant.darkLine
                                              : ColorConstant.gray400,
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return HorizontalSpace(width: 44);
                            },
                            itemCount: stepImgaesList.length),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 0,
                          top: 0,
                          right: 0,
                        ),
                        child: IconStepper(
                          icons: const [
                            Icon(Icons.check),
                            Icon(Icons.check),
                            Icon(Icons.check),
                            Icon(Icons.check),
                          ],

                          stepRadius: 14,
                          activeStepBorderColor: Colors.transparent,
                          activeStepColor: ColorConstant.gray500,
                          enableNextPreviousButtons: false,
                          lineColor: isDark
                              ? ColorConstant.darkLine
                              : ColorConstant.gray400,
                          stepColor: isDark
                              ? ColorConstant.darkLine
                              : ColorConstant.gray400,

                          // activeStep property set to activeStep variable defined above.
                          activeStep: activeStep1,

                          // This ensures step-tapping updates the activeStep.
                          onStepReached: (index) {
                            setState(() {
                              activeStep1 = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          top: 20,
                          right: 24,
                        ),
                        child: header(),
                      ),
                    ),
                    VerticalSpace(height: 10),
                    Padding(
                      padding: getPadding(left: 20, right: 20),
                      child: CustomDivider(isDark: isDark),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      child: Text(
                        "Order Status Details",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            20,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(top: 24, left: 24, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DotStepper(
                            direction: Axis.vertical,
                            dotCount: dotCount,
                            dotRadius: 12,
                            lineConnectorsEnabled: true,

                            /// THIS MUST BE SET. SEE HOW IT IS CHANGED
                            /// IN NEXT/PREVIOUS BUTTONS AND JUMP BUTTONS.

                            activeStep: activeStep2,
                            shape: Shape.circle,

                            spacing: 50,
                            indicator: Indicator.shift,

                            /// TAPPING WILL NOT FUNCTION PROPERLY WITHOUT THIS PIECE OF CODE.
                            onDotTapped: (tappedDotIndex) {
                              setState(() {
                                activeStep2 = tappedDotIndex;
                              });
                            },

                            // DOT-STEPPER DECORATIONS
                            fixedDotDecoration: FixedDotDecoration(
                              color: ColorConstant.gray500,
                              strokeColor: ColorConstant.gray500,
                              strokeWidth: 12,
                            ),

                            indicatorDecoration: IndicatorDecoration(
                              strokeColor:
                                  isDark ? ColorConstant.darkBg : Colors.white,
                              strokeWidth: 6,
                              color: ColorConstant.gray500,
                            ),
                            lineConnectorDecoration: LineConnectorDecoration(
                              color: ColorConstant.gray400,
                            ),
                          ),
                          HorizontalSpace(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Order .. Delivery (Train) - Dec 17",
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          "15:20 PM",
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    VerticalSpace(height: 6),
                                    Text(
                                      "32 Manchester Ave. Ringgold, GA 30736",
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        color: ColorConstant.gray700,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalSpace(height: 40),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Order .. Delivery (Train) - Dec 17",
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          "15:20 PM",
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    VerticalSpace(height: 6),
                                    Text(
                                      "32 Manchester Ave. Ringgold, GA 30736",
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        color: ColorConstant.gray700,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalSpace(height: 40),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Order .. Delivery (Train) - Dec 17",
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          "15:20 PM",
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    VerticalSpace(height: 6),
                                    Text(
                                      "32 Manchester Ave. Ringgold, GA 30736",
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        color: ColorConstant.gray700,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalSpace(height: 40),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Order .. Delivery (Train) - Dec 17",
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          "15:20 PM",
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    VerticalSpace(height: 6),
                                    Text(
                                      "32 Manchester Ave. Ringgold, GA 30736",
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        color: ColorConstant.gray700,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalSpace(height: 40),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Order .. Delivery (Train) - Dec 17",
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          "15:20 PM",
                                          style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    VerticalSpace(height: 6),
                                    Text(
                                      "32 Manchester Ave. Ringgold, GA 30736",
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        color: ColorConstant.gray700,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    VerticalSpace(height: 30)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Text(
      headerText(),
      style: const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 20,
      ),
    );
  }

  String headerText() {
    switch (activeStep1) {
      case 0:
        return 'Preparing';

      case 1:
        return 'Car In Delivery (Train)';

      case 2:
        return 'Arrived to your city';

      case 3:
        return 'Delivered';

      default:
        return 'Car In Delivery (Train)';
    }
  }
}
