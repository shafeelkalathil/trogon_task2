import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trogon_task2/core/constants/image_constants.dart';
import 'package:trogon_task2/core/utils/extension/size_extension.dart';
import '../../../core/constants/color_constant.dart';
import '../../../core/utils/style/text_style.dart';
import '../widgets/animated_card.dart';

class AddFlashCardScreen extends StatelessWidget {
  const AddFlashCardScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    return Scaffold(
      body: Stack(
        children: [
          // Curved background
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 300), // Full screen width and height of 300px
              painter: CurvedPainter(),
              child: SvgPicture.asset(AppImages.flashCardBg),
            ),
          ),
          // Your main content
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: context.screenHeight * 0.1),
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: Color(0xffECECEC), width: 2),
                            padding: EdgeInsets.only(left: 1),
                            backgroundColor: Colors.white,
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        SizedBox(width: context.screenWidth * 0.16),
                        Text("Flash Card", style: heading3.copyWith(color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: context.screenHeight * 0.12),
                    Row(
                      children: [
                        Text(title, style: heading1.copyWith(color: Colors.black)),
                        SizedBox(width: context.screenWidth * 0.1),
                        _circularProgressWithText(percentage: 30,text: '5/50')
                      ],
                    ),
                    SizedBox(height: context.screenHeight * 0.1),
                    CarouselSlider.builder(
                      itemCount: 5,
                      itemBuilder: (context, index, realIndex) {
                        return const AnimatedCard();
                      },
                      options: CarouselOptions(
                        height: context.screenWidth * 0.6,
                        enlargeCenterPage: true,
                        autoPlay: false,
                        aspectRatio: 16 / 9,
                        autoPlayInterval: Duration(seconds: 3),
                      ),
                      // carouselController: _controller,
                    ),
                    SizedBox(height: context.screenHeight * 0.1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            // _controller.previousPage();
                          },
                          child: Container(
                            height: 40,
                            width: context.screenWidth * 0.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(6),
                              border: Border.all(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Previous",
                                style: heading6.copyWith(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // _controller.nextPage();
                          },
                          child: Container(
                            height: 40,
                            width: context.screenWidth * 0.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(6),
                              border: Border.all(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Next",
                                style: heading6.copyWith(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xffA40DEE);
    Path path = Path();

    path.lineTo(0, 150);
    path.quadraticBezierTo(
      size.width / 2, 250,
      size.width, 150,
    );
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

Widget _circularProgressWithText({required int percentage, String? text}) {
  var value = percentage / 100.0;
  var size = 70.0;

  text ??= '$percentage%';

  return Stack(
    alignment: AlignmentDirectional.center,
    children: <Widget>[
      Center(
        child: SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            strokeWidth: 8,
            value: value,
            backgroundColor: Colors.grey,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      Center(child: Text(text)),
    ],
  );
}
