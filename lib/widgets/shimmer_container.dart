import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainer extends StatelessWidget {
  /// Creates a [Container] with Shimmer effect.
  ///
  /// The [width] parameter is required.
  /// Default [height] is 24px.
  const ShimmerContainer({super.key, required this.width, this.height = 24});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.1),
      highlightColor: Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(.3),
      child: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }

  /// Creates a [ShimmerContainer] that will become as wide as its parent allows.
  /// Default [height] is 24px.
  const ShimmerContainer.expanded({super.key, this.height = 24}):
        width = double.infinity;
}