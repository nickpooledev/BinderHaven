# BinderHaven

# Component Library

Version: 2.0
Status: Active
Owner: Poole Labs

---

# Purpose

The Component Library defines the major product components that make up BinderHaven.

These components represent the building blocks of the user experience—not individual Flutter widgets.

Every screen within BinderHaven should be assembled from these product components.

This document exists to promote consistency, reuse, scalability, and maintainability.

As BinderHaven evolves, new components may be added, existing components may expand, and some components may be retired.

---

# Component Philosophy

Components are experiences.

Not widgets.

Each component should have:

• One responsibility

• A clear purpose

• Predictable behavior

• Consistent appearance

• Defined relationships

A component should solve one problem well.

---

# Component Hierarchy

BinderHaven is constructed from reusable product components.

```
Application

    Library

        Binder

            Binder Cover

            Binder Metadata

            Progress

            Status Indicators

        Collection

            Binder Pages

                Pocket Grid

                    Pocket

                        Trading Card

                            Card Details

    Search

    Scanner

    Settings

    Dialogs
```

Each layer builds upon the one beneath it.

---

# Core Product Components

The following components define the BinderHaven experience.

---

# Library

Purpose

The Library is the application's home.

It presents every collection owned by the collector.

Responsibilities

• Display binders

• Support browsing

• Searching

• Filtering

• Sorting

• Wallpaper presentation

• Collection organization

Future

Library layouts may evolve without changing the underlying product philosophy.

---

# Binder

Purpose

Represents an individual collection.

The Binder is the emotional centerpiece of BinderHaven.

Responsibilities

• Visual identity

• Collection representation

• Progress

• Customization

• Opening interaction

Future

Support:

• Binder themes

• Materials

• Licensed appearances

• Custom personalization

---

# Binder Cover

Purpose

Provide the visual identity of a binder.

Displays

• Collection Name

• Optional Theme

• Progress

• Favorite Status

The Binder Cover should remain simple and timeless.

---

# Binder Metadata

Purpose

Display essential information.

Examples

Collection Name

Game

Completion %

Cards Owned

Cards Remaining

Metadata should support the binder.

Never overpower it.

---

# Binder Page

Purpose

Represent one physical page within a binder.

Responsibilities

Display pockets.

Support page turning.

Support page navigation.

Provide completion feedback.

Future

Support multiple layouts.

---

# Pocket Grid

Purpose

Arrange pockets according to the selected binder layout.

Examples

4 Pocket

9 Pocket

12 Pocket

16 Pocket

Pocket layouts should remain interchangeable.

---

# Pocket

Purpose

Represent one physical binder pocket.

States

Owned

Missing

Reserved

Wishlist

Duplicate

Future

Animated insertion.

Ownership effects.

Completion highlights.

---

# Trading Card

Purpose

Display a single card.

Responsibilities

Artwork

Ownership

Variant Status

Card Details

Cards are always the primary visual element.

---

# Card Details

Purpose

Present complete information about a card.

Examples

Card Image

Name

Number

Illustrator

Rarity

Variants

Collection Notes

Future

Grading

Pricing

Purchase Links

---

# Progress

Purpose

Motivate collectors.

Progress is not merely statistical information.

Progress represents achievement.

Displayed Information

Completion %

Cards Owned

Cards Remaining

Pages Completed

Master Set Status

Progress should remain visible throughout the collecting experience.

---

# Search

Purpose

Allow collectors to quickly locate anything within BinderHaven.

Examples

Cards

Sets

Collections

Games

Illustrators

Future

Natural language searching.

AI-assisted searching.

---

# Scanner

Purpose

Digitize physical cards.

Responsibilities

Recognition

Identification

Collection Integration

Future

Batch scanning

AI recognition

Condition estimation

---

# Dialog

Purpose

Support focused interactions.

Dialogs should simplify workflows.

Never interrupt unnecessarily.

---

# Navigation

Purpose

Allow collectors to move naturally throughout BinderHaven.

Navigation should always answer:

Where am I?

Where can I go?

How do I return?

---

# Wallpaper

Purpose

Establish atmosphere.

Responsibilities

Support personalization.

Complement collections.

Maintain readability.

Future

User supplied wallpapers.

Seasonal wallpapers.

Animated wallpapers.

---

# Settings

Purpose

Allow personalization without overwhelming collectors.

Examples

Theme

Wallpaper

Animations

Accessibility

Collection Preferences

---

# Statistics

Purpose

Provide insights into a collection.

Statistics should support collecting.

Never become the primary experience.

---

# Future Product Components

Potential future components include:

Achievement System

Wishlist

Trade Binder

Marketplace

Friends

Profiles

Collection Sharing

Community Feed

Cloud Sync

Collection Import

AI Assistant

These components remain conceptual until promoted into active development.

---

# Component Relationships

Components should build upon one another.

Example

Library

↓

Binder

↓

Page

↓

Pocket

↓

Trading Card

↓

Card Details

Higher-level components should never duplicate responsibilities handled by lower-level components.

---

# Component Lifecycle

Every new component should progress through the following stages.

Concept

↓

Specification

↓

Design Review

↓

Implementation

↓

Testing

↓

Production

↓

Maintenance

No component should skip documentation.

---

# Component Quality Standards

Every component should be:

Reusable

Predictable

Accessible

Responsive

Performant

Theme Aware

Well Documented

Easy to Understand

Future Friendly

---

# Component Evolution

Components are expected to evolve.

Visual improvements.

Additional functionality.

Animation.

Customization.

Accessibility.

Performance.

Evolution should improve existing components rather than replace them whenever practical.

---

# Design Responsibility

Every component should contribute to the BinderHaven identity.

When designing a component ask:

Does it improve the collecting experience?

Does it feel premium?

Does it remain intuitive?

Does it support customization?

Does it reinforce ownership?

If the answer is no, redesign it.

---

# Future Documentation

Each major component documented here will eventually receive its own specification document.

Examples

Binder

Binder Page

Trading Card

Pocket

Library

Scanner

Search

These documents will define implementation expectations, behaviors, visual standards, and future enhancements.

---

# Final Principle

Collectors should never think about components.

They should simply enjoy using BinderHaven.

A successful Component Library disappears into the experience.

Its consistency allows every part of the application to feel intentional, cohesive, and unmistakably BinderHaven.