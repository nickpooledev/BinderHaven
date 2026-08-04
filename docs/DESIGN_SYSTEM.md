# BinderHaven Design System
Version: 1.0
Status: Active
Owner: Poole Labs

---

# Purpose

The BinderHaven Design System defines the visual language, interaction patterns, and component standards for the entire application.

Its purpose is to ensure every screen, widget, animation, and interaction feels like part of one cohesive product.

Whenever a design decision must be made, this document serves as the source of truth.

---

# Design Philosophy

BinderHaven is **not** a spreadsheet.

BinderHaven is **not** a database.

BinderHaven should feel like walking into a premium collector's library.

Every interaction should reinforce that feeling.

Core Principles

• Calm
• Premium
• Minimal
• Collector Focused
• Fast
• Beautiful
• Intentional

Users should never feel overwhelmed.

---

# Visual Identity

Overall Style

Modern

Minimal

Premium

Dark First

Collector Focused

Inspired by

Apple

Notion

Steam

High-end bookshelf photography

Premium leather binders

---

# Color Palette

Background

#121212

Primary Surface

#1C1C1E

Secondary Surface

#2A2A2D

Shelf

Warm Walnut

Accent

Determined by Game Branding

Borders

Subtle only

Never heavy

---

# Typography

Headings

Bold

Large

Confident

Metadata

Small

Uppercase

Letter spacing increased

Binder Titles

Primary visual element

Readable from shelf view

Never truncate unless absolutely necessary.

---

# Spacing Philosophy

Whitespace is a feature.

Never crowd the interface.

Prefer breathing room over density.

Standard spacing scale

4

8

12

16

24

32

48

64

Avoid arbitrary spacing values.

---

# Elevation

Elevation should communicate importance.

Primary Content

Soft shadow

Dialogs

Medium shadow

Floating Elements

Strong shadow

Avoid excessive glow.

---

# Motion

Every animation must have purpose.

Allowed

Fade

Scale

Slide

Physical movement

Discouraged

Bounce

Flash

Elastic motion

Animation Duration

Fast

150–200ms

Standard

250ms

Large transitions

350–500ms

---

# Binder

Purpose

The binder is the centerpiece of BinderHaven.

It should feel like a real collector's binder sitting on a shelf.

Current Dimensions

Width

108

Height

310

Spine

74 × 240

Corner Radius

12

Appearance

Premium leather

Subtle highlights

Soft shadow

No excessive gloss

---

# Binder Spine

Hierarchy

Game Identity

Set Name

Binder Style

Status

Future

Completion

Favorite

Sync Status

The Set Name is the hero.

Game branding supports it.

---

# Shelf

Purpose

Ground the library.

Never distract from binders.

Rules

Shelf should appear solid.

Binders should visually rest against the shelf.

Shelf should never dominate the page.

---

# Library

The library is the primary experience.

Users should instantly recognize

Games

Sets

Favorites

Progress

without opening a binder.

Scrolling should remain smooth regardless of collection size.

---

# Empty States

Empty should never feel broken.

Instead encourage action.

Example

Your library is empty.

Create your first binder to begin your collection.

---

# Dialogs

Rounded corners

Consistent spacing

Single primary action

Never overwhelm users with options.

---

# Buttons

Filled

Primary actions

Outlined

Secondary

Text

Navigation

Destructive

Red only when irreversible.

---

# Icons

Simple

Outlined

Consistent weight

Never mix styles.

---

# Game Branding

Each supported game has a branding profile.

Branding contains

Display Name

Logo

Icon

Accent Color

Future Theme Data

UI never hardcodes branding.

Everything comes from the Branding layer.

---

# Component Principles

Every component should have one responsibility.

Example

BinderWidget

Renders a binder.

BinderSpine

Renders a spine.

LibraryShelf

Displays a shelf.

BinderLibrary

Stores state.

---

# Performance

Animations must remain smooth.

Avoid rebuilding large widget trees.

Prefer lazy loading.

Avoid unnecessary effects.

---

# Accessibility

Support large text.

Maintain color contrast.

Never rely on color alone.

Interactive elements must have comfortable touch targets.

---

# Future Visual Goals

Custom Binder Themes

Premium Binder Materials

Foil Logos

Embossed Covers

Animated Binder Opening

Page Turning Animation

Glass Display Shelves

Lighting Themes

Seasonal Themes

---

# Design Rule

When uncertain, choose the simpler solution.

Premium software is remembered for clarity, not decoration.

Every pixel should have a purpose.

If a visual element does not improve usability, hierarchy, or delight, it should not exist.

---

End of Design System