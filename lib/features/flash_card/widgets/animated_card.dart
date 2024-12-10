import 'package:flutter/material.dart';

class AnimatedCard extends StatefulWidget {
  const AnimatedCard({Key? key}) : super(key: key);

  @override
  _AnimatedCardState createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool isFront = true; // To keep track of the card's state (front/back)

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onCardTap() {
    setState(() {
      isFront = !isFront; // Toggle the card state
      if (isFront) {
        _controller.reverse(); // Flip back
      } else {
        _controller.forward(); // Flip forward
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onCardTap,
      child: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(_animation.value * 3.14159), // Flip on the Y-axis
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 250,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffA40DEE),
                      Color(0xff9C1EC2),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: isFront
                    ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Obvio',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.volume_down, color: Colors.white, size: 16),
                        Text('ob.wi.o', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: _onCardTap,
                      child: Container(
                        height: 65,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(20),
                        ),
                        child: const Center(
                          child: Icon(Icons.arrow_forward_ios, color: Color(0xff4A0E5C)),
                        ),
                      ),
                    ),
                  ],
                )
                    : Container(
                  decoration: BoxDecoration(
                    color: Colors.orange, // Back side color
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Back Side',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
