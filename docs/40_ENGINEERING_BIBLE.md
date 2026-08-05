# BinderHaven

# Engineering Bible

Version: 3.0
Status: Active
Owner: Poole Labs

---

# Purpose

The Engineering Bible defines the architectural principles, development standards, coding practices, and engineering philosophy behind BinderHaven.

It exists to ensure every contribution to the project follows a consistent direction.

This document is the authoritative engineering reference for BinderHaven.

When engineering decisions conflict, this document takes precedence.

---

# Engineering Mission

BinderHaven is being built as a premium cross-platform application for collectors.

Engineering exists to support the product vision.

Not the other way around.

Every technical decision should improve one or more of the following:

• Maintainability

• Scalability

• Performance

• Readability

• Reliability

• Testability

Engineering should enable creativity—not restrict it.

---

# Core Engineering Principles

## Build for Years, Not Weeks

BinderHaven should remain maintainable years from now.

Avoid shortcuts that create technical debt.

Choose long-term clarity over short-term speed.

---

## Product Before Code

The product experience always comes first.

Architecture exists to support the experience.

Never sacrifice usability simply because something is technically easier.

---

## Simplicity Wins

Simple systems are easier to maintain.

Simple APIs are easier to understand.

Simple code is easier to trust.

When two solutions solve the same problem, choose the simpler one.

---

## Consistency

Consistency is more valuable than cleverness.

The project should feel like it was written by one engineer.

Naming.

Formatting.

Architecture.

Patterns.

Everything should be consistent.

---

## Small Building Blocks

Large systems should be composed of small pieces.

Every class should have one responsibility.

Every widget should solve one problem.

Every file should have a clear purpose.

---

# Architecture

BinderHaven follows a feature-first architecture.

Each feature owns:

• Presentation

• Domain

• Application

• State

Shared functionality belongs in shared modules.

Feature-specific functionality remains within the feature.

---

# Project Structure

```
lib/

    app/

        core/

        domain/

        features/

        shared/

        state/

        services/

        theme/

    main.dart
```

The structure may evolve as BinderHaven grows, but the separation of responsibilities should remain.

---

# Layer Responsibilities

## Presentation

Responsible for:

User interface

User interaction

Animations

Navigation

No business logic.

---

## Domain

Responsible for:

Entities

Value Objects

Enums

Business Rules

Factories

Pure Dart.

No Flutter dependencies.

---

## Application

Responsible for:

Use Cases

Commands

Queries

Application workflows

Coordinates domain logic.

---

## State

Responsible for:

Application state.

View models.

State notifications.

No business rules.

---

## Services

Responsible for:

Persistence

Networking

Scanning

Cloud

External APIs

Services should remain replaceable.

---

## Shared

Reusable functionality used across multiple features.

Examples:

Widgets

Utilities

Extensions

Formatting

---

## Theme

The single source of truth for visual styling.

No widget should hardcode design values.

---

# Design Token Architecture

BinderHaven follows a centralized design token system.

Widgets should never hardcode:

• Colors

• Typography

• Padding

• Radius

• Elevation

• Animation Durations

• Shadows

Every visual value should originate from the theme layer.

---

# Asset Organization

```
assets/

    branding/

    wallpapers/

    logos/

    icons/

    fonts/

    images/

    illustrations/

    animations/

    mockups/
```

Assets should remain organized by purpose.

Never create duplicate assets.

---

# Widget Philosophy

Widgets should be:

Small

Composable

Focused

Reusable

Easy to read

Avoid massive widgets.

Break complex interfaces into smaller components.

---

# State Management

State should remain predictable.

Business rules belong inside the domain layer.

UI should react to state.

State should never own business logic.

---

# Navigation

Navigation should remain centralized.

Avoid deeply nested navigation logic.

Screens should focus on presenting content.

---

# Error Handling

Failures should be expected.

Every recoverable error should provide meaningful feedback.

The application should fail gracefully.

Never expose raw exceptions to collectors.

---

# Performance

Performance is a feature.

Every screen should remain responsive.

Prefer lazy loading.

Avoid unnecessary rebuilds.

Cache expensive operations.

Profile before optimizing.

Optimize only where measurements justify it.

---

# Accessibility

Accessibility is an engineering responsibility.

Not a design afterthought.

Support:

Dynamic text

Reduced motion

Screen readers

Comfortable touch targets

High contrast

---

# Testing Philosophy

Every feature should be testable.

Recommended testing pyramid:

Unit Tests

↓

Widget Tests

↓

Integration Tests

Business rules should be tested before user interfaces.

---

# Coding Standards

Prefer composition over inheritance.

Avoid global mutable state.

Avoid magic numbers.

Avoid duplicate logic.

Keep methods short.

Keep files focused.

Use expressive names.

Comment only when the code itself cannot clearly communicate intent.

Readable code is preferred over clever code.

---

# Git Workflow

Every commit should satisfy the following checklist.

✓ Builds successfully

✓ Passes static analysis

✓ Passes tests

✓ Includes meaningful commit message

✓ Leaves the repository in a releasable state

Small, focused commits are preferred.

---

# Pull Request Standards

Every change should answer:

Why was this change made?

What problem does it solve?

Does it follow the Design System?

Does it follow the Product Vision?

Does it introduce technical debt?

---

# Documentation Standards

Every significant feature should update:

Product Bible

Design System

Component Library

Engineering Bible

Documentation is part of development.

Not something added afterward.

---

# Decision Framework

When choosing between two engineering approaches, ask:

Does this improve maintainability?

Does this improve readability?

Does this improve the collector's experience?

Will this still make sense one year from now?

If the answer is no, reconsider the approach.

---

# Definition of Done

A feature is considered complete when:

• Requirements are implemented.

• UI matches the Design System.

• Code follows engineering standards.

• Tests pass.

• Flutter Analyze reports zero issues.

• Documentation has been updated.

• The repository remains buildable.

---

# Future Evolution

BinderHaven's architecture is expected to evolve.

Refactoring is encouraged when it improves clarity, maintainability, or performance.

Engineering decisions should strengthen the foundation rather than accumulate complexity.

---

# Final Principle

Great software is not measured by the number of features it contains.

It is measured by how confidently those features can evolve.

Every line of code written for BinderHaven should make tomorrow's development easier than today's.