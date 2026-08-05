# BinderHaven

# Design Tokens

Version: 1.0
Status: Active
Owner: Poole Labs

---

# Purpose

The Design Tokens document defines the visual constants used throughout BinderHaven.

Design tokens provide a single source of truth for the application's appearance.

Every color, spacing value, typography scale, animation duration, radius, elevation level, and sizing rule should originate from this document.

The Flutter implementation must mirror these values.

---

# Philosophy

Consistency creates quality.

Rather than defining visual values individually throughout the application, BinderHaven uses reusable design tokens.

Changing one token should consistently update the entire application.

---

# Color Tokens

## Surface

| Token | Purpose |
|--------|---------|
| Surface.Primary | Primary application background |
| Surface.Secondary | Cards, panels, sheets |
| Surface.Tertiary | Elevated containers |
| Surface.Overlay | Dialog overlays |

---

## Text

| Token | Purpose |
|--------|---------|
| Text.Primary | Primary content |
| Text.Secondary | Supporting information |
| Text.Tertiary | Metadata |
| Text.Disabled | Disabled controls |

---

## Accent

| Token | Purpose |
|--------|---------|
| Accent.Primary | Primary actions |
| Accent.Success | Completion |
| Accent.Warning | Attention |
| Accent.Error | Errors |

Game branding colors should remain separate from application accent colors.

---

## Border

| Token | Purpose |
|--------|---------|
| Border.Subtle | Standard borders |
| Border.Strong | Selected states |

---

# Typography Tokens

Typography should remain readable and consistent.

| Token | Purpose |
|--------|---------|
| Display | Major branding |
| H1 | Page titles |
| H2 | Section titles |
| H3 | Card titles |
| Body | Primary content |
| Caption | Supporting information |
| Metadata | Secondary information |
| Label | Buttons and controls |

Typography should communicate hierarchy rather than decoration.

---

# Spacing Tokens

BinderHaven follows an 8-point spacing system.

| Token | Value |
|--------|------:|
| XS | 4 |
| SM | 8 |
| MD | 16 |
| LG | 24 |
| XL | 32 |
| XXL | 48 |
| XXXL | 64 |

Avoid arbitrary spacing values.

---

# Radius Tokens

Rounded corners should feel soft and premium.

| Token | Purpose |
|--------|---------|
| Small | Controls |
| Medium | Cards |
| Large | Dialogs |
| Extra Large | Hero components |

---

# Elevation Tokens

Elevation communicates depth.

| Token | Purpose |
|--------|---------|
| Level 0 | Flat |
| Level 1 | Cards |
| Level 2 | Floating panels |
| Level 3 | Dialogs |
| Level 4 | Temporary overlays |

Shadows should remain subtle.

---

# Shadow Tokens

Every shadow should have a defined purpose.

| Token | Purpose |
|--------|---------|
| Card | Standard components |
| Binder | Binder covers |
| Dialog | Dialog windows |
| Floating | Floating UI |

Avoid decorative shadows.

---

# Animation Tokens

Animation timing should remain consistent throughout BinderHaven.

| Token | Duration |
|--------|---------:|
| Instant | 0 ms |
| Fast | 150 ms |
| Standard | 250 ms |
| Emphasized | 400 ms |
| Scene Transition | 600 ms |

Animations should feel smooth and intentional.

---

# Motion Curves

Approved animation curves include:

• Ease In

• Ease Out

• Ease In Out

• Decelerate

Avoid exaggerated elastic or bouncing motion.

---

# Opacity Tokens

| Token | Purpose |
|--------|---------|
| Disabled | Disabled controls |
| Hover | Hover states |
| Pressed | Press feedback |
| Overlay | Background overlays |

Opacity should communicate interaction rather than decoration.

---

# Icon Tokens

Icons should remain consistent.

Standard sizes include:

• Small

• Medium

• Large

• Extra Large

Icons should use a consistent stroke weight throughout the application.

---

# Component Tokens

Reusable components should derive visual values from design tokens.

Examples include:

• Buttons

• Cards

• Dialogs

• Navigation

• Binder Covers

• Progress Indicators

Components should never define independent colors, spacing, or typography.

---

# Wallpaper Rules

Wallpapers should remain behind application content.

UI readability always takes priority.

Future wallpaper customization should continue using these same design tokens.

---

# Accessibility Tokens

Accessibility should influence every token.

Examples include:

• Minimum touch target sizes

• High contrast variants

• Reduced motion alternatives

• Dynamic typography scaling

Accessibility should never require separate component implementations.

---

# Flutter Mapping

Every design token should have a corresponding implementation within the Flutter theme layer.

Examples include:

| Design Token | Flutter |
|---------------|---------|
| Surface.Primary | AppColors.surfacePrimary |
| Text.Primary | AppColors.textPrimary |
| Radius.Medium | AppRadius.medium |
| Spacing.LG | AppSpacing.lg |
| H1 | AppTypography.h1 |
| Fast | AppAnimations.fast |

The implementation should remain synchronized with this document.

---

# Token Evolution

Design tokens are expected to evolve as BinderHaven matures.

Changes should:

• Improve consistency

• Reduce duplication

• Maintain backward compatibility whenever practical

Token changes should be deliberate and documented.

---

# Final Principle

Design tokens are BinderHaven's visual language.

Every screen, component, and animation should speak that language consistently.

When every part of the application uses the same vocabulary, BinderHaven becomes recognizable through quality rather than complexity.