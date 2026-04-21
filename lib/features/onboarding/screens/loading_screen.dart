import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../providers/onboarding_provider.dart';

class LoadingScreen extends ConsumerStatefulWidget {
  const LoadingScreen({super.key});

  @override
  ConsumerState<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends ConsumerState<LoadingScreen> {
  int _currentMessageIndex = 0;
  double _progress = 0.0;
  Timer? _animTimer;

  final List<String> _messages = [
    'Analyzing your learning style...',
    'Calibrating Surah mastery path...',
    'Selecting ideal starting point...',
    'Curating audio stories...',
    'Personalizing your daily goals...',
    'Finalizing your Deenified plan...',
  ];

  @override
  void initState() {
    super.initState();
    _startLoadingAnimation();
  }

  void _startLoadingAnimation() {
    const totalDuration = Duration(seconds: 4);
    const updateInterval = Duration(milliseconds: 100);
    int steps = totalDuration.inMilliseconds ~/ updateInterval.inMilliseconds;
    int currentStep = 0;

    _animTimer = Timer.periodic(updateInterval, (timer) {
      currentStep++;

      setState(() {
        _progress = currentStep / steps;

        // Update message every ~15% progress
        int msgIndex = (_progress * _messages.length).floor();
        if (msgIndex < _messages.length) {
          _currentMessageIndex = msgIndex;
        }
      });

      if (currentStep >= steps) {
        timer.cancel();
        // Move to next screen automatically
        ref.read(onboardingProvider.notifier).nextStep();
      }
    });

    // Preload next step assets or data here if needed
  }

  @override
  void dispose() {
    _animTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.xl),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight - AppSpacing.xl * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: AppSpacing.xl),

                // Spinner
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircularProgressIndicator(
                    value: _progress,
                    strokeWidth: 6,
                    backgroundColor: AppColors.deepCharcoal,
                    valueColor:
                        const AlwaysStoppedAnimation(AppColors.metallicGold),
                  ),
                ),

                const SizedBox(height: AppSpacing.xxl),

                // Changing Text
                SizedBox(
                  height: 60,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: Text(
                      _messages[_currentMessageIndex],
                      key: ValueKey<int>(_currentMessageIndex),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.textPrimary,
                          ),
                    ),
                  ),
                ),

                const SizedBox(height: AppSpacing.xxl),

                Text(
                  '${(_progress * 100).toInt()}%',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.textTertiary,
                      ),
                ),

                const SizedBox(height: AppSpacing.xl),
              ],
            ),
          ),
        );
      },
    );
  }
}
