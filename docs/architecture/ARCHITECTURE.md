# BinderHaven Architecture v1.0

> Last Updated: August 2026

---

# Philosophy

BinderHaven is **not** an inventory application.

BinderHaven is a **digital binder experience** designed to replicate the feeling of owning, organizing, and completing real trading card binders.

Every engineering decision should reinforce that vision.

The application is built around the binder—not around individual cards.

---

# Core Principles

1. The binder is the primary object.
2. Physical organization comes before inventory management.
3. Every feature should feel collector-focused.
4. Offline-first architecture.
5. Cloud sync enhances the experience but is never required.
6. UI never contains business logic.
7. Domain models never depend on Flutter.

---

# Application Layers

Presentation

↓

Application

↓

Domain

↓

Data

---

## Presentation

Responsible for:

- Screens
- Widgets
- Animations
- Navigation
- Themes

Never contains business logic.

---

## Application

Responsible for:

- Use Cases
- User workflows
- Coordination between UI and Domain

Examples:

- Create Binder
- Delete Binder
- Rename Binder
- Change Binder Color
- Import Collection

---

## Domain

Responsible for the business itself.

Examples:

- Binder
- BinderPage
- BinderPocket
- CardAssignment
- Enums
- Generation algorithms

Pure Dart.

No Flutter dependencies.

---

## Data

Responsible for persistence.

Examples:

- SQLite
- Cloud Sync
- REST APIs
- Image Cache

The Domain should never know where data comes from.

---

# Folder Structure

lib/

app/

presentation/

application/

domain/

data/

state/

---

# Domain Objects

Binder

↓

Pages

↓

Pockets

↓

Card Assignment

↓

Card Database

---

# Guiding Rule

Store facts.

Compute everything else.

Store:

- IDs
- Relationships
- User choices

Compute:

- Completion %
- Page Count
- Missing Cards
- Statistics

---

# Future Systems

Binder Engine

Set Browser

Search

News

Release Calendar

Binder Settings

Cloud Sync

Authentication

Custom Binders

Collection Statistics

Achievements

---

# UI Philosophy

The home screen is the collector's bookshelf.

The binder is the primary interaction.

Lists and tables are secondary experiences.

The application should feel closer to a premium bookshelf than a spreadsheet.

---

# Engineering Rules

- Keep widgets small.
- Prefer composition over inheritance.
- No duplicate business logic.
- No Flutter imports inside Domain.
- Prefer enums over strings.
- Prefer immutable models.
- Build vertically.
- Every sprint should leave the application visibly better.

---

# Long-Term Vision

BinderHaven should become the definitive digital binder platform for trading card collectors.

The application should prioritize immersion, organization, and the enjoyment of collecting over portfolio tracking and financial speculation.