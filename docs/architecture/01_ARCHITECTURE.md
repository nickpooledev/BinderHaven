# BinderHaven

# Architecture

Version: 2.0
Status: Active
Owner: Poole Labs

---

# Purpose

The Architecture document defines the high-level structure of BinderHaven.

It describes how the application is organized, how responsibilities are divided, and how information flows throughout the system.

Unlike the Engineering Bible, which defines engineering standards, this document defines the application's architectural blueprint.

---

# Architectural Philosophy

BinderHaven is a digital collecting platform built around the experience of owning and organizing collections.

The architecture should reinforce the product vision by remaining:

• Modular

• Predictable

• Testable

• Scalable

• Offline First

• Platform Independent

The architecture should evolve as the product grows without requiring major rewrites.

---

# Guiding Principles

## Binder First

The binder is the primary product object.

Everything else supports the binder experience.

---

## Domain Driven

Business rules belong inside the domain.

The user interface should present information.

The domain should define behavior.

---

## Offline First

Collectors should always have access to their collections.

Cloud services enhance the experience but are never required for core functionality.

---

## Separation of Responsibilities

Each architectural layer owns one responsibility.

Responsibilities should never overlap.

---

## Replaceable Infrastructure

Storage.

Networking.

Scanning.

Cloud.

External services should remain replaceable without affecting the domain model.

---

# Application Layers

```
Presentation

↓

Application

↓

Domain

↓

Data
```

Dependencies flow downward only.

Lower layers never depend on higher layers.

---

# Presentation Layer

Responsible for:

• Screens

• Widgets

• Navigation

• Animations

• User Interaction

• Theme

Presentation should contain no business rules.

---

# Application Layer

Coordinates workflows.

Examples include:

• Create Binder

• Update Binder

• Delete Binder

• Rename Binder

• Import Collection

• Export Collection

The Application layer orchestrates the domain.

It should not contain presentation logic.

---

# Domain Layer

The heart of BinderHaven.

Contains:

• Entities

• Value Objects

• Enums

• Business Rules

• Factories

• Collection Algorithms

The Domain layer should remain pure Dart.

It should never depend upon Flutter.

---

# Data Layer

Responsible for persistence.

Examples include:

• Local Database

• Cloud Sync

• External APIs

• Image Cache

• Import/Export

The Data layer provides information to the Domain.

The Domain should never know where the information originated.

---

# High-Level Structure

```
Collector

↓

Library

↓

Binder

↓

Pages

↓

Pocket Layout

↓

Pocket

↓

Trading Card

↓

Card Details
```

Every feature ultimately supports this hierarchy.

---

# Folder Organization

```
lib/

    app/

        application/

        domain/

        features/

        services/

        shared/

        state/

        theme/

    main.dart
```

Each feature should own its presentation while sharing common infrastructure.

---

# Data Philosophy

Store facts.

Compute everything else.

Persist:

• IDs

• Relationships

• User Preferences

• Collection Ownership

Compute:

• Completion Percentage

• Missing Cards

• Statistics

• Page Counts

• Progress

Derived information should remain derived.

---

# Feature Organization

Major features include:

• Library

• Binder

• Scanner

• Search

• Settings

• Statistics

• Wishlist

• Trade Binder

Future features should follow the same architectural patterns.

---

# Dependency Rules

Presentation may depend on:

Application

Domain

Shared

---

Application may depend on:

Domain

Services

---

Domain depends on:

Nothing above it.

---

Data depends on:

Domain contracts

Infrastructure

---

Dependencies should never point upward.

---

# State Management

State belongs outside the domain.

The Domain defines behavior.

State reflects current application conditions.

Presentation reacts to state changes.

---

# Scalability

BinderHaven should support future expansion without architectural changes.

Examples include:

• Additional trading card games

• Sports cards

• Comics

• Board games

• User-created collections

The architecture should remain flexible enough to support future collectible categories.

---

# Long-Term Direction

BinderHaven should become a platform rather than a single-purpose application.

Future capabilities may include:

• Cloud synchronization

• Community

• Marketplace integrations

• AI assistance

• Collection sharing

• Premium themes

These additions should strengthen the existing architecture rather than replace it.

---

# Final Principle

Architecture should quietly support the product.

Collectors should never notice the architecture.

Developers should benefit from it every day.

A successful architecture makes future development easier, not harder.