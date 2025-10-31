import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class KitsufestScreen extends StatelessWidget {
  const KitsufestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/background.svg',
              fit: BoxFit.cover,
            ),
          ),

          // Vector overlay (full screen)
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/vector.svg',
              fit: BoxFit.cover,
            ),
          ),

          // Kitsune fox image group
          Align(
  alignment: Alignment(0, -0.2), 
  child: SizedBox(
    width: 166,
    height: 193,
    child: Stack(
      children: [
        SvgPicture.asset(
          'assets/vector-1.svg',
          width: 166,
          height: 193,
          fit: BoxFit.fill,
        ),
      ],
    ),
  ),
),

          // "KITSUFEST" title
          Positioned(
            top: 507,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'KITSUFEST',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Exo', // Pastikan font ini terdaftar di pubspec.yaml
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                  letterSpacing: 4.32,
                  color: const Color(0xFFF8A3C4),
                  shadows: const [
                    Shadow(offset: Offset(-1, -1), color: Color(0xFFF8A3C4)),
                    Shadow(offset: Offset(1, -1), color: Color(0xFFF8A3C4)),
                    Shadow(offset: Offset(-1, 1), color: Color(0xFFF8A3C4)),
                    Shadow(offset: Offset(1, 1), color: Color(0xFFF8A3C4)),
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
