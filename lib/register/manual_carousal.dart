import 'package:bookmywarehouse_partner/common/button.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/register/page_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:get/get.dart';

class ManuallyControlledSlider extends StatefulWidget {
  const ManuallyControlledSlider({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  final CarouselController _controller = CarouselController();
  final List<Widget> _pages = [
    PageOne(),
    Container(
      color: Colors.green,
      child: Center(
        child:
            Text('Page 2', style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    ),
    Container(
      color: Colors.orange,
      child: Center(
        child:
            Text('Page 3', style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: FlutterCarousel(
              items: _pages,
              options: CarouselOptions(
                initialPage: 0,
                height: Get.height * 0.75,
                viewportFraction: 1.0,
                autoPlay: false,
                floatingIndicator: true,
                enableInfiniteScroll: false,
                controller: _controller,
                pageSnapping: true,
                slideIndicator: CircularWaveSlideIndicator(
                  indicatorBackgroundColor: AppColor.fontGrey,
                  currentIndicatorColor: AppColor.fontGrey,
                ),
                pauseAutoPlayOnManualNavigate: true,
              ),
            ),
          ),
          SizedBox(
            width: Get.width * 0.9,
            child: TextButton(
              style: Styles.buttonStyle,
              onPressed: _controller.nextPage,
              child: Text(
                'CONTINUE',
                style: Styles.btnStyle,
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.05,
          )
        ],
      ),
    );
  }
}
