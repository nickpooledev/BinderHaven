enum Game {
  pokemon(
    id: 'pokemon',
    displayName: 'Pokémon',
    enabled: true,
  ),

  onePiece(
    id: 'one_piece',
    displayName: 'One Piece',
    enabled: false,
  ),

  magic(
    id: 'magic',
    displayName: 'Magic: The Gathering',
    enabled: false,
  );

  const Game({
    required this.id,
    required this.displayName,
    required this.enabled,
  });

  final String id;
  final String displayName;
  final bool enabled;
}