# BinderHaven Engineering Bible

**Version:** 2.0

**Company:** Poole Labs

**Product:** BinderHaven

---

# Mission

BinderHaven is a premium cross-platform collection management application built for serious collectors.

The first release focuses on Pokémon collections, but the architecture is designed to support any collectible category in the future.

The application should feel comparable in quality to modern software such as Apple, Linear, Arc, and Notion.

---

# Engineering Philosophy

Every architectural decision should prioritize:

- Maintainability
- Scalability
- Readability
- Consistency

Avoid shortcuts that create technical debt.

The project should remain in a buildable state after every commit.

---

# Current Folder Structure

```text
lib/
├── app/
│   ├── app.dart
│   ├── core/
│   ├── features/
│   ├── shared/
│   │   └── widgets/
│   └── theme/
│       ├── animations.dart
│       ├── colors.dart
│       ├── radius.dart
│       ├── shadows.dart
│       ├── spacing.dart
│       ├── theme.dart
│       └── typography.dart
│
└── main.dart
```

---

# Theme System

The application uses a centralized design token architecture.

UI code should never hardcode:

- Colors
- Padding
- Radius
- Typography
- Shadows
- Animation durations

Everything should originate from the theme layer.

---

# Design Tokens

Current token files:

- AppColors
- AppSpacing
- AppRadius
- AppShadows
- AppAnimations
- AppTypography

---

# Application Bootstrap

Application startup flow:

```
main.dart
      ↓
BinderHavenApp
      ↓
MaterialApp
      ↓
ThemeData
      ↓
Application Shell
```

`main.dart` should remain minimal.

---

# Shared Widgets

Reusable UI components belong under:

```
app/shared/widgets/
```

Feature-specific widgets remain within their respective feature modules.

---

# Assets

```
assets/
├── branding/
├── fonts/
├── images/
├── illustrations/
├── animations/
└── mockups/
```

---

# Typography

Primary font:

**Inter**

Registered through `pubspec.yaml`.

All text styles originate from `AppTypography`.

---

# Color Philosophy

Background:
Near-black

Accent:
Premium muted gold

Visual language:

- Calm
- Premium
- Minimal

Avoid loud colors and excessive contrast.

---

# Animations

Animations should feel:

- Intentional
- Smooth
- Premium

Avoid exaggerated motion.

---

# Coding Standards

- Prefer composition over inheritance.
- Keep widgets focused on a single responsibility.
- Avoid magic numbers.
- Use design tokens.
- Keep imports organized.
- Comment only when it adds value.
- Favor readable code over clever code.

---

# Git Workflow

Every completed milestone should be:

1. Built
2. Analyzed
3. Tested
4. Committed
5. Pushed

Small commits are preferred over large commits.

---

# Sprint 1 Status

Completed:

- Project foundation
- Branding assets
- Theme architecture
- Design tokens
- Typography system
- Application bootstrap
- Shared widget architecture

Sprint 1 is considered complete once typography has been verified.

---

# Sprint 2 Roadmap

Sprint 2 focuses on the application shell.

Planned work:

1. Routing architecture
2. Navigation
3. Application shell
4. Native splash transition
5. Flutter splash animation
6. Home screen foundation

No collection features will be implemented until the application shell is complete.

---

This document is the authoritative engineering reference for BinderHaven.

Future development should continue from this document rather than the original Sprint 1 handoff.