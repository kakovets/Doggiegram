import 'package:flutter/material.dart';
import '../widgets/shimmer_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent,),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Hero(
              tag: 'profile_avatar',
              child: Image.asset(
                'assets/avatar.png',
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                16,
                MediaQuery.of(context).size.height * 0.4,
                16,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ovetskak',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'online',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 32,),

                  const ShimmerContainer(width: 100, height: 16,),

                  for (int i = 0; i < 4; i++)
                    const ShimmerContainer.expanded(height: 24,),

                  const SizedBox(height: 24,),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShimmerContainer(width: 200, height: 16,),
                      ShimmerContainer(width: 80, height: 16,),
                    ],
                  ),

                  for (int i = 0; i < 4; i++)
                    const ShimmerContainer.expanded(height: 24,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}