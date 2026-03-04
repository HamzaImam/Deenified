import 'dart:ui';

import 'package:flutter/material.dart';

import '../../core/constants/app_constants.dart';

/// Glassmorphic card widget following designGuidelines.md
class GlassCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final double borderRadius;
  final bool showBorder;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  const GlassCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.borderRadius = AppRadius.md,
    this.showBorder = true,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              padding: padding ?? const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: backgroundColor ?? AppColors.glassWhite,
                borderRadius: BorderRadius.circular(borderRadius),
                border: showBorder
                    ? Border.all(
                        color: AppColors.glassBorder,
                        width: 0.5,
                      )
                    : null,
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

/// Deep charcoal card for content sections
class ContentCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final bool selected;
  final VoidCallback? onTap;

  const ContentCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: AppDurations.fast,
        margin: margin ?? const EdgeInsets.only(bottom: AppSpacing.sm),
        padding: padding ?? const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: AppColors.deepCharcoal,
          borderRadius: BorderRadius.circular(AppRadius.md),
          border: Border.all(
            color: selected ? AppColors.metallicGold : AppColors.glassBorder,
            width: selected ? 2 : 0.5,
          ),
        ),
        child: child,
      ),
    );
  }
}
