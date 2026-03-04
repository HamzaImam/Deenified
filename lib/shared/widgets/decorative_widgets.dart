import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';

/// Gold gradient divider
class GoldenDivider extends StatelessWidget {
  final double height;
  final double width;

  const GoldenDivider({
    super.key,
    this.height = 1,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            AppColors.metallicGold.withValues(alpha: 0.5),
            AppColors.metallicGold,
            AppColors.metallicGold.withValues(alpha: 0.5),
            Colors.transparent,
          ],
          stops: const [0, 0.2, 0.5, 0.8, 1],
        ),
      ),
    );
  }
}

/// Progress ring for displaying completion percentages
class ProgressRing extends StatelessWidget {
  final double progress;
  final double size;
  final double strokeWidth;
  final Color? progressColor;
  final Color? backgroundColor;
  final Widget? child;

  const ProgressRing({
    super.key,
    required this.progress,
    this.size = 80,
    this.strokeWidth = 8,
    this.progressColor,
    this.backgroundColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: size,
            height: size,
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: strokeWidth,
              backgroundColor: backgroundColor ?? AppColors.deepCharcoal,
              valueColor: AlwaysStoppedAnimation(
                progressColor ?? AppColors.metallicGold,
              ),
              strokeCap: StrokeCap.round,
            ),
          ),
          if (child != null) child!,
        ],
      ),
    );
  }
}

/// Locked overlay for premium content
class LockedOverlay extends StatelessWidget {
  final Widget child;
  final bool isLocked;
  final VoidCallback? onTap;

  const LockedOverlay({
    super.key,
    required this.child,
    required this.isLocked,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Apply grayscale filter when locked
        ColorFiltered(
          colorFilter: isLocked
              ? const ColorFilter.matrix(<double>[
                  0.2126,
                  0.7152,
                  0.0722,
                  0,
                  0,
                  0.2126,
                  0.7152,
                  0.0722,
                  0,
                  0,
                  0.2126,
                  0.7152,
                  0.0722,
                  0,
                  0,
                  0,
                  0,
                  0,
                  1,
                  0,
                ])
              : const ColorFilter.mode(
                  Colors.transparent,
                  BlendMode.dst,
                ),
          child: child,
        ),
        if (isLocked)
          Positioned.fill(
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.richBlack.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
                child: const Center(
                  child: Icon(
                    Icons.lock_outline,
                    color: AppColors.softGold,
                    size: 32,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
