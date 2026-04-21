import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

import '../../../core/constants/app_constants.dart';
import '../../../shared/widgets/widgets.dart';
import '../../../services/supabase_service.dart';
import '../providers/onboarding_provider.dart';

class MediaRevealScreen extends ConsumerStatefulWidget {
  const MediaRevealScreen({super.key});

  @override
  ConsumerState<MediaRevealScreen> createState() => _MediaRevealScreenState();
}

class _MediaRevealScreenState extends ConsumerState<MediaRevealScreen> {
  VideoPlayerController? _videoController;
  bool _isVideoInitialized = false;
  bool _isPlaying = false;
  bool _videoError = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    try {
      // Build the public URL for the trailer
      final videoUrl = SupabaseService.instance.client.storage
          .from('trailers')
          .getPublicUrl('audio-originals.mp4');

      _videoController = VideoPlayerController.networkUrl(Uri.parse(videoUrl));

      await _videoController!.initialize();

      _videoController!.addListener(() {
        if (mounted) {
          setState(() {
            _isPlaying = _videoController!.value.isPlaying;
          });
        }
      });

      if (mounted) {
        setState(() {
          _isVideoInitialized = true;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _videoError = true;
        });
      }
    }
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_videoController == null) return;

    if (_videoController!.value.isPlaying) {
      _videoController!.pause();
    } else {
      _videoController!.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight - AppSpacing.lg * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: AppSpacing.xl),

                // Video Player / Placeholder
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppRadius.lg),
                  child: Container(
                    height: 240,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.deepCharcoal,
                      borderRadius: BorderRadius.circular(AppRadius.lg),
                      border: Border.all(color: AppColors.glassBorder),
                    ),
                    child: _buildVideoContent(),
                  ),
                ),

                const SizedBox(height: AppSpacing.xl),

                Text(
                  'Dramatized Audio Originals',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: AppColors.metallicGold,
                        fontWeight: FontWeight.bold,
                      ),
                ),

                const SizedBox(height: AppSpacing.md),

                Text(
                  'Experience the Qur\'an and Seerah like never before with immersive soundscapes and professional narration.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.textSecondary,
                        height: 1.5,
                      ),
                ),

                const SizedBox(height: AppSpacing.xxl),

                PremiumButton(
                  text: 'I\'M LISTENING',
                  onPressed: () {
                    _videoController?.pause();
                    ref.read(onboardingProvider.notifier).nextStep();
                  },
                ),

                const SizedBox(height: AppSpacing.xl),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildVideoContent() {
    if (_videoError || (!_isVideoInitialized && _videoController == null)) {
      // Fallback placeholder
      return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.deepCharcoal,
                  AppColors.richBlack,
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.movie_outlined,
                    size: 48,
                    color: AppColors.metallicGold.withValues(alpha: 0.6),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Trailer Coming Soon',
                    style: TextStyle(
                      color: AppColors.textTertiary,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: AppColors.richBlack.withValues(alpha: 0.7),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow_rounded,
              size: 48,
              color: AppColors.metallicGold,
            ),
          ),
        ],
      );
    }

    if (!_isVideoInitialized) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.metallicGold),
      );
    }

    // Video player with controls overlay
    return GestureDetector(
      onTap: _togglePlayPause,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AspectRatio(
            aspectRatio: _videoController!.value.aspectRatio,
            child: VideoPlayer(_videoController!),
          ),

          // Play/Pause overlay
          AnimatedOpacity(
            opacity: _isPlaying ? 0.0 : 1.0,
            duration: const Duration(milliseconds: 300),
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: AppColors.richBlack.withValues(alpha: 0.7),
                shape: BoxShape.circle,
              ),
              child: Icon(
                _isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                size: 48,
                color: AppColors.metallicGold,
              ),
            ),
          ),

          // Progress bar at bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: VideoProgressIndicator(
              _videoController!,
              allowScrubbing: true,
              colors: const VideoProgressColors(
                playedColor: AppColors.metallicGold,
                bufferedColor: AppColors.glassBorder,
                backgroundColor: AppColors.deepCharcoal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
