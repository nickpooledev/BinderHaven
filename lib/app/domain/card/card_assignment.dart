class CardAssignment {
  const CardAssignment({
    required this.cardId,
    this.owned = false,
    this.favorite = false,
    this.notes,
  });

  /// Database card identifier
  final String cardId;

  /// Does the user own this card?
  final bool owned;

  /// Favorite this specific card
  final bool favorite;

  /// Optional user notes
  final String? notes;
}