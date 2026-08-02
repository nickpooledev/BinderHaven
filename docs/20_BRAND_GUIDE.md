# BinderHaven Brand Guide

**Version:** 1.0  
**Company:** Poole Labs  
**Product:** BinderHaven

---

# Mission

BinderHaven exists to provide collectors with a premium, elegant, and enjoyable way to organize, explore, and showcase their collections.

Every interaction should feel intentional, polished, and effortless.

---

# Brand Personality

BinderHaven is:

- Premium
- Professional
- Calm
- Minimal
- Collector-focused
- Timeless

BinderHaven is **not**:

- Loud
- Flashy
- Cartoonish
- Neon
- Overly playful

---

# Design Philosophy

The interface should resemble modern desktop software such as:

- Apple
- Linear
- Arc
- Notion

Whitespace is a feature—not empty space.

---

# Logo

Primary logo:

```
assets/branding/logos/binderhaven_primary_logo.png
```

The logo should always appear with generous surrounding space.

Never stretch or distort the logo.

---

# App Icon

Master source:

```
assets/branding/icons/app_icon_master_1024.png
```

The master icon is the source for all platform icons.

---

# Splash Screen

Reference artwork:

```
assets/branding/splash/splash_reference.png
```

The production splash screen will be recreated entirely in Flutter.

The reference image should never be shown directly during app startup.

---

# Color Philosophy

Colors will be centralized in:

```
lib/app/theme/colors.dart
```

No widget should hardcode color values.

---

# Typography

Typography definitions belong in:

```
lib/app/theme/typography.dart
```

No widget should hardcode font sizes.

---

# Spacing

Spacing tokens belong in:

```
lib/app/theme/spacing.dart
```

Padding and margins should always use design tokens.

---

# Border Radius

Border radius values belong in:

```
lib/app/theme/radius.dart
```

Rounded corners should remain subtle and consistent.

---

# Shadows

Shadow definitions belong in:

```
lib/app/theme/shadows.dart
```

Avoid excessive elevation.

---

# Animations

Animation values belong in:

```
lib/app/theme/animations.dart
```

Animations should feel:

- Smooth
- Slow
- Intentional

Never bouncy.

---

# Theme

Application theme configuration belongs in:

```
lib/app/theme/theme.dart
```

All visual styling should ultimately originate from the centralized theme.

---

# Design Tokens

BinderHaven follows a design token architecture.

Widgets should never contain hardcoded values for:

- Colors
- Padding
- Margins
- Radius
- Shadows
- Animation durations
- Typography

Instead, every value should originate from the centralized design system.

---

# Engineering Principle

Favor consistency over customization.

A smaller, coherent design system is preferable to a larger inconsistent one.