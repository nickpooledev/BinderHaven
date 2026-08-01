# Digital Binder

# Component Catalog

Version 1.0

---

# Purpose

The Component Catalog serves as the master inventory of every reusable UI component within Digital Binder.

Each component receives a permanent identifier that is never reused or renumbered.

These identifiers provide a shared language between design, engineering, documentation, testing, and future contributors.

Rather than saying:

> "Let's work on the Pocket widget."

Development discussions can reference:

> **DB-004 – Pocket Widget**

This improves communication, documentation, issue tracking, and project organization.

As Digital Binder evolves, new components will simply receive the next available identifier.

Existing IDs should never change.

---

# Component Categories

## Navigation Components

| ID | Component | Status |
|----|-----------|--------|
| DB-001 | Bookshelf | Planned |
| DB-002 | Bottom Navigation | Planned |
| DB-003 | App Bar | Planned |
| DB-004 | Search Bar | Planned |
| DB-005 | Floating Action Button | Planned |
| DB-006 | Navigation Drawer | Planned |

---

## Binder Components

| ID | Component | Status |
|----|-----------|--------|
| DB-010 | Binder | Planned |
| DB-011 | Binder Cover | Planned |
| DB-012 | Binder Spine | Planned |
| DB-013 | Binder Ribbon | Planned |
| DB-014 | Binder Shadow | Planned |
| DB-015 | Binder Label | Planned |

---

## Page Components

| ID | Component | Status |
|----|-----------|--------|
| DB-020 | Binder Page | Planned |
| DB-021 | Pocket Grid | Planned |
| DB-022 | Pocket | Planned |
| DB-023 | Page Header | Planned |
| DB-024 | Page Footer | Planned |
| DB-025 | Page Indicator | Planned |

---

## Card Components

| ID | Component | Status |
|----|-----------|--------|
| DB-030 | Trading Card | Planned |
| DB-031 | Missing Card Placeholder | Planned |
| DB-032 | Card Detail Dialog | Planned |
| DB-033 | Favorite Badge | Planned |
| DB-034 | Variant Badge | Planned |
| DB-035 | Quantity Indicator | Planned |

---

## Progress Components

| ID | Component | Status |
|----|-----------|--------|
| DB-040 | Progress Ring | Planned |
| DB-041 | Progress Bar | Planned |
| DB-042 | Completion Badge | Planned |
| DB-043 | Completion Ribbon | Planned |
| DB-044 | Statistic Tile | Planned |

---

## Collection Components

| ID | Component | Status |
|----|-----------|--------|
| DB-050 | Collection Card | Planned |
| DB-051 | Collection Summary | Planned |
| DB-052 | Set Information Panel | Planned |
| DB-053 | Collection Progress Card | Planned |

---

## Achievement Components

| ID | Component | Status |
|----|-----------|--------|
| DB-060 | Achievement Badge | Planned |
| DB-061 | Trophy | Planned |
| DB-062 | Trophy Cabinet | Planned |
| DB-063 | XP Progress Bar | Planned |
| DB-064 | Collector Level Card | Planned |

---

## Profile Components

| ID | Component | Status |
|----|-----------|--------|
| DB-070 | Collector Avatar | Planned |
| DB-071 | Collector Banner | Planned |
| DB-072 | Collector Statistics | Planned |
| DB-073 | Favorite Pokémon Display | Planned |

---

## Collection Room Components

| ID | Component | Status |
|----|-----------|--------|
| DB-080 | Bookshelf | Planned |
| DB-081 | Shelf | Planned |
| DB-082 | Display Case | Planned |
| DB-083 | Room Decoration | Planned |
| DB-084 | Background Theme | Planned |

---

## Dialog Components

| ID | Component | Status |
|----|-----------|--------|
| DB-090 | Confirmation Dialog | Planned |
| DB-091 | Information Dialog | Planned |
| DB-092 | Bottom Sheet | Planned |
| DB-093 | Context Menu | Planned |

---

# Component Status

Each component should always have one of the following statuses:

🟦 Planned

🟨 In Design

🟧 In Development

🟪 Testing

🟩 Complete

🟥 Deprecated

---

# Component Lifecycle

Every reusable component follows the same lifecycle:

1. Added to Component Catalog

2. Detailed within Component Library

3. Designed

4. Implemented

5. Tested

6. Released

7. Maintained

---

# Naming Convention

Every reusable widget inside the Flutter project should closely match its catalog entry.

Example:

DB-022 – Pocket Widget

Flutter Class

PocketWidget

File Name

pocket_widget.dart

Documentation

Referenced by DB-022

---

# Future Growth

As Digital Binder expands, additional categories may include:

• Marketplace Components

• Scanner Components

• Community Components

• AI Components

• Premium Theme Components

• Seasonal Components

Component identifiers should continue sequentially without modifying existing entries.

---

# Final Principle

Every reusable interface element should have a permanent identity.

A stable component catalog improves communication, encourages reuse, reduces duplication, and allows Digital Binder to scale while maintaining consistency.

If a component exists, it belongs in this catalog.

If it is not in this catalog, it does not yet exist.
