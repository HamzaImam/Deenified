# 🧠 Deenified - Project Constitution (gemini.md)

> **This file is LAW.** All decisions, schemas, and architectural rules are defined here.

---

## 🎯 North Star

**"A premium, gamified Islamic EdTech MVP that is 'Cashflow-Ready' for a Ramadan launch, featuring a linear Surah Mastery track and dramatized audio stories."**

**Deadline:** February 10th, 2026 (Internal Testing)

---

## 📊 Data Schemas

### Users Table
```sql
CREATE TABLE users (
  id UUID PRIMARY KEY REFERENCES auth.users(id),
  email TEXT NOT NULL,
  display_name TEXT,
  avatar_url TEXT,
  
  -- Onboarding responses
  user_type TEXT CHECK (user_type IN ('me', 'child', 'family', 'new_muslim')),
  motivation TEXT CHECK (motivation IN ('closeness', 'confidence', 'consistency', 'halal_fun')),
  barriers TEXT[], -- Array of selected barriers
  relationship_with_allah TEXT CHECK (relationship_with_allah IN ('distant', 'stagnant', 'growing', 'strong')),
  learning_style TEXT CHECK (learning_style IN ('visual', 'auditory', 'kinesthetic')),
  commitment_level TEXT CHECK (commitment_level IN ('no_excuses', 'try_best')),
  
  -- Subscription
  subscription_status TEXT DEFAULT 'free' CHECK (subscription_status IN ('free', 'monthly', 'yearly')),
  subscription_expires_at TIMESTAMPTZ,
  
  -- Streaks & Progress
  current_streak INTEGER DEFAULT 0,
  longest_streak INTEGER DEFAULT 0,
  last_activity_date DATE,
  total_xp INTEGER DEFAULT 0,
  
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
```

### Surahs Table
```sql
CREATE TABLE surahs (
  id SERIAL PRIMARY KEY,
  surah_number INTEGER UNIQUE NOT NULL, -- 1-114
  name_arabic TEXT NOT NULL,
  name_english TEXT NOT NULL,
  name_transliteration TEXT NOT NULL,
  total_ayahs INTEGER NOT NULL,
  juz INTEGER NOT NULL,
  revelation_type TEXT CHECK (revelation_type IN ('meccan', 'medinan')),
  order_in_track INTEGER NOT NULL, -- For linear progression (Juz Amma first)
  cover_image_url TEXT,
  is_locked BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

### Surah Progress Table
```sql
CREATE TABLE surah_progress (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  surah_id INTEGER REFERENCES surahs(id),
  status TEXT DEFAULT 'locked' CHECK (status IN ('locked', 'in_progress', 'completed')),
  highest_score INTEGER DEFAULT 0,
  attempts INTEGER DEFAULT 0,
  completed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, surah_id)
);
```

### Quiz Questions Table
```sql
CREATE TABLE quiz_questions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  surah_id INTEGER REFERENCES surahs(id),
  category TEXT CHECK (category IN ('surah_mastery', 'daily_deen', 'topic_practice')),
  topic TEXT, -- For topic practice: quran_themes, seerah, hadith, history, fiqh
  question_text TEXT NOT NULL,
  question_type TEXT CHECK (question_type IN ('multiple_choice', 'true_false')),
  options JSONB NOT NULL, -- [{text, isCorrect}]
  explanation TEXT,
  difficulty INTEGER CHECK (difficulty BETWEEN 1 AND 3),
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

### Quiz Attempts Table
```sql
CREATE TABLE quiz_attempts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  quiz_type TEXT CHECK (quiz_type IN ('surah_mastery', 'daily_deen', 'topic_practice', 'retry')),
  surah_id INTEGER REFERENCES surahs(id), -- nullable for daily/topic
  topic TEXT, -- For topic practice
  score INTEGER NOT NULL,
  total_questions INTEGER NOT NULL,
  passed BOOLEAN NOT NULL,
  time_taken_seconds INTEGER,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

### Missed Questions Table
```sql
CREATE TABLE missed_questions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  question_id UUID REFERENCES quiz_questions(id),
  source_quiz_type TEXT NOT NULL,
  attempts INTEGER DEFAULT 1,
  mastered BOOLEAN DEFAULT false,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, question_id)
);
```

### Audio Stories Table
```sql
CREATE TABLE audio_stories (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  description TEXT,
  series_name TEXT, -- e.g., "Stories of the Prophets"
  episode_number INTEGER,
  cover_image_url TEXT NOT NULL,
  audio_url TEXT NOT NULL,
  duration_seconds INTEGER NOT NULL,
  transcript TEXT,
  is_premium BOOLEAN DEFAULT true,
  order_index INTEGER,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

### Story Progress Table
```sql
CREATE TABLE story_progress (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  story_id UUID REFERENCES audio_stories(id),
  playback_position_seconds INTEGER DEFAULT 0,
  completed BOOLEAN DEFAULT false,
  completed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, story_id)
);
```

### Daily Challenge Table
```sql
CREATE TABLE daily_challenges (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  challenge_date DATE UNIQUE NOT NULL,
  question_ids UUID[] NOT NULL, -- 7-10 question IDs
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

---

## 🔒 Behavioral Rules

### Aesthetic Tone: "Premium Islamic Luxury"
1. **Colors:** Deep blacks (#0A0A0A), metallic golds (#D4AF37, #FFD700), subtle whites
2. **Style:** Glassmorphism, subtle gradients, no "cartoonish" elements
3. **Typography:** Outfit or Playfair Display (Google Fonts)
4. **Animations:** Subtle, elegant - NO complex video animations for MVP

### Logic Constraints
1. **Linear Progression:** Users MUST pass current Surah quiz (≥80% score) to unlock next
2. **No Skipping:** Locked content stays locked until earned
3. **Offline-First Audio:** Stories must support background playback (phone locked)
4. **Subscription Gating:** Premium content locked if subscription expires
5. **Progress Retention:** User progress preserved even if subscription lapses

### The "Do Not" Rules
1. ❌ No complex video animations - static cover art only
2. ❌ No skipping ahead in Surah tracks
3. ❌ No free access to premium audio stories
4. ❌ No ads - premium experience only

### Edge Cases
1. **Subscription Expires:** Immediate access loss, progress retained for resubscription
2. **Quiz Fail:** Can retry immediately, no penalty except no progress
3. **Streak Break:** Reset to 0, longest streak preserved
4. **Offline Mode:** Cached content playable, sync on reconnect

---

## 🏗️ Architectural Invariants

| Component | Technology | Notes |
|-----------|------------|-------|
| Framework | Flutter (latest stable) | Cross-platform |
| State | Riverpod (@riverpod) | Annotated syntax ONLY |
| Backend | Supabase | Auth, Postgres, Storage |
| Payments | RevenueCat | iOS/Android subscriptions |
| Theming | FlexColorScheme | Material 3 |
| Audio | just_audio + audio_service | Background playback |
| Fonts | Google Fonts | Outfit, Playfair Display |

---

## 🔗 Integrations

| Service | Status | Purpose |
|---------|--------|---------|
| Supabase | 🔑 Ready | Backend (Auth, DB, Storage) |
| RevenueCat | ⏳ Pending | Subscription management |
| GitHub | 🔑 Ready | Private repository |
| Context7 | 🔑 Ready | Documentation lookup |

---

## 📱 Feature Matrix (MVP)

| Feature | Priority | Premium | Description |
|---------|----------|---------|-------------|
| Surah Mastery | P0 | Partial | Juz Amma track, 8-12 questions per surah |
| Daily Deen Challenge | P0 | Free tier | 7-10 daily questions, streak system |
| Audio Stories | P0 | Yes | Dramatized Quran episodes |
| Topic Practice | P1 | Yes | Category-based question bank |
| Retry Missed | P1 | Yes | Review incorrect answers |
| Onboarding | P0 | N/A | 19-screen personalization flow |

---

## 📝 Maintenance Log

| Date | Change | Author |
|------|--------|--------|
| 2026-02-01 | Initial constitution created | System Pilot |
| 2026-02-01 | Added complete data schemas | System Pilot |
| 2026-02-01 | Documented behavioral rules | System Pilot |

---

*Last Updated: 2026-02-01*
