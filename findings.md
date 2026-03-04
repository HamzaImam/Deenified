# 🔍 Findings

> Research, discoveries, and constraints

---

## 📂 Workspace Discovery

**Date:** 2026-02-01

### Current Structure
```
deenified/
├── .agent/
│   └── rules/
├── architecture/     # SOPs (to be created)
├── tools/            # Python scripts
├── .tmp/             # Temporary workbench
├── gemini.md         # Project Constitution
├── task_plan.md      # Phase tracking
├── findings.md       # This file
├── progress.md       # Activity log
└── mcp.txt           # API credentials
```

---

## 🛠️ Tech Stack Constraints

Per `tech-stack.md` rules:
- **Frontend:** Flutter (latest stable)
- **State:** Riverpod (@riverpod annotated syntax ONLY)
- **Backend:** Supabase (Postgres, Auth, Storage)
- **Styling:** FlexColorScheme (Material 3)
- **Docs:** Context7 for syntax verification

---

## � MVP Features Summary

### A. Quran-Focused Features
1. **Surah Mastery Tracks** (Core MVP)
   - Start with Juz 'Amma (short surahs)
   - 8-12 question quizzes per surah
   - Linear progression: Read → Quiz → Pass (80%) → Unlock next
   - Similar to Manna Daily Bible App

### B. Islamic Studies Features
1. **Daily Deen Challenge** (Core MVP)
   - 7-10 question daily quiz
   - Streak system

2. **Topic Practice Mode** (MVP)
   - Categories: Qur'an Themes, Seerah, Hadith, History, Fiqh Basics
   - 10-15 question practice sessions
   - *Only ONE category for MVP - TBD*

3. **Retry Missed Questions** (MVP)
   - Compiles missed questions from Daily Deen & Topic Practice
   - Questions removed once answered correctly

### C. Audio Stories (Core MVP - Flagship Feature)
- Dramatized audio micro-episodes
- Story-driven lessons from Qur'an + Seerah
- Static cover art only (no video animations)
- Background playback support
- Optional trivia after episodes

---

## 📲 Onboarding Flow (19 Screens)

### Phase 1: Hook & Identity (Screens 1-2)
- Splash screen with social proof
- Mission statement

### Phase 2: Buy-In (Screens 3-8)
- User type selection (me/child/family/new muslim)
- Motivation selection
- Validation
- Friction/barriers selection
- Relationship with Allah
- Learning style

### Phase 3: Diagnosis (Screens 9-10)
- Loading screen (building plan)
- Diagnosis & solution reveal

### Phase 4: Solution Loop (Screens 11-13)
- Media reveal (audio stories)
- Mastery reveal (surah tracks)
- Commitment check

### Phase 5: Commitment (Screens 14-16)
- Features showcase
- Benefits showcase
- Scholar social proof

### Phase 6: Close/Paywall (Screens 17-19)
- Value stack
- Pricing (Monthly $11.99 / Yearly $59.99)
- Exit intent offer ($29.99/year)

---

## 💰 Pricing Structure

| Plan | Price | Breakdown |
|------|-------|-----------|
| Monthly | $11.99/mo | $143.88/year |
| Yearly (Primary) | $59.99/yr | $1.15/week |
| Exit Intent | $29.99/yr | $0.57/week |

---

## 🎨 Design Requirements

### Color Palette
- Primary: Deep Black (#0A0A0A)
- Accent: Metallic Gold (#D4AF37, #FFD700)
- Text: White/Off-white
- Style: Glassmorphism, premium luxury feel

### Typography
- Headlines: Playfair Display
- Body: Outfit

### Constraints
- NO cartoonish colors
- NO complex video animations
- Static cover art for audio stories

---

## 📚 Research Notes

> *Research to be conducted on GitHub for:*
- [ ] RevenueCat Flutter integration patterns
- [ ] Supabase Flutter best practices
- [ ] Audio background playback (just_audio + audio_service)
- [ ] Riverpod patterns for subscription state
- [ ] FlexColorScheme dark theme implementations

---

*Last Updated: 2026-02-01 15:27 CST*
