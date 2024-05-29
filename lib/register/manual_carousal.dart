import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/register/page_1.dart';
import 'package:bookmywarehouse_partner/register/page_2.dart';
import 'package:bookmywarehouse_partner/register/page_3.dart';
import 'package:bookmywarehouse_partner/register/page_4.dart';
import 'package:bookmywarehouse_partner/register/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:get/get.dart';

class ManuallyControlledSlider extends StatefulWidget {
  const ManuallyControlledSlider({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  final CarouselController _controller = CarouselController();
  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
    const PageFour(),
  ];
  int _currentIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onContinuePressed() {
    if (_currentIndex < _pages.length - 1) {
      _controller.nextPage();
    } else {
      _onSubmit();
    }
  }

  void _onSubmit() {
    // Perform the submit action here
    Get.off(
      VerificationPage(),
    );
    print('Submit button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            FlutterCarousel(
              items: _pages,
              options: CarouselOptions(
                controller: _controller,
                initialPage: 0,
                height: Get.height * 0.75,
                viewportFraction: 1.0,
                autoPlay: false,
                floatingIndicator: true,
                enableInfiniteScroll: false,
                pageSnapping: true,
                onPageChanged: (index, reason) {
                  _onPageChanged(index);
                },
                slideIndicator: CircularWaveSlideIndicator(
                  indicatorBackgroundColor: AppColor.fontGrey,
                  currentIndicatorColor: AppColor.primaryColor,
                ),
                pauseAutoPlayOnManualNavigate: true,
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            SizedBox(
              width: Get.width * 0.9,
              child: TextButton(
                style: Styles.buttonStyle,
                onPressed: _onContinuePressed,
                child: Text(
                  _currentIndex == _pages.length - 1 ? 'SUBMIT' : 'CONTINUE',
                  style: Styles.btnStyle,
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
