# BinderHaven

# Component Catalog

Version: 2.0
Status: Active
Owner: Poole Labs

---

# Purpose

The Component Catalog is the master registry of every major product component within BinderHaven.

Unlike the Component Library, which explains what each component is and how it behaves, the Component Catalog tracks the current state of every component throughout development.

It serves as the project's inventory.

If a component exists within BinderHaven, it should appear here.

If it is not listed here, it is not considered part of the product.

---

# Component Lifecycle

Every component progresses through the same lifecycle.

Concept

↓

Specified

↓

Design

↓

Development

↓

Testing

↓

Released

↓

Maintained

↓

Retired (if necessary)

Components should evolve rather than be replaced whenever practical.

---

# Component Status

Every component should have one status.

| Status | Meaning |
|----------|----------|
| Concept | Product idea only |
| Specified | Fully documented |
| Design | Visual design underway |
| Development | Being implemented |
| Testing | Under validation |
| Released | Production ready |
| Deprecated | Scheduled for removal |
| Retired | No longer part of BinderHaven |

---

# Product Components

## Library

Purpose

Primary browsing experience.

Status

Development

Documentation

05_COMPONENT_LIBRARY.md

---

## Binder

Purpose

Represents an individual collection.

Status

Development

Documentation

05_COMPONENT_LIBRARY.md

---

## Binder Cover

Purpose

Visual identity of a binder.

Status

Development

---

## Binder Metadata

Purpose

Collection information displayed alongside the binder.

Status

Development

---

## Binder Page

Purpose

Displays one page of the collection.

Status

Concept

---

## Pocket Grid

Purpose

Organizes pockets according to binder layout.

Status

Concept

---

## Pocket

Purpose

Represents one card location.

Status

Concept

---

## Trading Card

Purpose

Displays an individual card.

Status

Concept

---

## Card Details

Purpose

Expanded information about a card.

Status

Concept

---

## Progress

Purpose

Displays collection completion.

Status

Development

---

## Search

Purpose

Allows collectors to quickly locate collections or cards.

Status

Concept

---

## Scanner

Purpose

Imports physical cards into BinderHaven.

Status

Concept

---

## Dialog

Purpose

Focused user interactions.

Status

Concept

---

## Navigation

Purpose

Primary navigation throughout the application.

Status

Development

---

## Wallpaper

Purpose

Personalizes the library experience.

Status

Concept

---

## Settings

Purpose

Application customization.

Status

Concept

---

## Statistics

Purpose

Displays meaningful collection insights.

Status

Concept

---

# Future Components

The following components remain under consideration.

Their presence here does not guarantee implementation.

Achievement System

Wishlist

Trade Binder

Marketplace

Profiles

Friends

Collection Sharing

Community Feed

Cloud Sync

AI Assistant

Seasonal Themes

Premium Binder Themes

---

# Component Relationships

Components should compose larger experiences.

Example

Library

↓

Binder

↓

Binder Page

↓

Pocket Grid

↓

Pocket

↓

Trading Card

↓

Card Details

No component should duplicate the responsibility of another component.

---

# Documentation Requirements

Every component should eventually have:

Purpose

Responsibilities

Inputs

Outputs

States

Interactions

Accessibility Requirements

Animation Behavior

Future Enhancements

Acceptance Criteria

---

# Component Ownership

Each component should have one clearly defined responsibility.

When adding a new component ask:

Can an existing component solve this problem?

If yes...

Reuse it.

If no...

Create a new component and document it before implementation.

---

# Design Principles

Every component should be:

Reusable

Accessible

Responsive

Consistent

Theme Aware

Performance Focused

Easy to Understand

Easy to Maintain

---

# Evolution Policy

Components should continuously improve.

Visual refinement.

Animation.

Accessibility.

Customization.

Performance.

New functionality.

Evolution should strengthen existing components rather than replace them whenever practical.

---

# Final Principle

The Component Catalog is BinderHaven's inventory of building blocks.

It is not a Flutter widget list.

It is not a design document.

It is the authoritative record of every product component that collectively creates the BinderHaven experience.