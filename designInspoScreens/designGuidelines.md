📖 Project Design Constitution: [Deenified] 
Status: Version 1.0 (B.L.A.S.T. Phase 1)
Primary Aesthetic: Premium Islamic Luxury (Modern Dark Mode)
UX Core: Gamified Linear Mastery (Duolingo-style)


🎨 1. Color Palette (The "Black & Gold" System)
Do not use default Material 3 colors. All hex codes must be strictly followed.
Token   Hex Code    Usage
Rich Black (Surface)    #0D0D0D    Main background (Scaffold).
Deep Charcoal (Secondary)   #1A1A1A    Card backgrounds and containers.
Metallic Gold (Primary) #D4AF37    Primary buttons, progress bars, highlights.
Soft Gold (Tertiary)    #C5A059    Text accents, inactive icons, borders.
Glass Effect    RGBA(255, 255, 255, 0.05)    Frosted glass overlays with 20px blur.
Success (Emerald)   #2E7D32    Correct answers, streak icons.
Error (Ruby)    #C62828    Incorrect answers, expired hearts.


✍️ 2. Typography & Iconography
Primary Font: Outfit (Google Fonts) – Use for headings and buttons. It’s modern and slightly "techy."
Secondary Font: Playfair Display – Use for Qur'an verses or "wisdom" quotes for a premium, traditional feel.
Icon Style: Outlined/Linear. For the MVP, icons should be monochromatic (Gold) or Emerald Green for success states.


🏗️ 3. Component Architecture (The "Polished" Look)
A. The "Duolingo" Button
Standard Material buttons are too flat.
Style: 3D-effect (2.5D).
Specs: borderRadius: 12.0. A 4px bottom-shadow of a darker shade of gold (#A67C00) to make it look clickable.
Action: Subtle scale(0.95) animation on tap.

B. Surah Mastery Cards
Layout: Vertical list of "Mastery Tracks."
Design: Deep Charcoal (#1A1A1A) background with a thin gold border (0.5px).
Glassmorphism: Navigation bars must use a BackdropFilter with Blur(20, 20) to float over the black background.


🎮 4. Gamification Logic (Behavioral Rules)
Linear Unlock: All Surah cards (except the first) start in an isLocked: true state. They are grayed out with a lock icon.
The "Pass" Threshold: Users need an 80% score on a Surah Quiz to trigger the unlockNext() logic in Supabase.
Daily Streak: If lastLogin is > 24 hours from today, reset streak to 0 unless they have a "Streak Freeze" (future feature).


🛠️ 5. Implementation Instructions for the AI Agent
Strict Theming: Wrap the entire app in a ThemeData that uses Brightness.dark.
No Hardcoding: Always reference colors via Theme.of(context).colorScheme.primary (Gold) or surface (Black).
Riverpod Integration: Use a StateNotifier or the new @riverpod generator to manage the isLocked state of surahs.
Audio Player: Use the just_audio package. Background service must keep the audio playing even if the user navigates to the Quiz screen.